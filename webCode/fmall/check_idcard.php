<?php
/*
 * 实名认证的查询
 */
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$userid = $_SESSION['user_id'];
if(empty($userid)){
	header("location:user.php");
}

$data = $_POST;

$user_id = trim($data['useruser']);
$realname = trim($data['realname']);

if($user_id = $userid){
	//查询认证次数
	$countinfo = select_chek_id($userid);
	$num = $countinfo['num'];
	$addtime = $countinfo['time'];
	$nowtime = gmtime();
	
	if($num == 5 && ($nowtime-$addtime) > 24*60*60){
		$sql = "UPDATE ".$GLOBALS['ecs']->table('check_idcard')." SET checktimes=0 WHERE user_id=".$userid;
		$GLOBALS['db']->query($sql);
	}elseif($num == 5){
		$arr['status'] = '2';
		die(json_encode($arr));
	}
	
	$post_data [ 'name' ] = $realname;
	$post_data [ 'cardno' ] = $data['idcard'] ;
	$post_data [ 'appkey' ] = "bbefe459287faab66731a970d9c85328" ;

	$url = 'http://api.id98.cn/api/idcard' ;
	$o = "" ;
	foreach ( $post_data as $k => $v )
	{
		$o .= " $k = " . urlencode ( $v ) . " & " ;
	}
	$post_data = substr ( $o , 0 ,- 1 ) ;
	$ch = curl_init () ;
	curl_setopt ( $ch , CURLOPT_POST , 1 ) ;
	curl_setopt ( $ch , CURLOPT_HEADER , 0 ) ;
	curl_setopt ( $ch , CURLOPT_URL , $url ) ;
	curl_setopt ( $ch , CURLOPT_POSTFIELDS , $post_data ) ;
	curl_setopt ( $ch , CURLOPT_RETURNTRANSFER , 1 ) ;
	$result = curl_exec ( $ch ) ;
	$arr = json_decode($result);
	
	$data = $arr->data;
	$err = $data->err;
	$address = $data->address;
	$sex = $data->sex;
	$birthday = $data->birthday;
	$isok = $arr->isok;
	$code = $arr->code;
	$time = gmtime();
	
	$checkidinfo = array(
			'user_id'		=>	$user_id,
			'userealname'	=>	$realname,
			'isok'			=>	isset($isok)?$isok:0,
			'code'			=>	isset($code)?$code:0,
			'err'			=>	isset($err)?$err:0,
			'address'		=>	isset($address)?$address:'0',
			'sex'			=>	isset($sex)?$sex:'0',
			'birthday'		=>	isset($birthday)?$birthday:'0',
			'addtime'		=>	$time,
			'checktimes'	=>	'1',
	);
	
	if($code =='1'){
		$res['status'] = '1';
		echo json_encode($res);
	}else{
		$res['status'] = '0';
		echo json_encode($res);
	}
	insert_check_id($userid,$checkidinfo);		//记录认证的信息
}else{
	$res['status'] = '0';
	echo json_encode($res);
}


/*
 * 对查询的信息进行添加
 */

function insert_check_id($userid,$checkidinfo){
	$infoone = select_chek_id($userid);
	$numone = $infoone['num'];
	
	if(empty($numone)){
		$GLOBALS['db']->autoExecute($GLOBALS['ecs']->table('check_idcard'), $checkidinfo, 'INSERT');
	}else{
		$nums = $numone+1;
		$sql = "UPDATE ".$GLOBALS['ecs']->table('check_idcard')." SET checktimes =".$nums.
			" WHERE user_id=".$userid;
		$GLOBALS['db']->query($sql);
	}
}

/*
 * 查询认证的次数与时间
 */

function select_chek_id($userid){
	$sql = "SELECT checktimes,addtime FROM ".$GLOBALS['ecs']->table('check_idcard')." WHERE user_id=".$userid;

	$countinfo = $GLOBALS['db']->getAll($sql);

	$info['num'] = $countinfo[0]['checktimes'];
	$info['time'] = $countinfo[0]['addtime'];

	return $info;
}

