<?php 
/*
*收益计算器
*/
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$smarty->assign('categories',       get_categories_tree()); // 分类树
$smarty->assign('helps',            get_shop_help());              // 网店帮助

$smarty->display('counter.dwt');

if ($act == 'countercount')
{
	$csum = trim($_POST['csum']);	 //金额
	$crate = trim($_POST['crate']);  //利率
	$ctime = trim($_POST['ctime']);  //时间
	$ctype = trim($_POST['ctype']);	 //方式
	
	echo $csum;
}