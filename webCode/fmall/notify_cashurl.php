<?php
/*
*	支付返回结果异步通知页面
*	2016-1-6
*/
define('IN_ECS',true);

require(dirname(__FILE__) . '/includes/init.php');
include_once('includes/lib_llpay.php');

/* 对返回的数据进行验签*/

$str = file_get_contents("php://input");

$backinfo = json_decode($str);

$conpay = new conpay;
/* 返回的数据*/
$oid_partner = trim($backinfo->oid_partner);	//商户编号
$sign_type = trim($backinfo->sign_type);		//签名方式
$dt_order = trim($backinfo->dt_order);			//订单时间
$no_order = trim($backinfo->no_order);			//订单号
$money_order = trim($backinfo->money_order);	//交易金额
$result_pay = trim($backinfo->result_pay);		//支付结果
$pay_type = trim($backinfo->pay_type);			//支付方式
$bank_code = trim($backinfo->bank_code);		//银行编号
$no_agree = trim($backinfo->no_agree);			//签约协议号
$settle_date = trim($backinfo->settle_date);	//清算日期
$acct_name = trim($backinfo->acct_name);		//真实姓名
$id_no = trim($backinfo->id_no);				//证件号码
$id_type = trim($backinfo->id_type);			//证件类型
$oid_paybill = trim($backinfo->oid_paybill);	//ll支付单号
$sign = trim($backinfo->sign);					//ll签名串

if($oid_partner != $conpay->oid_partner){
	/* 记录订单操作记录*/
	orderlog_action($order_id,1,0,'商户号不一致');
	die("{'ret_code':'9999','ret_msg':'商户号不一致'}");
}

/*需要进行验签的数组*/
$parameter = array (
		'oid_partner' => $oid_partner,
		'oid_paybill' => $oid_paybill,
		'acct_name' => $acct_name,
		'id_no' => $id_no,
		'id_type' => $id_type,
		'sign_type' => $sign_type,
		'dt_order' => $dt_order,
		'no_order' => $no_order,
		'money_order' => $money_order,
		'result_pay' => $result_pay,
		'pay_type' => $pay_type,
		'bank_code' => $bank_code,
		'no_agree' => $no_agree,
		'settle_date' => $settle_date
	);
/* 进行验签*/
ksort($parameter);
$data = $conpay->createlinkstring($parameter);
$boolsta = $conpay->rsaverify($data,$sign);
if($boolsta && $result_pay == 'SUCCESS'){
	/*查询订单状态*/
	$sql = 'SELECT pay_status,user_id FROM '.$GLOBALS['ecs']->table('order_goods').
		' WHERE order_sn="'.$no_order.'"';
	$res = $GLOBALS['db']->getRow($sql);
	
	if($res && $res['pay_status'] > 0){
		die("{'ret_code':'0000','ret_msg':'交易成功'}");
	}else{
		/* 支付成功更改订单的状态信息*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('order_goods').' SET order_status=1,'.
			'pay_status=2,pay_time="'.gmtime().'" WHERE order_sn='.$no_order;
		$GLOBALS['db']->query($sql);
		/* 更改pay_log的状态*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('pay_log').' SET is_paid=1 WHERE order_id="'.$no_order.'"';
		$GLOBALS['db']->query($sql);
		/* 添加银行卡签约协议号*/
		$sql = 'UPDATE '.$GLOBALS['ecs']->table('bang_card').' SET no_agree="'.$no_agree.'" WHERE user_id='.$res['user_id'];
		$GLOBALS['db']->query($sql);
		/* 修改商品的可投资金额*/
		update_goods_surprice($no_order,$money_order);
		/* 记录订单操作记录*/
		orderlog_action($order_id,1,2,$result_pay);
		
		die("{'ret_code':'0000','ret_msg':'交易成功'}");
	}
}else{
	/* 记录订单操作记录*/
	orderlog_action($order_id,1,0,'验签没有通过');
	die("{'ret_code':'9999','ret_msg':'验签失败'}");
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
