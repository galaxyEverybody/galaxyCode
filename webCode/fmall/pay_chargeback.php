<?php
/*
 * 充值成功之后的回显页面
 * date：2016-1-13
 */
define('IN_ECS',true);

require(dirname(__FILE__) . '/includes/init.php');
include_once('includes/lib_llpay.php');

assign_template();
	
$position = assign_ur_here();
$smarty->assign('page_title',      $position['title']);    // 页面标题
$smarty->assign('ur_here',         $position['ur_here']);  // 当前位置
$smarty->assign('helps',           get_shop_help());       // 网店帮助

/* 返回的数据*/
$oid_partner = trim($_POST['oid_partner']);	//商户编号
$sign_type = trim($_POST['sign_type']);		//签名方式
$dt_order = trim($_POST['dt_order']);			//订单时间
$no_order = trim($_POST['no_order']);			//订单号
$money_order = trim($_POST['money_order']);	//交易金额
$result_pay = trim($_POST['result_pay']);		//支付结果
$pay_type = trim($_POST['pay_type']);			//支付方式
$bank_code = trim($_POST['bank_code']);		//银行编号
$settle_date = trim($_POST['settle_date']);	//清算日期
$oid_paybill = trim($_POST['oid_paybill']);	//ll支付单号
$sign = trim($_POST['sign']);					//ll签名串

$conpay = new conpay;

/* 判断商户号是否一致*/
if($oid_partner != $conpay->oid_partner){
	die("{'ret_code':'9999','ret_msg':'商户号不一致'}");
}

/* 需要进行验签的数组*/
$parameter = array (
		'oid_partner' => $oid_partner,
		'oid_paybill' => $oid_paybill,
		'sign_type' => $sign_type,
		'dt_order' => $dt_order,
		'no_order' => $no_order,
		'money_order' => $money_order,
		'result_pay' => $result_pay,
		'pay_type' => $pay_type,
		'bank_code' => $bank_code,
		'settle_date' => $settle_date
	);
/* 进行验签*/
ksort($parameter);
$data = $conpay->createlinkstring($parameter);
$boolsta = $conpay->rsaverify($data,$sign);

if($boolsta && $result_pay == 'SUCCESS'){
	$pay_flag = '充值成功';
}else{
	$pay_flag = '充值失败';
}

$smarty->assign('money_num',$money_order);
$smarty->assign('pay_flag',$pay_flag);
$smarty->assign('info','充值金额:');
$smarty->display("pay_res.dwt");