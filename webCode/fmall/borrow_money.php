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
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	//查询是否有投资记录
	$sql = 'SELECT count(*) FROM '.$GLOBALS['ecs']->table('order_goods').' WHERE user_id='.$userid;
	$countrec = $GLOBALS['db']->getOne($sql);
	if(!empty($countrec)){
		show_message($_LANG['financing_record_info'],$_LANG['back_up_page'],'user.php');
	}

	
	$borrowstep = select_borrow_step($userid);		//查询借款的位置
	
	if(!empty($borrowstep['borrownum']) && empty($borrowstep['borrowbasic'])){
		header('location:borrow_money.php?act=userinformation');
	}elseif(!empty($borrowstep['borrownum']) && !empty($borrowstep['borrowbasic'])){
		
		$userinfo = select_borrowinfo_exist($userid);
		
		$flag = $userinfo[0]['borrow_style'];
		if($flag == 1){
			if(empty($borrowstep['borrow_car'])){
				header("location:borrow_money.php?act=carinfo");
			}else{
				show_message($_LANG['borrow_record_info'],$_LANG['back_up_page'],'./index.php');
			}	
		}elseif($flag == 2){
			if(empty($borrowstep['borrow_car'])){
				header("location:borrow_money.php?act=houseinfo");
			}else{
				show_message($_LANG['borrow_record_info'],$_LANG['back_up_page'],'./index.php');
			}
		}elseif($flag == 3){
			if(empty($borrowstep['borrow_car'])){
				header("location:borrow_money.php?act=creditinfo");
			}else{
				show_message($_LANG['borrow_record_info'],$_LANG['back_up_page'],'./index.php');
			}
		}
		
	}
	
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
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	/* 取得国家的省列表 */
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);
	$smarty->assign('act',	$action);
	
	/* 查询借款信息*/
	$userinfo = select_borrowinfo_exist($userid);

	$username = isset($userinfo[0]['realname'])?substr($userinfo[0]['realname'],0,3).'****':'0';
	$usephone = isset($userinfo[0]['mobile_phone'])?str_replace(substr($userinfo[0]['mobile_phone'],3,5),'*****',$userinfo[0]['mobile_phone']):'0';
	$usercard = isset($userinfo[0]['idcard'])?str_replace(substr($userinfo[0]['idcard'],4,strlen($userinfo[0]['idcard'])-8),'**********',$userinfo[0]['idcard']):'0';
	
	$smarty->assign('username',$username);
	$smarty->assign('usephone',$usephone);
	$smarty->assign('usercard',$usercard);
	$smarty->assign('userid',$userid);
	$smarty->assign('flag',$userinfo[0]['borrow_style']);
	$smarty->display('borrow_money.dwt');
}

/* 基本信息内容的添加*/
elseif ($action == 'insert_user_info'){

	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	/* 查询借款信息*/
	$userinfo = select_borrowinfo_exist($userid);

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
	$educational = isset($_POST['educational'])?compile_str(trim($_POST['educational'])):'0';
	$studioyear = isset($_POST['birthdayYear'])?intval(trim($_POST['birthdayYear'])):0;
	$studiomonth = isset($_POST['birthdayMonth'])?intval(trim($_POST['birthdayMonth'])):0;
	$studioday = isset($_POST['birthdayDay'])?intval(trim($_POST['birthdayDay'])):0;
	$graduate = isset($_POST['graduate'])?compile_str(trim($_POST['graduate'])):0;
	$userfilination = isset($_POST['filination'])?compile_str(trim($_POST['filination'])):'0';
	$relatename = isset($_POST['relatename'])?compile_str(trim($_POST['relatename'])):'0';
	$relatephone = isset($_POST['relatephone'])?compile_str(trim($_POST['relatephone'])):'0';
	$userotherfilination = isset($_POST['otherfilination'])?compile_str(trim($_POST['otherfilination'])):'0';
	$friendname = isset($_POST['othername'])?compile_str(trim($_POST['othername'])):'0';
	$friendphone = isset($_POST['otherphone'])?compile_str(trim($_POST['otherphone'])):'0';
	
	if(empty($truename) || empty($idcard) || empty($phone) || empty($sex) || empty($age) || empty($liveaddress) || empty($zipcode)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}
	
	if(!preg_match("/1[3458]{1}\d{9}$/",$phone)){
		show_message($_LANG['borrow_phone_fail'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}elseif(!preg_match('/^([\d]{17}[xX\d]|[\d]{15})$/',$idcard)){
		show_message($_LANG['borrow_idcard_fail'],$_LANG['back_up_page'],'borrow_money.php?act=userinformation');
	}
	
	$basicinfo = array(
			'user_id'			=> $user_id,
			'addtime'			=> gmtime(),
			'realname'			=> $truename,
			'idcard'			=> $idcard,
			'telephone'			=> $phone,
			'sex'				=> $sex,
			'age'				=> $age,
			'provinceplace'		=> $provincename,
			'cityplace'			=> $cityname,
			'countryplace'		=> $countyname,
			'address'			=> $liveaddress,
			'zipcode'			=> $zipcode,
			'educational'		=> $educational,
			'studioyear'		=> $studioyear,
			'studiomonth'		=> $studiomonth,
			'studioday'			=> $studioday,
			'graduate'			=> $graduate,
			'finitional'		=> $userfilination,
			'relationname'		=> $relatename,
			'relationphone'		=> $relatephone,
			'otherfinitional'	=> $userotherfilination,
			'friendname'		=> $friendname,
			'friendphone'		=> $friendphone,
	);

	if(insert_borrow($basicinfo,1)){
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
	
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$carinformation = compile_str(trim($_POST['carinformation']));
	$cartype = compile_str(trim($_POST['cartype']));
	$cartime = isset($_POST['cartime'])?compile_str(trim($_POST['cartime'])):'0';
	$carnature = compile_str(trim($_POST['carnature']));
	$carhold = compile_str(trim($_POST['carhold']));
	$carhistory = compile_str(trim($_POST['carhistory']));
	
	if(empty($carinformation) || empty($cartype) || empty($carnature) || empty($carhold) || empty($carhistory)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=carinfo');
	}
	
	$carinfo = array(
			'user_id'		=>	$userid,
			'carinfo'		=>	$carinformation,
			'carstyle'		=>	$cartype,
			'cartransfer'	=>	$cartime,
			'carnature'		=>	$carnature,
			'carhold'		=>	$carhold,
			'carhistory'	=>	$carhistory,
			'addtime'		=>	gmtime()
	);
	
	if(insert_borrow($carinfo,2)){
		show_message($_LANG['borrow_record_success'],$_LANG['back_up_page'],'./index.php');
	}

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
	
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$houseaddress = isset($_POST['hosue_houseadd'])?compile_str(trim($_POST['hosue_houseadd'])):'0';
	$housetype = compile_str(trim($_POST['housetype']));
	$houseloan = compile_str(trim($_POST['houseloan']));
	
	if(empty($houseaddress) || empty($housetype) || empty($houseloan)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=houseinfo');
	}
	
	$carinfo = array(
			'user_id'		=>	$userid,
			'house_add'		=>	$houseaddress,
			'house_type'		=>	$housetype,
			'house_loan'	=>	$houseloan,
			'addtime'		=>	gmtime()
	);
	
	if(insert_borrow($carinfo,3)){
		show_message($_LANG['borrow_record_success'],$_LANG['back_up_page'],'./index.php');
	}
}

/* 纯信用信息提交的页面*/
elseif ($action == 'creditinfo'){
	/* 查询纯信用信息 */
	$sql = 'SELECT * FROM '.$GLOBALS['ecs']->table('borrow_credit').' WHERE user_id='.$userid;
	$creditinfo = $GLOBALS['db']->getAll($sql);
	//print_r($creditinfo[0]);exit;
	$smarty->assign('credit_info',	$creditinfo[0]);
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 纯信用信息的添加*/
elseif ($action == 'insert_credit_info'){

	include_once(ROOT_PATH . 'includes/lib_base.php');
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$project = trim($_POST['project']);
	
	$type = $_FILES[$project]['type'];
	$name = $_FILES[$project]['name'];
	$size = $_FILES[$project]['size'];
	
	//判断图片的大小与格式
	$imgarray = array('image/jpq','image/png','image/jpeg','image/gif');
	if(!in_array($type,$imgarray)){
		show_message($_LANG['identification_img_fail'], $_LANG['back_page_up'], 'borrow_money.php?act=creditinfo', 'info');
	}elseif($size > 1024*1024*2){
		show_message($_LANG['identification_imgsize_fail'], $_LANG['back_page_up'], 'borrow_money.php?act=creditinfo', 'info');
	}
	

	/* 创建当月目录 */
	$dir = date('Ym');
	$path = './images/borrowmoney/'.$dir.'/'.$project.'/';
	if(!file_exists($path)){
		make_dir($path);
	}
	/* 确定文件名*/
	$img_name = $path.'/'.gmtime().$name;
	
	if(move_uploaded_file($_FILES[$project]['tmp_name'],$img_name)){
		//对借款用户的图片证明进行保存
		if(update_userloan_img($userid,$img_name,$project)){
			show_message($_LANG['userhead_upload_success'], $_LANG['back_page_up'], 'borrow_money?act=creditinfo', 'info');
		}
	}else{
		show_message($_LANG['userhead_upload_fail'], $_LANG['back_page_up'], 'borrow_money?act=creditinfo', 'info');
	}
}



