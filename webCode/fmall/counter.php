<?php 
/*
*收益计算器
*/
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$smarty->assign('categories',       get_categories_tree()); // 分类树
$smarty->assign('helps',            get_shop_help());              // 网店帮助
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

$action  = isset($_REQUEST['act']) ? trim($_REQUEST['act']) : 'default';

if ($action == 'countercount')
{
	$csum = trim($_GET['csum']);	 //金额
	$crate = trim($_GET['crate']);  //利率
	$ctime = trim($_GET['ctime']);  //时间
	$ctype = trim($_GET['ctype']);	 //方式
	
	$backinfo = array();
	
	switch($ctype){
		case 1:
			for($i=0;$i<$ctime;$i++){
				$backinfo[$i]['monthnum'] = $i;
				$backinfo[$i]['monthprin_int'] = $csum*$crate/12+$csum/$ctime;
				$backinfo[$i]['monthprin'] = $csum/$ctime;
				$backinfo[$i]['month_int'] = $csum*$crate/12;
				$backinfo[$i]['monthnum'] = ($csum-$csum*$i)*$crate/12+$csum/$ctime;
			}
			break;
		case 2:
			break;
		case 3:
			break;
	}
	
	print_r($backinfo);
}
elseif($action == 'default')
{
$smarty->display('counter.dwt');
}

