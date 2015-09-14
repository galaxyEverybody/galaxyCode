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
$userid = $_SESSION['user_id'];

if(empty($userid)){
	header("location:user.php");
}

/* 申请借款页面*/
if ($action == 'default')
{	
	//查询是否有投资记录
	$sql = 'SELECT count(*) FROM '.$GLOBALS['ecs']->table('order_goods').' WHERE user_id='.$userid;
	$countrec = $GLOBALS['db']->getOne($sql);
	if(!empty($countrec)){
		show_message($_LANG['financing_record_info'],$_LANG['back_up_page'],'user.php');
	}
	//if($countrec)
	//查询是否有借款记录
	/*$sql = 'SELECT count(*) FROM '.$GLOBALS['ecs']->table('user_borrow').' WHERE user_id='.$userid;
	$num = $GLOBALS['db']->getOne($sql);
	if(!empty($num)){
		show_message($_LANG['borrow_record_info'],$_LANG['back_up_page'],'user.php');
	}*/
	
	$loantime = array('3个月','6个月','9个月','12个月','15个月','18个月','21个月','24个月');
	
	$smarty->assign('loantime',		$loantime);
	
	$smarty->assign('act',		$action);
	$smarty->display('borrow_money.dwt');
}

/* 添加借款信息*/
elseif ($action == 'insert_borrow_money')
{
	include_once(ROOT_PATH . 'includes/lib_transaction.php');

	$borrow_style = isset($_POST['category_style'])?intval($_POST['category_style']):'0';
	$loannum = intval(trim($_POST['loannum']));
	$borrowloantime = compile_str(trim($_POST['borrowloantime']));
	$loantitle = compile_str(trim($_POST['loantitle']));
	$loandescription = compile_str(trim($_POST['loandescription']));
	$loanagree = compile_str($_POST['loanagree']);
	$user_id = isset($_SESSION['user_id'])?$_SESSION['user_id']:'0';
	
	if($loanagree != 'on'){
		show_message($_LANG['borrow_agree'],$_LANG['back_up_page'],'borrow_money.php');
	}
	
	$borrow_money = array(
		'user_id'			=> $user_id,
		'add_time'			=> gmtime(),
		'borrow_style'		=> $borrow_style,
		'borrow_num'		=> isset($loannum)? $loannum:0,
		'borrow_time'		=> isset($borrowloantime)? $borrowloantime:'0',
		'borrow_title'		=> isset($loantitle)? $loantitle:'0',
		'borrow_description'		=> isset($loandescription)? $loandescription:'0',
		'borrow_status'		=> 0,
	);
	
	if(insert_borrow($borrow_money)){
		show_message($_LANG['borrow_success'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}
}

/* 基本信息的提交页面*/
elseif ($action == 'userinformation'){
	
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);		//籍贯
	$smarty->assign('act',	$action);
	
	/* 查询借款信息*/
	$sql = "SELECT u.realname,u.mobile_phone,u.idcard,b.borrow_style FROM ".$GLOBALS['ecs']->table('users').' as u , '.
			$GLOBALS['ecs']->table('user_borrow').' as b WHERE u.user_id = b.user_id AND u.user_id = '.$userid;
	
	$userinfo = $GLOBALS['db']->getAll($sql);

	$username = isset($userinfo[0]['realname'])?substr($userinfo[0]['realname'],0,3).'****':'0';
	$usephone = isset($userinfo[0]['mobile_phone'])?str_replace(substr($userinfo[0]['mobile_phone'],3,5),'*****',$userinfo[0]['mobile_phone']):'0';
	$usercard = isset($userinfo[0]['idcard'])?str_replace(substr($userinfo[0]['idcard'],4,strlen($userinfo[0]['idcard'])-8),'**********',$userinfo[0]['idcard']):'0';
	
	$smarty->assign('username',$username);
	$smarty->assign('usephone',$usephone);
	$smarty->assign('usercard',$usercard);
	$smarty->assign('flag',$userinfo[0]['borrow_style']);
	$smarty->display('borrow_money.dwt');
}

/* 基本信息内容的添加*/
elseif ($action == 'insert_user_info'){
	/* 查询借款信息*/
	$sql = "SELECT u.realname,u.mobile_phone,u.idcard,b.borrow_style FROM ".$GLOBALS['ecs']->table('users').' as u , '.
			$GLOBALS['ecs']->table('user_borrow').' as b WHERE u.user_id = b.user_id AND u.user_id = '.$userid;
	
	$userinfo = $GLOBALS['db']->getAll($sql);

	$truename = isset($_POST['truename'])?compile_str(trim($_POST['truename'])):$userinfo[0]['realname'];
	$idcard = isset($_POST['idcard'])?compile_str(trim($_POST['idcard'])):$userinfo[0]['idcard'];
	$phone = isset($_POST['phone'])?intval(trim($_POST['phone'])):$userinfo[0]['mobile_phone'];
	$sex = intval(trim($_POST['sex']));
	$age = intval(trim($_POST['age']));
	$provincename = intval(trim($_POST['provincename']));
	$cityname = intval(trim($_POST['cityname']));
	$countyname = intval(trim($_POST['countyname']));
	$liveaddress = compile_str(trim($_POST['liveaddress']));
	$zipcode = compile_str(trim($_POST['zipcode']));
	//======================================================
	$educational = compile_str(trim($_POST['educational']));
	$studiotime = intval(trim($_POST['studiotime']));
	$graduate = intval(trim($_POST['graduate']));
	$relatename = compile_str(trim($_POST['relatename']));
	$friendname = intval(trim($_POST['friendname']));
	$friendphone = intval(trim($_POST['friendphone']));
	
	if(empty($truename) || empty($idcard) || empty($phone) || empty($sex) || empty($age) || empty($liveaddress) || empty($zipcode)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}
	
	$basicinfo = array(
			'user_id'			=> $user_id,
			'addtime'			=> gmtime(),
			'realname'		=> $borrow_style,
			'idcard'		=> isset($loannum)? $loannum:0,
			'telephone'		=> isset($borrowloantime)? $borrowloantime:'0',
			'sex'		=> isset($loantitle)? $loantitle:'0',
			'age'		=> isset($loandescription)? $loandescription:'0',
			'provinceplace'		=> 0,
			'cityplace'		=> 0,
			'countryplace'		=> 0,
			'address'		=> 0,
			'zipcode'		=> 0,
			'educational'		=> 0,
			'studiotime'		=> 0,
			'graduate'		=> 0,
			'relationname'		=> 0,
			'relationphone'		=> 0,
			'friendname'		=> 0,
			'friendphone'		=> 0,
	);
	
	if(insert_borrow($basicinfo)){
		show_message($_LANG['borrow_success'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}
	
	$flag = $userinfo[0]['borrow_style'];
	if($flag == 1){
		header("location:borrow_money.php?act=carinfo");
	}elseif($flag == 2){
		header("location:borrow_money.php?act=houseinfo");
	}elseif($flag == 3){
		header("location:borrow_money.php?act=creditinfo");
	}else{
		header("location:borrow_money.php");
	}
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
	
	/* 查询借款信息*/
	$sql = "SELECT borrow_style FROM ".$GLOBALS['ecs']->table('user_borrow').' WHERE user_id = '.$userid;
	$falg = $GLOBALS['db']->getOne($sql);
	
	$smarty->assign('carinformation',	$carinformation);
	$smarty->assign('cartype',	$cartype);
	$smarty->assign('carnature',	$carnature);
	$smarty->assign('carhold',	$carhold);
	$smarty->assign('carhistory',	$carhistory);
	$smarty->assign('cartime',	$cartime);
	
	$smarty->assign('act',	$action);
	$smarty->assign('borrow_flag',	$falg);
	$smarty->display('borrow_money.dwt');
}

/* 车辆信息的添加*/
elseif ($action == 'insert_car_info'){
	
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
	
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 房产信息的添加*/
elseif ($action == 'insert_house_info'){
	
}

/* 纯信用信息提交的页面*/
elseif ($action == 'creditinfo'){
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 纯信用信息的添加*/
elseif ($action == 'insert_credit_info'){

}



