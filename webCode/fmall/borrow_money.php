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

$smarty->assign('helps',        get_shop_help()); // 网店帮助


$action = isset($_REQUEST['act'])?$_REQUEST['act']:'default';

/* 申请借款页面*/
if ($action == 'default')
{	
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$smarty->assign('act',		$action);
	$smarty->display('borrow_money.dwt');
}

/* ajax的车贷计算*/
elseif ($action =="ajax_counter_car"){
	$num = intval($_POST['catnum']);
	$yearrate = 0.023*12;
	$sixmonth = 0.023*6;
	$threemonth = 0.023*3;
	$month = 0.023;
	
	$val = $num*$yearrate.','.$num*$sixmonth.','.$num*$threemonth.','.$num*$month;
	
	echo $val;
}

/* ajax的房贷计算*/
elseif ($action =="ajax_counter_house"){
	$num = intval($_POST['catnum']);
	$yearrate = 0.12;
	$sixmonth = 0.13;
	$threemonth = 0.15;
	$month = 0.17;
	
	$val = $num*$yearrate.','.$num*$sixmonth.','.$num*$threemonth.','.$num*$month;
	
	echo $val;
}

/* 车辆信息提交的页面*/
elseif ($action == 'carinfo'){
	$year = date("Y");

	$cartimeyear = array($year,$year-1,$year-2,$year-3,$year-4,$year-5,$year-6,$year-7,$year-8,$year-9,$year-10);	//购车时间年
	$cartimemonth = array('1','2','3','4','5','6','7','8','9','10','11','12',);	//购车时间月
	/* 取得国家的省列表 
	$province_list[$region_id] = get_regions(1, 1);
	$smarty->assign('province_list',    $province_list);*/
	
	$smarty->assign('cartimeyear',	$cartimeyear);
	$smarty->assign('cartimemonth',	$cartimemonth);
	
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 车辆信息的添加*/
elseif ($action == 'insert_car_info'){
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$carname = trim($_POST['carname']);
	$caraddress = trim($_POST['caraddress']);
	$carphone = trim($_POST['carphone']);
	$carborrownum = trim($_POST['carborrownum']);
	$cartime = trim($_POST['cartime']);
	$carbuytime = trim($_POST['carbuyyear']).'/'.trim($_POST['carbuymonth']);
	$carnum = trim($_POST['carnum']*10000);
	
	if(empty($carname) || empty($carphone) || empty($caraddress) || empty($carborrownum) || empty($cartime) || empty($carnum)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=carinfo');
	}

	if(!preg_match('/^1[34578]{1}\d{9}$/',$carphone)){
		show_message($_LANG['borrow_carphone_fail'],$_LANG['back_up_page'],'borrow_money.php?act=carinfo');
	}
	
	$userid = isset($_SESSION['user_id'])?$_SESSION['user_id']:'0';
	$carinfo = array(
			'user_id'			=>	$userid,
			'car_name'			=>	$carname,
			'car_phone'			=>	$carphone,
			'car_address'		=>	$caraddress,
			'car_borrownum'		=>	$carborrownum,
			'car_borrowtime'	=>	$cartime,
			'car_buytime'		=>	$carbuytime,
			'car_carnum'		=>	$carnum,
			'status'			=>	0,
			'add_time'			=>	gmtime(),
			'is_del'			=>	0
	);

	if(insert_borrow($carinfo,1)){
		show_message($_LANG['borrow_record_success'],$_LANG['back_up_page'],'./index.php');
	}

}

/* 房产信息提交的页面*/
elseif ($action == 'houseinfo'){
	
	$smarty->assign('act',	$action);
	$smarty->display('borrow_money.dwt');
}

/* 房产信息的添加*/
elseif ($action == 'insert_house_info'){
	include_once(ROOT_PATH . 'includes/lib_transaction.php');
	
	$userid = isset($_SESSION['user_id'])?$_SESSION['user_id']:'0';
	$housename = trim($_POST['housename']);
	$housephone = trim($_POST['housephone']);
	$houseborrownum = trim($_POST['houseborrownum'])*10000;
	$house_add = trim($_POST['house_add']);
	$house_use = trim($_POST['house_use']);
	
	if(empty($housename) || empty($housephone) || empty($houseborrownum) || empty($house_add) || empty($house_use)){
		show_message($_LANG['borrow_userinfo_fail'],$_LANG['back_up_page'],'borrow_money.php?act=houseinfo');
	}

	$houseinfo = array(
			'user_id'			=>	$userid,
			'housename'			=>	$housename,
			'housephone'		=>	$housephone,
			'houseborrownum'	=>	$houseborrownum,
			'house_add'			=>	$house_add,
			'house_use'			=>	$house_use,
			'status'			=>	0,
			'add_time'			=>	gmtime(),
			'is_del'			=>	0
	);
	
	if(insert_borrow($houseinfo,2)){
		show_message($_LANG['borrow_record_success'],$_LANG['back_up_page'],'./index.php');
	}
}

/* 纯信用信息提交的页面*/
elseif ($action == 'creditinfo'){
	/* 查询纯信用信息 */
	$sql = 'SELECT * FROM '.$GLOBALS['ecs']->table('borrow_credit').' WHERE user_id='.$userid;
	$creditinfo = $GLOBALS['db']->getAll($sql);
	
	$creditinfo[0]['cardright'] = empty($creditinfo[0]['cardright'])?'0':$creditinfo[0]['cardright'];
	$creditinfo[0]['cardleft'] = empty($creditinfo[0]['cardleft'])?'0':$creditinfo[0]['cardleft'];
	$creditinfo[0]['cardhead'] = empty($creditinfo[0]['cardhead'])?'0':$creditinfo[0]['cardhead'];
	$creditinfo[0]['contract'] = empty($creditinfo[0]['contract'])?'0':$creditinfo[0]['contract'];
	$creditinfo[0]['certification'] = empty($creditinfo[0]['certification'])?'0':$creditinfo[0]['certification'];
	$creditinfo[0]['workcertification'] = empty($creditinfo[0]['workcertification'])?'0':$creditinfo[0]['workcertification'];
	$creditinfo[0]['prove'] = empty($creditinfo[0]['prove'])?'0':$creditinfo[0]['prove'];
	$creditinfo[0]['bankprove'] = empty($creditinfo[0]['bankprove'])?'0':$creditinfo[0]['bankprove'];
	$creditinfo[0]['comscreen'] = empty($creditinfo[0]['comscreen'])?'0':$creditinfo[0]['comscreen'];
	
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



