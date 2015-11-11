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
//-- 车贷借款列表的展示
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
	
	$borrow_list = borrow_list(1);
	//print_r($borrow_list);exit;
	$smarty->assign('borrow_list',   $borrow_list);
	$smarty->assign('filter',       $order_list['filter']);
	$smarty->assign('record_count', $order_list['record_count']);
	$smarty->assign('page_count',   $order_list['page_count']);
	$smarty->assign('sort_order_time', '<img src="images/sort_desc.gif">');
	
	/* 显示模板 */
	assign_query_info();
	$smarty->display('borrow_list.htm');
}
//房贷借款列表的展示
elseif($action == 'house'){
	/* 检查权限 */
	admin_priv('borrow_house');
	
	/* 模板赋值 */
	$smarty->assign('ur_here', $_LANG['11_borrow_list']);
	$smarty->assign('action_link', array('href' => 'order.php?act=order_query', 'text' => $_LANG['03_order_query']));
	
	$smarty->assign('status_list', $_LANG['cs']);   // 订单状态
	
	$smarty->assign('os_unconfirmed',   OS_UNCONFIRMED);
	$smarty->assign('cs_await_pay',     CS_AWAIT_PAY);
	$smarty->assign('cs_await_ship',    CS_AWAIT_SHIP);
	$smarty->assign('full_page',        1);
	
	$borrow_list = borrow_list(2);
	
	$smarty->assign('borrow_list',   $borrow_list);
	$smarty->assign('filter',       $order_list['filter']);
	$smarty->assign('record_count', $order_list['record_count']);
	$smarty->assign('page_count',   $order_list['page_count']);
	$smarty->assign('sort_order_time', '<img src="images/sort_desc.gif">');
	
	/* 显示模板 */
	assign_query_info();
	$smarty->display('borrow_house.htm');
}
//车辆借款信息的修改
elseif($action == 'edit_car'){
	$status = trim($_POST['sta']);
	$id = trim($_POST['id']);
	
	$sql = "UPDATE ".$GLOBALS['ecs']->table('borrow_car')." SET status=".$status." WHERE car_id=".$id;
	$res = $GLOBALS['db']->query($sql);
	
	if($res){
		echo "true";
	}else{
		echo "false";
	}

}
//车辆借款信息的删除
elseif($action == 'remove_car'){
	$id = trim($_GET['id']);
	
	$sql = "UPDATE ".$GLOBALS['ecs']->table('borrow_car')." SET is_del=1 WHERE car_id=".$id;
	$res = $GLOBALS['db']->query($sql);
	
	if($res){
		header("location:borrow.php");
	}
}
/**
 * 获取借款列表信息
 * return array
 */

function borrow_list($type){
	
	if($type == '1'){
		$sql = 'SELECT * FROM '.$GLOBALS['ecs']->table('borrow_car').' WHERE is_del=0 ORDER BY car_id desc,status desc ';
	}elseif($type == '2'){
		$sql = 'select * from '.$GLOBALS['ecs']->table('borrow_house').' WHERE is_del=0 ORDER BY house_id desc,status desc ';
	}
	$res = $GLOBALS['db']->getAll($sql);
	
	foreach($res as $key=>$val){
		$res[$key]['add_time'] = local_date('Y-m-d H:i:s',$res[$key]['add_time']);
		
		if($res[$key]['status'] == 0){
			$res[$key]['status'] = '等待确认';
		}elseif($res[$key]['status'] == 1){
			$res[$key]['status'] = '审核中';
		}elseif($res[$key]['status'] == 2){
			$res[$key]['status'] = '放款中';
		}elseif($res[$key]['status'] == 3){
			$res[$key]['status'] = '借款结束';
		}elseif($res[$key]['status'] == 4){
			$res[$key]['status'] = '不通过';
		}
	}

	return $res;
}