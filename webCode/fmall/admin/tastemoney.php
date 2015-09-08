<?php
/*
 * 体验金活动调查问卷的整理
 */
 
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/admin/statistic.php');
$smarty->assign('lang', $_LANG);

/* act操作项的初始化 */
if (empty($_REQUEST['act']))
{
	$_REQUEST['act'] = 'list';
}
else
{
	$_REQUEST['act'] = trim($_REQUEST['act']);
}

/*------------------------------*/
//活动列表页面
/*------------------------------*/
if ($_REQUEST['act'] == 'list'){
	
	/* 权限判断 */
    admin_priv('sale_order_stats');
	
	/*时间参数*/
    if(!isset($_REQUEST['start_time'])){
    	$start_time = local_strtotime('-7 days');
    }
    if(!isset($_REQUEST['end_time'])){
    	$end_time = local_strtotime('today');
    }
    
    $tastelist = get_taste_info();
    //print_r($tastelist);exit;
    /* 模板赋值*/
    $smarty->assign('page_count',$tastelist['tasteinfo']);
    $smarty->assign('filter',$tastelist['filter']);
    $smarty->assign('tasteinfo',$tastelist['tasteinfo']);
    $smarty->assign('page_count',$tastelist['page_count']);
    $smarty->assign('recorde_count',$tastelist['recorde_count']);
    $smarty->assign('start_time',local_date('Y-m-d',$start_time));
    $smarty->assign('end_time',local_date('Y-m-d',$end_time));
    $smarty->assign('recorde_count',$tastelist['recorde_count']);
    $smarty->assign('recorde_count',$tastelist['recorde_count']);
    $smarty->assign('ur_here',      $_LANG['taste_list']);
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    $smarty->assign('full_page',        1);
    $smarty->assign('action_link',  array('text' => $_LANG['down_taste'],'href'=>'tastemoney.php?act=download'));
    
    /* 显示页面 */
    assign_query_info();
    $smarty->display('taste_list.htm');
}

/*------------------------------*/
//活动详情页面
/*------------------------------*/
if ($_REQUEST['act'] == 'info'){
	
	$tasteid = intval($_REQUEST['taste_id']);

	/* 数据查询*/
	$sql = 'SELECT * FROM'.$GLOBALS['ecs']->table('activity_ques').' WHERE id ='.$tasteid;

	$tasteinfo = $GLOBALS['db']->getAll($sql);
	
	foreach($tasteinfo as $key=>$taste){
		$tasteinfo[$key]['addtime'] = local_date($GLOBALS['_CFG']['time_format'],$taste['addtime']);
	}
	
	$smarty->assign('ur_here',      $_LANG['taste_info']);
	$smarty->assign('cfg_lang',     $_CFG['lang']);
	$smarty->assign('tasteinfo',     $tasteinfo);

	$smarty->display('taste_info.htm');
}

if($_REQUEST['act'] == 'download'){
	
	$file_name = local_date('Y-m-d',gmtime()).'_sale';
	$taste_get_list = get_taste_info(false);

	header("Content-type: application/vnd.ms-excel; charset=utf-8");
	header("Content-Disposition: attachment; filename=$file_name.xls");
	
	/* 文件标题 */
	echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['taste_list']) . "\t\n";
	
	/* 商品名称,订单号,商品数量,销售价格,销售日期 */
	echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['user_name']) . "\t";
	echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['user_phone']) . "\t";
	echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['user_realname']) . "\t";
	echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['sub_time']) . "\t\n";
	
	foreach ($taste_get_list['tasteinfo'] AS $key => $value)
	{
		echo ecs_iconv(EC_CHARSET, 'GB2312', $value['user_name']) . "\t";
		echo ecs_iconv(EC_CHARSET, 'GB2312', $value['mobile_phone']) . "\t";
		echo ecs_iconv(EC_CHARSET, 'GB2312', $value['realname']) . "\t";
		echo ecs_iconv(EC_CHARSET, 'GB2312', $value['addtime']) . "\t";
		echo "\n";
	}
	exit;
}
/*------------------------------*/
//获取体验金活动的数据
/*------------------------------*/
function get_taste_info($is_pagination = true){
	/* 时间参数*/
	$filter['start_time'] = empty($_REQUEST['start_time'])?local_strtotime('-7 day'):local_strtotime($_REQUEST['start_time']);
	$filter['end_time'] = empty($_REQUEST['end_time'])?local_strtotime('-7 day'):local_strtotime($_REQUEST['end_time']);
	
	/* 查询数据的条件*/
	$where = ' WHERE u.user_id = a.user_id AND addtime >='.$filter['start_time'].' AND addtime <='.($filter['end_time']+86400*7);
	
	/* 查询总数量*/
	$sql = 'SELECT COUNT(*) FROM '.$GLOBALS['ecs']->table('activity_ques').' AS a,'.$GLOBALS['ecs']->table('users').
			' AS u'.$where;
	
	$filter['recorde_count'] = $GLOBALS['db']->getOne($sql);
	
	/* 分页*/
	$filter = page_and_size($filter);
	
	$sql = 'SELECT a.*,u.user_name,u.realname,u.mobile_phone FROM'.$GLOBALS['ecs']->table('activity_ques').' AS a,'.$GLOBALS['ecs']->table('users').
		' AS u'.$where.' ORDER  BY id DESC';
	if($is_pagination){
		$sql .=' LIMIT '.$filter['start'].' , '.$filter['page_size'];
	}
	
	$tasteinfo = $GLOBALS['db']->getAll($sql);
	
	foreach($tasteinfo as $key=>$taste){
		$tasteinfo[$key]['addtime'] = local_date($GLOBALS['_CFG']['time_format'],$taste['addtime']); 
	}
	
	$arr = array('tasteinfo'=>$tasteinfo,'filter'=>$filter,'page_count'=>$filter['page_count'],'recorde_count'=>$filter['recorder_count']);
	
	return $arr;
}