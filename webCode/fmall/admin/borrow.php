<?php
/**
 * 借款信息的管理
 * 
 */
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'includes/lib_order.php');


/* act操作项的初始化 */
if (empty($_REQUEST['act']))
{
	$action = 'list';
}
else
{
	$action = trim($_REQUEST['act']);
}

/*------------------------------------------------------ */
//-- 借款列表的展示
/*------------------------------------------------------ */
if ($action == 'list'){
	/* 检查权限 */
	admin_priv('borrow_view');
	
	/* 模板赋值 */
	$smarty->assign('ur_here', $_LANG['11_borrow_list']);
	$smarty->assign('action_link', array('href' => 'order.php?act=order_query', 'text' => $_LANG['03_order_query']));
	
	$smarty->assign('status_list', $_LANG['cs']);   // 订单状态
	
	$smarty->assign('os_unconfirmed',   OS_UNCONFIRMED);
	$smarty->assign('cs_await_pay',     CS_AWAIT_PAY);
	$smarty->assign('cs_await_ship',    CS_AWAIT_SHIP);
	$smarty->assign('full_page',        1);
	
	$borrow_list = borrow_list();
	
	$smarty->assign('borrow_list',   $borrow_list);
	$smarty->assign('filter',       $order_list['filter']);
	$smarty->assign('record_count', $order_list['record_count']);
	$smarty->assign('page_count',   $order_list['page_count']);
	$smarty->assign('sort_order_time', '<img src="images/sort_desc.gif">');
	
	/* 显示模板 */
	assign_query_info();
	$smarty->display('borrow_list.htm');
}
//获取信息的详情
elseif($action == 'selinfo'){
	$userid = trim($_GET['borrow_id']);
	//借款信息的查询
	$sql = "select * from ".$GLOBALS['ecs']->table('user_borrow')." where user_id=".$userid;
	$borrowinfo = $GLOBALS['db']->getAll($sql);
	
	$style = $borrowinfo[0]['borrow_style'];
	
	foreach($borrowinfo as $key=>$val){
		$borrowinfo[$key]['add_time'] = local_date('Y-m-d H:i:s',$res[$key]['add_time']);
		if($borrowinfo[$key]['borrow_style'] == 1){
			$borrowinfo[$key]['borrow_style'] = '车贷';
		}elseif($borrowinfo[$key]['borrow_style'] == 2){
			$borrowinfo[$key]['borrow_style'] = '房贷';
		}elseif($borrowinfo[$key]['borrow_style'] == 3){
			$borrowinfo[$key]['borrow_style'] = '纯信用贷';
		}else{
			$borrowinfo[$key]['borrow_style'] = '不存在';
		}
		if($borrowinfo[$key]['borrow_status'] == 0){
			$borrowinfo[$key]['borrow_status'] = '等待确认';
		}elseif($borrowinfo[$key]['borrow_status'] == 1){
			$borrowinfo[$key]['borrow_status'] = '审核中';
		}elseif($borrowinfo[$key]['borrow_status'] == 2){
			$borrowinfo[$key]['borrow_status'] = '放款中';
		}elseif($borrowinfo[$key]['borrow_status'] == 3){
			$borrowinfo[$key]['borrow_status'] = '借款结束';
		}
	}
	
	//查询基本信息
	$sql = "select * from ".$GLOBALS['ecs']->table('borrow_basic')." where user_id=".$userid;
	$borrowbasic = $GLOBALS['db']->getAll($sql);
	
	if($style == 1){
		//查询车辆信息
		$sql = "select * from".$GLOBALS['ecs']->table('borrow_car')." where user_id=".$userid;
	}elseif($style == 2){
		//查询房产信息
		$sql = "select * from".$GLOBALS['ecs']->table('borrow_house')." where user_id=".$userid;
	}elseif($style == 3){
		//查询信用认证信息
		$sql = "select * from".$GLOBALS['ecs']->table('borrow_credit')." where user_id=".$userid;
	}else{
		die('信息错误');
	}
	$borrowtrue = $GLOBALS['db']->getAll($sql);
	
	$smarty->assign('style',$style);
	$smarty->assign('borrowinfo',$borrowinfo[0]);
	$smarty->assign('borrowbasic',$borrowbasic[0]);
	$smarty->assign('borrowtrue',$borrowtrue[0]);
	$smarty->display('borrow_info.htm');
}

/**
 * 获取借款列表信息
 * return array
 */

function borrow_list(){
	
	$sql = 'SELECT * FROM '.$GLOBALS['ecs']->table('user_borrow').' ORDER BY borrow_id desc,borrow_status desc ';
	$res = $GLOBALS['db']->getAll($sql);
	
	foreach($res as $key=>$val){
		$res[$key]['add_time'] = local_date('Y-m-d H:i:s',$res[$key]['add_time']);
		if($res[$key]['borrow_style'] == 1){
			$res[$key]['borrow_style'] = '车贷';
		}elseif($res[$key]['borrow_style'] == 2){
			$res[$key]['borrow_style'] = '房贷';
		}elseif($res[$key]['borrow_style'] == 3){
			$res[$key]['borrow_style'] = '纯信用贷';
		}else{
			$res[$key]['borrow_style'] = '不存在';
		}
		if($res[$key]['borrow_status'] == 0){
			$res[$key]['borrow_status'] = '等待确认';
		}elseif($res[$key]['borrow_status'] == 1){
			$res[$key]['borrow_status'] = '审核中';
		}elseif($res[$key]['borrow_status'] == 2){
			$res[$key]['borrow_status'] = '放款中';
		}elseif($res[$key]['borrow_status'] == 3){
			$res[$key]['borrow_status'] = '借款结束';
		}
	}

	return $res;
}