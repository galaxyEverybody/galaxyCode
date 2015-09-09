<?php
/*
 * 申请借款的展示与提交
 */

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

/* 载入语言文件 */
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/user.php');


assign_template();
assign_dynamic('activity');
$position = assign_ur_here(0, $_LANG['shopping_activity']);
$smarty->assign('page_title',          $position['title']);                    // 页面标题
$smarty->assign('ur_here',             $position['ur_here']);                  // 当前位置
$smarty->assign('navigator_list',        get_navigator($ctype, $catlist));  //自定义导航栏
if (!empty($GLOBALS['_CFG']['search_keywords']))
{
	$searchkeywords = explode(',', trim($GLOBALS['_CFG']['search_keywords']));
}
else
{
	$searchkeywords = array();
}
$smarty->assign('searchkeywords', $searchkeywords);	//热搜关键词
$smarty->assign('helps',        get_shop_help()); // 网店帮助


$action = isset($_REQUEST['act'])?$_REQUEST['act']:'default';

/* 申请借款页面*/
if ($action == 'default')
{	
	$loantime = array('3个月','6个月','9个月','12个月','15个月','18个月','21个月','24个月');
	
	$smarty->assign('loantime',		$loantime);
	
	$smarty->assign('act',		$action);
	$smarty->display('borrow_money.dwt');
}

/* 添加借款信息*/
elseif ($action == 'insert_borrow_money')
{
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$borrowname = compile_str(trim($_POST['borrowname']));
	$borrownum = compile_str(trim($_POST['borrownum']));
	$borrowphone = compile_str(trim($_POST['borrowphone']));
	$phoneverify = intval(trim($_POST['phoneverify']));
	$provincename = intval(trim($_POST['provincename']));
	$cityname = intval($_POST['cityname']);
	
	if(empty($borrowname) || empty($borrownum) || empty($borrowphone) || empty($phoneverify) || empty($provincename) || empty($cityname)){
		show_message($_LANG['borrow_parameter'],$_LANG['back_up_page'],'user.php?act=borrow_money');
	}
	
	$borrow_money = array(
		'user_id'			=> $user_id,
		'add_time'			=> gmtime(),
		'borrow_province'	=> isset($_POST['provincename'])? intval($_POST['provincename']):0,
		'borrow_city'		=> isset($_POST['cityname'])? intval($_POST['cityname']):0,
		'borrow_phone'		=> isset($_POST['borrowphone'])? intval($_POST['borrowphone']):0,
		'borrow_verify'		=> isset($_POST['phoneverify'])? intval($_POST['phoneverify']):0,
		'borrow_num'		=> isset($_POST['borrownum'])? compile_str(trim($_POST['borrownum'])):0,
		'borrow_truename'	=> isset($_POST['borrowname'])? compile_str(trim($_POST['borrowname'])):'',
		'borrow_status'		=> 1,
	);
	
	if(insert_borrow($borrow_money)){
		show_message($_LANG['borrow_success'],$_LANG['back_up_page'],'index.php');
	}
}
/* 基本信息的提交*/
elseif ($action == 'userinformation'){
	
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	
	$smarty->display('borrow_money.dwt');
}



