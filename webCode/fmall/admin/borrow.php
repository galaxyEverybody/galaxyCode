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
	$smarty->assign('full_page',        1);
	
	/* 查询总数量*/
	$sql='SELECT count(*) FROM '.$GLOBALS['ecs']->table('borrow_car').' WHERE is_del=0';
	$total = $GLOBALS['db']->getOne($sql);
	
	if(isset($_GET['page'])){
		$filter['page'] = $_GET['page'];
	}else{
		$filter['page'] = 1;
	}
	$prevpage = $filter['page']-1;
	$nextpage = $filter['page']+1;
	$filter['page_size'] = 15;
	$pagecount = ceil($total/$filter['page_size']);
	
	$borrow_list = borrow_list(1,$filter['page'],$filter['page_size']);
	$smarty->assign('borrow_list',   $borrow_list);
	$smarty->assign('filter',       $filter);
	$smarty->assign('record_count', $total);
	$smarty->assign('prev_page', $prevpage);
	$smarty->assign('next_page', $nextpage);
	$smarty->assign('page_count',   $pagecount);
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
	$smarty->assign('ur_here', $_LANG['12_borrow_house']);
	$smarty->assign('full_page',        1);
	
	/* 查询总数量*/
	$sql='SELECT count(*) FROM '.$GLOBALS['ecs']->table('borrow_house').' WHERE is_del=0';
	$total = $GLOBALS['db']->getOne($sql);
	
	if(isset($_GET['page'])){
		$filter['page'] = $_GET['page'];
	}else{
		$filter['page'] = 1;
	}
	$prevpage = $filter['page']-1;
	$nextpage = $filter['page']+1;
	$filter['page_size'] = 15;
	$pagecount = ceil($total/$filter['page_size']);

	$borrow_list = borrow_list(2,$filter['page'],$filter['page_size']);
	$smarty->assign('borrow_list',   $borrow_list);
	$smarty->assign('filter',       $filter);
	$smarty->assign('record_count', $total);
	$smarty->assign('prev_page', $prevpage);
	$smarty->assign('next_page', $nextpage);
	$smarty->assign('page_count',   $pagecount);
	$smarty->assign('sort_order_time', '<img src="images/sort_desc.gif">');
	
	/* 显示模板 */
	assign_query_info();
	$smarty->display('borrow_house.htm');
}
//车辆借款信息状态的修改
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
//房屋借款信息状态的修改
elseif($action == 'edit_house'){
	$status = trim($_POST['sta']);
	$id = trim($_POST['id']);
	
	$sql = "UPDATE ".$GLOBALS['ecs']->table('borrow_house')." SET status=".$status." WHERE house_id=".$id;
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
//房屋借款信息的删除
elseif($action == 'remove_house'){
	$id = trim($_GET['id']);
	
	$sql = "UPDATE ".$GLOBALS['ecs']->table('borrow_house')." SET is_del=1 WHERE house_id=".$id;
	$res = $GLOBALS['db']->query($sql);
	
	if($res){
		header("location:borrow.php?act=house");
	}
}
/**
 * 获取借款列表信息
 * return array
 */

function borrow_list($type,$curpage,$pagesize){
	
	if($type == '1'){
		$sql = 'SELECT * FROM '.$GLOBALS['ecs']->table('borrow_car').' WHERE is_del=0 ORDER BY status ASC,car_id DESC';
	}elseif($type == '2'){
		$sql = 'select * from '.$GLOBALS['ecs']->table('borrow_house').' WHERE is_del=0 ORDER BY status ASC,house_id DESC';
	}
	$start = ($curpage-1)*$pagesize;
	$end = $curpage*$pagesize;
	
	$sql.=' LIMIT '.$start.','.$end;

	$res = $GLOBALS['db']->getAll($sql);
	
	foreach($res as $key=>$val){
		$res[$key]['add_time']			= local_date('Y-m-d H:i:s',$res[$key]['add_time']);
		$res[$key]['houseborrownum']	= $res[$key]['houseborrownum']/10000;
		
	}

	return $res;
}