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
	$crate = trim($_GET['crate'])/100;  //利率
	$ctime = trim($_GET['ctime']);  //时间
	$ctype = trim($_GET['ctype']);	 //方式
	
	$backinfo = '<tr style="height:40px;background-color:#FF8201;color:#fff;"><th>月份</th><th>月收本息</th><th>月收本金</th><th>月收利息</th><th>待收本息</th></tr>';
	switch($ctype){
		//按月等额本息
		case 1:
			$prininter = ($csum*($crate/12)*pow((1+$crate/12),$ctime))/(pow((1+$crate/12),$ctime)-1);	//月收本息
				for($i=1;$i<$ctime;$i++){
					$csum = $csum - $princital;
					$interest = $csum*$crate/12;	//月收利息
					$princital = $prininter - $interest;	//月收本金
					$overprininter = ($csum+($csum*$crate/12*$ctime)) - $prininter;	//待收本息
					
					$backinfo.= '<tr class="'.($i%2==0?tableone:tabletwo).'"><td >'.$i.'月</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$prininter).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$princital).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$interest).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$overprininter).'</td></tr>';
				
				}
				if($i = $ctime){
					$interest = $csum*$crate/12;	//月收利息
					$princital = $overprininter - $interest;	//月收本金
				
					$backinfo.= '<tr class="'.($i%2==0?tableone:tabletwo).'"><td >'.$i.'月</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$overprininter).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$princital).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",$interest).'</td>';
					$backinfo.= '<td >'.sprintf("%.2f",0).'</td></tr>';
				}
			break;
		//按月还息到期还本
		case 2:
			for($i=1;$i<$ctime+1;$i++){
				$prininter2 = $csum*$crate/12;	//月收本息
				$interest = $csum*$crate/12;	//月收利息
				$princital = $prininter2 - $interest;	//月收本金
				$overprininter = ($csum+($csum*$crate/12*$ctime)) - $prininter2*$i;	//待收本息
				
				if($i == $ctime){
					$prininter = $csum + $csum*$crate/12;//月收本息
					$princital = $prininter - $interest;	//月收本金
					$overprininter = ($csum+($csum*$crate/12*$ctime)) - $csum - $prininter2*$i;	//待收本息
				}
			
				$backinfo.= '<tr class="'.($i%2==0?tableone:tabletwo).'"><td >'.$i.'月</td>';
				if($i == $ctime){
					$backinfo.= '<td >'.sprintf("%.2f",$prininter).'</td>';
				}else{
					$backinfo.= '<td >'.sprintf("%.2f",$prininter2).'</td>';
				}
				$backinfo.= '<td >'.sprintf("%.2f",$princital).'</td>';
				$backinfo.= '<td >'.sprintf("%.2f",$interest).'</td>';
				$backinfo.= '<td >'.sprintf("%.2f",$overprininter).'</td></tr>';
				
			}
			break;
		//到期还本息
		case 3:

			$prininter = $csum + $csum*$crate/12*$ctime;	//月收本息
			$interest = $csum*$crate/12*$ctime;	//月收利息
			$overprininter = '0.00';	//待收本息
			
			$backinfo.= '<tr class="'.($i%2==0?tableone:tabletwo).'"><td >'.$ctime.'月</td>';
			$backinfo.= '<td >'.sprintf("%.2f",$prininter).'</td>';
			$backinfo.= '<td >'.sprintf("%.2f",$csum).'</td>';
			$backinfo.= '<td >'.sprintf("%.2f",$interest).'</td>';
			$backinfo.= '<td >'.sprintf("%.2f",$overprininter).'</td></tr>';
			break;
	}
	
	print_r($backinfo);
}
elseif($action == 'default')
{
$smarty->display('counter.dwt');
}

