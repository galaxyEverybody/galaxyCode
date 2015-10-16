<?php 
/*
*新手指引
*/
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$smarty->assign('categories',       get_categories_tree()); // 分类树
$smarty->assign('helps',            get_shop_help());              // 网店帮助
$smarty->assign('navigator_list',        get_navigator($ctype, $catlist));  //自定义导航栏
/* 载入系统参数 */
$_CFG = load_config();
$qq = explode(',',$_CFG['qq']);
$smarty->assign('qq',$qq);
$smarty->assign('icp_number',$_CFG['icp_number']);

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

if($action == 'default'){
	$smarty->display("safety.dwt");
}