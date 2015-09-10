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

/* 基本信息的提交页面*/
elseif ($action == 'userinformation'){
	
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	$smarty->assign('act',	$action);
	
	$smarty->display('borrow_money.dwt');
}

/* 车辆信息提交的页面*/
elseif ($action == 'carinfo'){
	
	$carinformation = array('一手车','二手车');			//车辆信息
	$cartype = array('7座以下','9座以下','非以上两种情况');	//车辆类型
	$carnature = array('营运','非营运');				//使用性质
	$carhold = array('被抵押','没有抵押');				//车辆抵押
	$carhistory = array('使用信用卡','曾经带过款(非民间)','上两者均有','上两者均没有');	//信用历史
	$cartime = array('3个月以上','3-6个月','6个月以上');	//过户时间
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	
	$smarty->assign('carinformation',	$carinformation);
	$smarty->assign('cartype',	$cartype);
	$smarty->assign('carnature',	$carnature);
	$smarty->assign('carhold',	$carhold);
	$smarty->assign('carhistory',	$carhistory);
	$smarty->assign('cartime',	$cartime);
	
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 房产信息提交的页面*/
elseif ($action == 'houseinfo'){
	
	$righttye = array('商品房','经济适用房','其它');			//产权类型
	$decideloan = array('正在还房贷','房贷已还清','没有房贷');	//是否有房贷
	$loanqi = array('3个月以上','3-6个月','6个月以上');		//已还款期数
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	
	$smarty->assign('righttye',	$righttye);
	$smarty->assign('decideloan',	$decideloan);
	$smarty->assign('loanqi',	$loanqi);
	
	$smarty->display('borrow_money.dwt');
}

/* 纯信用信息提交的页面*/
elseif ($action == 'creditinfo'){
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	
	$smarty->display('borrow_money.dwt');
}





