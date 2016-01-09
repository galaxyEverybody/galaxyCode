<?php
/**
*	用于支付的文件
	datetime 2015-12-29
*/
if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}
require_once(ROOT_PATH . 'includes/cls_mysql.php');
class conpay{

	protected $oid_partner = '201512281000658793';				//商户编号
	protected $pay_style = 'D';									//支付方式
	protected $sign_type = 'RSA';								//签名方式
	protected $version = '1.0';									//版本号
	protected $busi_partner = '101001';							//商户业务类型
	protected $notify_url = 'www.jnz360.com/notify_url.php';	//异步通知地址
	protected $url_return = 'www.jnz360.com/pay_back.php';		//支付成功的回显页面
	protected $id_type = '0';									//证件类型(身份证)
	/* 风控参数*/
	protected $frms_ware_category = '2009';						//商品类目
	protected $user_info_identify_state = '1';					//是否实名认证
	protected $user_info_identify_type = '4';					//实名认证方式
	/* 连接数据库参数*/
	public $db = null;
	public $ecs = null;
	
	/* 访问远程服务器的URL*/
	var $api_urls = array(
		'checkbangcard'	=>	'https://yintong.com.cn/queryapi/bankcardbin.htm',
		'unbindcard'	=>	'https://yintong.com.cn/traderapi/bankcardunbind.htm',
		'paymoney'		=>	'https://cashier.lianlianpay.com/payment/authpay.htm'
	);
	
	/**
     * @access  public
     * @return  void
     */
    function __construct(){
        $this->pay();
    }

    /**
     * @access  public
     * @return  void
     */
    function pay(){
        /* 由于要包含init.php，所以这两个对象一定是存在的，因此直接赋值 */
        $this->db = $GLOBALS['db'];
        $this->ecs = $GLOBALS['ecs'];
    }
	
    /* 银行卡卡BIN查询*/
    function select_cardinfo($cardnum){
    	$url = $this->api_urls['checkbangcard'];
    	$postinfo = array(
    		'oid_partner'	=>	$this->oid_partner,
    		'sign_type'		=>	$this->sign_type,
    		'card_no'		=>	$cardnum
    	);
    	ksort($postinfo);
    	$data = $this->createlinkstring($postinfo);
    	$sign = $this->rsasign($data);
    	$postinfo['sign'] = $sign;
    	ksort($postinfo);
    	$resinfo = json_encode($postinfo);	//将数据转化为json格式
    	$cardmsg = $this->Post($resinfo,$url);
    	return $cardmsg;
    }
    /* 银行卡解绑操作*/
    function unbind_card($userinfo){
    	$url = $this->api_urls['unbindcard'];
    	$postinfo = array(
    		'oid_partner'	=>	$this->oid_partner,
    		'user_id'		=>	$userinfo['user_id'],
    		'pay_type'		=>	$this->pay_style,
    		'sign_type'		=>	$this->sign_type,
    		'no_agree'		=>	$userinfo['no_agree']
    	);
    	ksort($postinfo);
    	$data = $this->createlinkstring($postinfo);
    	$sign = $this->rsasign($data);
    	$postinfo['sign'] = $sign;
    	ksort($postinfo);
    	$resinfo = json_encode($postinfo);
    	$cardmsg = $this->Post($resinfo,$url);
    	return $cardmsg;
    }
    /* 支付操作*/
    function pay_handle($para){
    	$url = $this->api_urls['paymoney'];
    	$windpara = $this->createwindstring($para['user_id']);

  		date_default_timezone_set('PRC');
    	$payinfo = array(
    		'version'		=>	$this->version,
    		'oid_partner'	=>	$this->oid_partner,
    		'user_id'		=>	$para['user_id'],
    		'timestamp'		=>	date('YmdHis',time()),
    		'sign_type'		=>	$this->sign_type,
    		'busi_partner'	=>	$this->busi_partner,
    		'no_order'		=>	$para['order_sn'],
    		'dt_order'		=>	date('YmdHis',$para['add_time']),	//生成订单时间
    		'name_goods'	=>	$para['goods_name'],	//商品名称
    		'money_order'	=>	$para['order_price'],	//交易金额
    		'notify_url'	=>	$this->notify_url,
    		'url_return'	=>	$this->url_return,
    		'bank_code'		=>	$para['cardbank'],		//银行编号
    		'card_no'		=>	$para['cardnum'],		//银行卡号
    		'pay_type'		=>	$this->pay_style,
    		'risk_item'		=>	$windpara,				//风控参数
    		'id_type'		=>	$this->id_type,
    		'id_no'			=>	$para['idcard'],		//身份证号
    		'acct_name'		=>	$para['realname']		//真实姓名
    	);
    	ksort($payinfo);
    	$data = $this->createlinkstring($payinfo);
    	$sign = $this->rsasign($data);
    	$payinfo['sign'] = $sign;
    	$resinfo = $this->createpaystring($payinfo,$url);
    	echo $resinfo;
    	
    }
    /* 数据的提交*/
    function Post($curlPost,$url){
		$curl = curl_init();
		curl_setopt($curl, CURLOPT_URL, $url);
		curl_setopt($curl, CURLOPT_HEADER, false);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_NOBODY, true);
		curl_setopt($curl, CURLOPT_POST, true);
		curl_setopt($curl, CURLOPT_POSTFIELDS, $curlPost);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
		$return_str = curl_exec($curl);
		curl_close($curl);
		return $return_str;
	}
	/* RSA签名*/
	function rsasign($data){
		$prikey = file_get_contents('includes/key/rsa_private_key.pem');
		
    	$res = openssl_get_privatekey($prikey);	//转换为openssl密钥，必须是没有经过pkcs8转换的私钥
    	
    	openssl_sign($data, $sign, $res,OPENSSL_ALGO_MD5);	//调用openssl内置签名方法，生成签名$sign
    	openssl_free_key($res);	//释放资源
    	$sign = base64_encode($sign);
    	
    	return $sign;
	}
	/* RSA验签*/
	function rsaverify($data,$sign){
		$pubKey = file_get_contents('includes/key/llpay_public_key.pem');
		
		$res = openssl_get_publickey($pubKey);	//转换为openssl格式密钥
		$result = (bool)openssl_verify($data, base64_decode($sign), $res,OPENSSL_ALGO_MD5);
		openssl_free_key($res);
		return $result;
	}
	/* 整合验证的数据*/
	function createlinkstring($para) {
		$arg  = "";
		while (list ($key, $val) = each ($para)) {
			$arg.=$key."=".$val."&";
		}
		$arg = substr($arg,0,count($arg)-2);
		
		//if(get_magic_quotes_gpc()){$arg = stripslashes($arg);}
		return $arg;
	}
	/* 整合风控参数*/
	function createwindstring($para){
		
		$sql = "SELECT realname,idcard,mobile_phone,reg_time FROM ".
			$GLOBALS['ecs']->table('users')." WHERE user_id=".$para.
			" AND idcardstatus=1";
		$users = $GLOBALS['db']->getRow($sql);
		
		$userinfo['user_info_mercht_userno']	= $para;
		$userinfo['user_info_bind_phone']		= $users['mobile_phone'];
		$userinfo['user_info_dt_register']		= local_date('Ymdhis',$users['reg_time']);
		$userinfo['user_info_full_name']		= $users['realname'];
		$userinfo['user_info_id_no']			= $users['idcard'];
		$userinfo['frms_ware_category'] 		= $this->frms_ware_category;
		$userinfo['user_info_identify_type']	= $this->user_info_identify_type;
		$userinfo['user_info_identify_state']	= $this->user_info_identify_state;
		$userinfo['user_info_id_type']			= $this->id_type;
		
		ksort($userinfo);
		return json_encode($userinfo);
	}
	/* 整合支付参数*/
	function createpaystring($para,$url){
		$sHtml = "<form id='llpaysubmit' name='llpaysubmit' target='_blank' action='" . $url . "' method='post'>";
		$sHtml .= "<input type='hidden' name='acct_name' value='" . $para['acct_name'] . "'/>";
		$sHtml .= "<input type='hidden' name='bank_code' value='" . $para['bank_code'] . "'/>";
		$sHtml .= "<input type='hidden' name='busi_partner' value='" . $para['busi_partner'] . "'/>";
		$sHtml .= "<input type='hidden' name='card_no' value='" . $para['card_no'] . "'/>";
		$sHtml .= "<input type='hidden' name='dt_order' value='" . $para['dt_order'] . "'/>";
		$sHtml .= "<input type='hidden' name='id_no' value='" . $para['id_no'] . "'/>";
		$sHtml .= "<input type='hidden' name='id_type' value='" . $para['id_type'] . "'/>";
		$sHtml .= "<input type='hidden' name='money_order' value='" . $para['money_order'] . "'/>";
		$sHtml .= "<input type='hidden' name='name_goods' value='" . $para['name_goods'] . "'/>";
		$sHtml .= "<input type='hidden' name='no_order' value='" . $para['no_order'] . "'/>";
		$sHtml .= "<input type='hidden' name='notify_url' value='" . $para['notify_url'] . "'/>";
		$sHtml .= "<input type='hidden' name='oid_partner' value='" . $para['oid_partner'] . "'/>";
		$sHtml .= "<input type='hidden' name='pay_type' value='" . $para['pay_type'] . "'/>";
		$sHtml .= "<input type='hidden' name='risk_item' value='" . $para['risk_item'] . "'/>";
		$sHtml .= "<input type='hidden' name='sign_type' value='" . $para['sign_type'] . "'/>";
		$sHtml .= "<input type='hidden' name='timestamp' value='" . $para['timestamp'] . "'/>";
		$sHtml .= "<input type='hidden' name='url_return' value='" . $para['url_return'] . "'/>";
		$sHtml .= "<input type='hidden' name='user_id' value='" . $para['user_id'] . "'/>";
		$sHtml .= "<input type='hidden' name='version' value='" . $para['version'] . "'/>";
		$sHtml .= "<input type='hidden' name='sign' value='" . $para['sign'] . "'/>";
	
		//submit按钮控件请不要含有name属性
		$sHtml = $sHtml . "<input type='submit' value='立即支付'></form>";
		$sHtml = $sHtml."<script>window.open();document.forms['llpaysubmit'].submit();</script>";
		return $sHtml;
	}
}