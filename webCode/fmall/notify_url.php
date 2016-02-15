<?php
/*
*	支付返回结果异步通知页面
*	2016-1-6
*/
define('IN_ECS',true);

require(dirname(__FILE__) . '/includes/init.php');
include_once('includes/lib_llpay.php');

/* 对返回的数据进行验签*/

$endata_content = $_REQUEST["data_content"];

if(empty($endata_content)){
	die("No parameters are received [data_content]");
}
$conpay = new conpay;
$data_content = $conpay->decryptByPublicKey($endata_content);
$data_content = json_decode($data_content,true);

$resp_code = $data_content->resp_code;		//应答编号
$trans_id = $data_content->trans_id;		//订单编号
$money_order = $data_content->succ_amt;		//订单金额
$resp_msg = $data_content->resp_msg;		//应答内容


if($data_content && $resp_code == '0000'){
	/*查询订单状态*/
	$sql = 'SELECT pay_status,user_id FROM '.$GLOBALS['ecs']->table('order_goods').
		' WHERE order_sn="'.$trans_id.'"';
	$res = $GLOBALS['db']->getRow($sql);
	
	if($res && $res['pay_status'] > 0){
		die("OK");
	}else{
		/* 支付成功更改订单的状态信息*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('order_goods').' SET order_status=1,'.
			'pay_status=2,pay_time="'.gmtime().'" WHERE order_sn='.$trans_id;
		$GLOBALS['db']->query($sql);
		/* 更改pay_log的状态*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('pay_log').' SET is_paid=1 WHERE order_id="'.$trans_id.'"';
		$GLOBALS['db']->query($sql);
		/* 添加银行卡签约协议号*/
		update_bank_agree($res['user_id']);
		/* 修改商品的可投资金额*/
		update_goods_surprice($trans_id,$money_order);
		/* 记录订单操作记录*/
		orderlog_action($trans_id,1,2,$resp_msg);
		
		die("OK");
	}
}else{
	/* 记录订单操作记录*/
	orderlog_action($trans_id,1,0,'验签没有通过');
	die("NO");
}

/*
*	修改商品的可投资金额
*	@param string $order_id		订单号
*	@param decime $money_order	交易金额
*/
function update_goods_surprice($order_id,$money_order){
	/* 查询可投资金额*/
	$sql = 'SELECT g.surplus_price,g.goods_id FROM '.$GLOBALS['ecs']->table('order_goods').' as o,'.
		$GLOBALS['ecs']->table('goods').' as g WHERE o.goods_id=g.goods_id AND o.order_sn="'.$order_id.'"';
	$surprice = $GLOBALS['db']->getRow($sql);
	$invest_price = $surprice['surplus_price']-$money_order;
	$status_time = time();
	if($invest_price > 0){
		/* 更改产品的可投资金额*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('goods').' SET surplus_price="'.$invest_price.
			'",upstatus_time="'.$status_time.'" WHERE goods_id='.$surprice['goods_id'];
		$GLOBALS['db']->query($sql);
	}else{
		$status_time = gmtime();
		/* 更改产品的投资状态*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('goods').' SET surplus_price="'.$invest_price.
			'",good_status=2,upstatus_time="'.$status_time.'" WHERE goods_id='.$surprice['goods_id'];
		$GLOBALS['db']->query($sql);
	}
}

/*
 * 添加银行卡的签约协议号
 * $param int $user_id	用户id
 * return bool
 */
function update_bank_agree($user_id){
	$sql = 'SELECT no_agree FROM '.$GLOBALS['ecs']->table('bang_card').' WHERE user_id='.$user_id;
	$bank_agree = $GLOBALS['db']->getOne($sql);
	if(empty($bank_agree)){
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('bang_card').' SET no_agree="'.$no_agree.'" WHERE user_id='.$res['user_id'];
		$GLOBALS['db']->query($sql);
	}
	return true;
}

/*
*	记录订单操作记录
*	@param string $order_id		订单号
*	@param int $order_status	订单状态
*	@param int $pay_status		付款状态
*	@param string $action_note	备注
*	@param int $log_time		产生时间
*/
function orderlog_action($order_id,$order_status,$pay_status,$action_note){
	$addtime = time();
	$sql = 'INSERT INTO '.$GLOBALS['ecs']->table('order_action').' values("'.$order_id.
		'","llpay",'.$order_status.',0,'.$pay_status.',1,'.$action_note.','.$addtime.')';
	$GLOBALS['db']->query($sql);
}
