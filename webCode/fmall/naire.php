<?php

/**
 * 调查问卷的展示与提交
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$act = !empty($_REQUEST['act']) ? $_REQUEST['act'] : 'default';

$smarty->assign('helps',           get_shop_help());       // 网店帮助
$smarty->assign('navigator_list',        get_navigator($ctype, $catlist));  //自定义导航栏

if($act == 'default'){
	$smarty->display('naire.dwt');
}

/*问卷数据的添加*/
elseif($act == 'sub_quesion'){
	$sex = isset($_POST['sex'])?$_POST['sex']:0;
	$work = isset($_POST['work'])?$_POST['work']:0;
	$skip = isset($_POST['skip'])?$_POST['skip']:0;
	$login = isset($_POST['login'])?$_POST['login']:0;
	$paystyle = isset($_POST['paystyle'])?$_POST['paystyle']:0;
	$overstyle = isset($_POST['overstyle'])?$_POST['overstyle']:0;
	$icon = isset($_POST['icon'])?$_POST['icon']:0;
	$layout = isset($_POST['layout'])?$_POST['layout']:0;
	$ads = isset($_POST['ads'])?$_POST['ads']:0;
	$handy = isset($_POST['handy'])?$_POST['handy']:0;
	$category = isset($_POST['category'])?$_POST['category']:0;
	$demand = isset($_POST['demand'])?$_POST['demand']:0;
	$appeal = isset($_POST['appeal'])?$_POST['appeal']:0;
	$operation = isset($_POST['operation'])?$_POST['operation']:0;
	$custom = isset($_POST['custom'])?$_POST['custom']:0;
	$advice = isset($_POST['advice'])?$_POST['advice']:0;
	$adup = isset($_POST['adup'])?$_POST['adup']:0;
	$smsset = isset($_POST['smsset'])?$_POST['smsset']:0;
	$daveques = isset($_POST['daveques'])?$_POST['daveques']:0;
	$overimpression = isset($_POST['overimpression'])?strip_tags($_POST['overimpression']):'0';
	$time = gmtime(); 
	$user_id = $_SESSION['user_id'];
	
	$ques_data = array('sex'=>$sex,'work'=>$work,'skip'=>$skip,'login'=>$login,'paystyle'=>$paystyle,'overstyle'=>$overstyle,
			'icon'=>$icon,'layout'=>$layout,'adss'=>$ads,'handy'=>$handy,'category'=>$category,'demand'=>$demand,
			'appeal'=>$appeal,'operation'=>$operation,'custom'=>$custom,
			'advice'=>$advice,'adup'=>$adup,'smsset'=>$smsset,'overimpression'=>$overimpression,
			'daveques'=>$daveques,'addtime'=>$time
	);
	
	$GLOBALS['db']->autoExecute($GLOBALS['ecs']->table('activity_ques'), $ques_data);
	
	show_message('提交成功,非常感谢您对平台的支持！', $_LANG['back_up_page'], 'user.php', 'error');
}