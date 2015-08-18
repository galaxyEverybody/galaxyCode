/* $Id : shopping_flow.js 4865 2007-01-31 14:04:10Z paulgao $ */

var selectedShipping = null;
var selectedPayment  = null;
var selectedPack     = null;
var selectedCard     = null;
var selectedSurplus  = '';
var selectedBonus    = 0;
var selectedIntegral = 0;
var selectedOOS      = null;
var alertedSurplus   = false;

var groupBuyShipping = null;
var groupBuyPayment  = null;

/* *
 * 改变配送方式
 */
function selectShipping(obj)
{
  if (selectedShipping == obj)
  {
    return;
  }
  else
  {
    selectedShipping = obj;
  }

  var supportCod = obj.attributes['supportCod'].value + 0;
  var theForm = obj.form;

  for (i = 0; i < theForm.elements.length; i ++ )
  {
    if (theForm.elements[i].name == 'payment' && theForm.elements[i].attributes['isCod'].value == '1')
    {
      if (supportCod == 0)
      {
        theForm.elements[i].checked = false;
        theForm.elements[i].disabled = true;
      }
      else
      {
        theForm.elements[i].disabled = false;
      }
    }
  }

  if (obj.attributes['insure'].value + 0 == 0)
  {
    document.getElementById('ECS_NEEDINSURE').checked = false;
    document.getElementById('ECS_NEEDINSURE').disabled = true;
  }
  else
  {
    document.getElementById('ECS_NEEDINSURE').checked = false;
    document.getElementById('ECS_NEEDINSURE').disabled = false;
  }

  var now = new Date();
  Ajax.call('flow.php?step=select_shipping', 'shipping=' + obj.value, orderShippingSelectedResponse, 'GET', 'JSON');
}

/**
 *
 */
function orderShippingSelectedResponse(result)
{
  if (result.need_insure)
  {
    try
    {
      document.getElementById('ECS_NEEDINSURE').checked = true;
    }
    catch (ex)
    {
      alert(ex.message);
    }
  }

  try
  {
    if (document.getElementById('ECS_CODFEE') != undefined)
    {
      document.getElementById('ECS_CODFEE').innerHTML = result.cod_fee;
    }
  }
  catch (ex)
  {
    alert(ex.message);
  }

  orderSelectedResponse(result);
}

/* *
 * 改变支付方式
 */
function selectPayment(obj)
{
  if (selectedPayment == obj)
  {
    return;
  }
  else
  {
    selectedPayment = obj;
  }

  Ajax.call('flow.php?step=select_payment', 'payment=' + obj.value, orderSelectedResponse, 'GET', 'JSON');
}
/* *
 * 团购购物流程 --> 改变配送方式
 */
function handleGroupBuyShipping(obj)
{
  if (groupBuyShipping == obj)
  {
    return;
  }
  else
  {
    groupBuyShipping = obj;
  }

  var supportCod = obj.attributes['supportCod'].value + 0;
  var theForm = obj.form;

  for (i = 0; i < theForm.elements.length; i ++ )
  {
    if (theForm.elements[i].name == 'payment' && theForm.elements[i].attributes['isCod'].value == '1')
    {
      if (supportCod == 0)
      {
        theForm.elements[i].checked = false;
        theForm.elements[i].disabled = true;
      }
      else
      {
        theForm.elements[i].disabled = false;
      }
    }
  }

  if (obj.attributes['insure'].value + 0 == 0)
  {
    document.getElementById('ECS_NEEDINSURE').checked = false;
    document.getElementById('ECS_NEEDINSURE').disabled = true;
  }
  else
  {
    document.getElementById('ECS_NEEDINSURE').checked = false;
    document.getElementById('ECS_NEEDINSURE').disabled = false;
  }

  Ajax.call('group_buy.php?act=select_shipping', 'shipping=' + obj.value, orderSelectedResponse, 'GET');
}

/* *
 * 团购购物流程 --> 改变支付方式
 */
function handleGroupBuyPayment(obj)
{
  if (groupBuyPayment == obj)
  {
    return;
  }
  else
  {
    groupBuyPayment = obj;
  }

  Ajax.call('group_buy.php?act=select_payment', 'payment=' + obj.value, orderSelectedResponse, 'GET');
}

/* *
 * 改变商品包装
 */
function selectPack(obj)
{
  if (selectedPack == obj)
  {
    return;
  }
  else
  {
    selectedPack = obj;
  }

  Ajax.call('flow.php?step=select_pack', 'pack=' + obj.value, orderSelectedResponse, 'GET', 'JSON');
}

/* *
 * 改变祝福贺卡
 */
function selectCard(obj)
{
  if (selectedCard == obj)
  {
    return;
  }
  else
  {
    selectedCard = obj;
  }

  Ajax.call('flow.php?step=select_card', 'card=' + obj.value, orderSelectedResponse, 'GET', 'JSON');
}

/* *
 * 选定了配送保价
 */
function selectInsure(needInsure)
{
  needInsure = needInsure ? 1 : 0;

  Ajax.call('flow.php?step=select_insure', 'insure=' + needInsure, orderSelectedResponse, 'GET', 'JSON');
}

/* *
 * 团购购物流程 --> 选定了配送保价
 */
function handleGroupBuyInsure(needInsure)
{
  needInsure = needInsure ? 1 : 0;

  Ajax.call('group_buy.php?act=select_insure', 'insure=' + needInsure, orderSelectedResponse, 'GET', 'JSON');
}

/* *
 * 回调函数
 */
function orderSelectedResponse(result)
{
  if (result.error)
  {
    alert(result.error);
    location.href = './';
  }

  try
  {
    var layer = document.getElementById("ECS_ORDERTOTAL");

    layer.innerHTML = (typeof result == "object") ? result.content : result;

    if (result.payment != undefined)
    {
      var surplusObj = document.forms['theForm'].elements['surplus'];
      if (surplusObj != undefined)
      {
        surplusObj.disabled = result.pay_code == 'balance';
      }
    }
  }
  catch (ex) { }
}

/* *
 * 改变余额
 */
function changeSurplus(val)
{
  if (selectedSurplus == val)
  {
    return;
  }
  else
  {
    selectedSurplus = val;
  }

  Ajax.call('flow.php?step=change_surplus', 'surplus=' + val, changeSurplusResponse, 'GET', 'JSON');
}

/* *
 * 改变余额回调函数
 */
function changeSurplusResponse(obj)
{
  if (obj.error)
  {
    try
    {
      document.getElementById("ECS_SURPLUS_NOTICE").innerHTML = obj.error;
      document.getElementById('ECS_SURPLUS').value = '0';
      document.getElementById('ECS_SURPLUS').focus();
    }
    catch (ex) { }
  }
  else
  {
    try
    {
      document.getElementById("ECS_SURPLUS_NOTICE").innerHTML = '';
    }
    catch (ex) { }
    orderSelectedResponse(obj.content);
  }
}

/* *
 * 改变积分
 */
function changeIntegral(val)
{
  if (selectedIntegral == val)
  {
    return;
  }
  else
  {
    selectedIntegral = val;
  }

  Ajax.call('flow.php?step=change_integral', 'points=' + val, changeIntegralResponse, 'GET', 'JSON');
}

/* *
 * 改变积分回调函数
 */
function changeIntegralResponse(obj)
{
  if (obj.error)
  {
    try
    {
      document.getElementById('ECS_INTEGRAL_NOTICE').innerHTML = obj.error;
      document.getElementById('ECS_INTEGRAL').value = '0';
      document.getElementById('ECS_INTEGRAL').focus();
    }
    catch (ex) { }
  }
  else
  {
    try
    {
      document.getElementById('ECS_INTEGRAL_NOTICE').innerHTML = '';
    }
    catch (ex) { }
    orderSelectedResponse(obj.content);
  }
}

/* *
 * 改变红包
 */
function changeBonus(val)
{
  if (selectedBonus == val)
  {
    return;
  }
  else
  {
    selectedBonus = val;
  }

  Ajax.call('flow.php?step=change_bonus', 'bonus=' + val, changeBonusResponse, 'GET', 'JSON');
}

/* *
 * 改变红包的回调函数
 */
function changeBonusResponse(obj)
{
  if (obj.error)
  {
    alert(obj.error);

    try
    {
      document.getElementById('ECS_BONUS').value = '0';
    }
    catch (ex) { }
  }
  else
  {
    orderSelectedResponse(obj.content);
  }
}

/**
 * 验证红包序列号
 * @param string bonusSn 红包序列号
 */
function validateBonus(bonusSn)
{
  Ajax.call('flow.php?step=validate_bonus', 'bonus_sn=' + bonusSn, validateBonusResponse, 'GET', 'JSON');
}

function validateBonusResponse(obj)
{

if (obj.error)
  {
    alert(obj.error);
    orderSelectedResponse(obj.content);
    try
    {
      document.getElementById('ECS_BONUSN').value = '0';
    }
    catch (ex) { }
  }
  else
  {
    orderSelectedResponse(obj.content);
  }
}

/* *
 * 改变发票的方式
 */
function changeNeedInv()
{
  var obj        = document.getElementById('ECS_NEEDINV');
  var objType    = document.getElementById('ECS_INVTYPE');
  var objPayee   = document.getElementById('ECS_INVPAYEE');
  var objContent = document.getElementById('ECS_INVCONTENT');
  var needInv    = obj.checked ? 1 : 0;
  var invType    = obj.checked ? (objType != undefined ? objType.value : '') : '';
  var invPayee   = obj.checked ? objPayee.value : '';
  var invContent = obj.checked ? objContent.value : '';
  objType.disabled = objPayee.disabled = objContent.disabled = ! obj.checked;
  if(objType != null)
  {
    objType.disabled = ! obj.checked;
  }

  Ajax.call('flow.php?step=change_needinv', 'need_inv=' + needInv + '&inv_type=' + encodeURIComponent(invType) + '&inv_payee=' + encodeURIComponent(invPayee) + '&inv_content=' + encodeURIComponent(invContent), orderSelectedResponse, 'GET');
}

/* *
 * 改变发票的方式
 */
function groupBuyChangeNeedInv()
{
  var obj        = document.getElementById('ECS_NEEDINV');
  var objPayee   = document.getElementById('ECS_INVPAYEE');
  var objContent = document.getElementById('ECS_INVCONTENT');
  var needInv    = obj.checked ? 1 : 0;
  var invPayee   = obj.checked ? objPayee.value : '';
  var invContent = obj.checked ? objContent.value : '';
  objPayee.disabled = objContent.disabled = ! obj.checked;

  Ajax.call('group_buy.php?act=change_needinv', 'need_idv=' + needInv + '&amp;payee=' + invPayee + '&amp;content=' + invContent, null, 'GET');
}

/* *
 * 改变缺货处理时的处理方式
 */
function changeOOS(obj)
{
  if (selectedOOS == obj)
  {
    return;
  }
  else
  {
    selectedOOS = obj;
  }

  Ajax.call('flow.php?step=change_oos', 'oos=' + obj.value, null, 'GET');
}

/* *
 * 检查提交的订单表单
 */
function checkOrderForm(frm)
{
  var paymentSelected = false;
  var shippingSelected = false;

  // 检查是否选择了支付配送方式
  for (i = 0; i < frm.elements.length; i ++ )
  {
    if (frm.elements[i].name == 'shipping' && frm.elements[i].checked)
    {
      shippingSelected = true;
    }

    if (frm.elements[i].name == 'payment' && frm.elements[i].checked)
    {
      paymentSelected = true;
    }
  }

  if ( ! shippingSelected)
  {
    alert(flow_no_shipping);
    return false;
  }

  if ( ! paymentSelected)
  {
    alert(flow_no_payment);
    return false;
  }

  // 检查用户输入的余额
  if (document.getElementById("ECS_SURPLUS"))
  {
    var surplus = document.getElementById("ECS_SURPLUS").value;
    var error   = Utils.trim(Ajax.call('flow.php?step=check_surplus', 'surplus=' + surplus, null, 'GET', 'TEXT', false));

    if (error)
    {
      try
      {
        document.getElementById("ECS_SURPLUS_NOTICE").innerHTML = error;
      }
      catch (ex)
      {
      }
      return false;
    }
  }

  // 检查用户输入的积分
  if (document.getElementById("ECS_INTEGRAL"))
  {
    var integral = document.getElementById("ECS_INTEGRAL").value;
    var error    = Utils.trim(Ajax.call('flow.php?step=check_integral', 'integral=' + integral, null, 'GET', 'TEXT', false));

    if (error)
    {
      return false;
      try
      {
        document.getElementById("ECS_INTEGRAL_NOTICE").innerHTML = error;
      }
      catch (ex)
      {
      }
    }
  }
  frm.action = frm.action + '?step=done';
  return true;
}

/* *
 * 检查收货地址信息表单中填写的内容
 */
function checkConsignee(frm)
{
  var msg = new Array();
  var err = false;

  if (frm.elements['country'] && frm.elements['country'].value == 0)
  {
    msg.push(country_not_null);
    err = true;
  }

  if (frm.elements['province'] && frm.elements['province'].value == 0 && frm.elements['province'].length > 1)
  {
    err = true;
    msg.push(province_not_null);
  }

  if (frm.elements['city'] && frm.elements['city'].value == 0 && frm.elements['city'].length > 1)
  {
    err = true;
    msg.push(city_not_null);
  }

  if (frm.elements['district'] && frm.elements['district'].length > 1)
  {
    if (frm.elements['district'].value == 0)
    {
      err = true;
      msg.push(district_not_null);
    }
  }

  if (Utils.isEmpty(frm.elements['consignee'].value))
  {
    err = true;
    msg.push(consignee_not_null);
  }

  if ( ! Utils.isEmail(frm.elements['email'].value))
  {
    err = true;
    msg.push(invalid_email);
  }

  if (frm.elements['address'] && Utils.isEmpty(frm.elements['address'].value))
  {
    err = true;
    msg.push(address_not_null);
  }

  if (frm.elements['zipcode'] && frm.elements['zipcode'].value.length > 0 && (!Utils.isNumber(frm.elements['zipcode'].value)))
  {
    err = true;
    msg.push(zip_not_num);
  }

  if (Utils.isEmpty(frm.elements['tel'].value))
  {
    err = true;
    msg.push(tele_not_null);
  }
  else
  {
    if (!Utils.isTel(frm.elements['tel'].value))
    {
      err = true;
      msg.push(tele_invaild);
    }
  }

  if (frm.elements['mobile'] && frm.elements['mobile'].value.length > 0 && (!Utils.isTel(frm.elements['mobile'].value)))
  {
    err = true;
    msg.push(mobile_invaild);
  }

  if (err)
  {
    message = msg.join("\n");
    alert(message);
  }
  return ! err;
}
/*
 * 风险提示页面检查复选框是否勾选 
 */
function checksubmitorder(){
	var checkbox0 = document.getElementsByClassName('checkbox0');
	var checkbox1 = document.getElementsByClassName('checkbox1');
	var sub_btn = document.getElementById('cart_good_btn');
	var status = checkbox0[0].checked;
	var status1 = checkbox1[0].checked;
	if(status && status1){
		sub_btn.style.background="#F35858";
		sub_btn.style.color="#FFFFFF";
	}else{
		sub_btn.style.background="";
		sub_btn.style.color="#B4B4B4";
	}
}

/*
 * 绑定银行卡验证
 */
function bangkainfo()
{
	var bangtruename = $("input[name='bangtruename']")[0].value;
	var cardwang = $("input[name='cardwang']")[0].value;
	var cardnum = $("input[name='cardnum']")[0].value;

	if(bangtruename ==''){
		$("#bangtruename").html("请输入您的真实姓名");
		return false;
	}
	if(cardwang ==''){
		$("#cardwang").html("请输入开户网点");
		return false;
	}
	if(cardnum ==''){
		$("#cardnum").html("请输入银行卡号");
		return false;
	}
	
	return true;
	
}

/*
 * 绑定银行卡检测真实姓名
 */
function chekbangtruename(bangtruename)
{
	if(bangtruename == ''){
		$("#bangtruename").html("请输入您的真实姓名");
		return false;
	}else{
		if(bangtruename.match(/[^\u4e00-\u9fa5]/)){
			$("#bangtruename").html("输入姓名错误");
			return false;
		}else{
			$("#bangtruename").html("good");
		}
	}
}

/*
 * 绑定银行卡检测开户网点
 */
function checkcardwang(cardwang)
{
	if(cardwang == ''){
		$("#cardwang").html("请输入您的银行卡开户网点");
		return false;
	}else{
		if(cardwang.match(/[^\u4e00-\u9fa5]/)){
			$("#cardwang").html("输入开户网点错误");
			return false;
		}else{
			$("#cardwang").html("good");
		}
	}
}

/*
 * 绑定银行卡检测真实姓名
 */
function chekcardnum(cardnum)
{
	if(cardnum == ''){
		$("#cardnum").html("请输入您的银行卡号");
		return false;
	}else{
		if(cardnum.match(/^[0-9]{15,20}$/)){
			$("#cardnum").html("good");
		}else{
			$("#cardnum").html("输入银行卡号错误");
			return false;
		}
	}
}

/*
 * 设定提现密码验证
 */
function withdrawinfo()
{
	var withdrawverify = $("input[name='withdrawverify']")[0].value;
	var withdrawpassword = $("input[name='withdrawpassword']")[0].value;
	var msg="";
	if(withdrawverify ==''){
		msg = '验证码不可以为空\n';
	}
	if(withdrawpassword ==''){
		msg += '提现密码不可以为空';
	}
	
	if(msg.length > 0){
		alert(msg);
		return false
	}else{
		return true;
	}
}

/*
 * 设定提现密码验证码检测
 */
function chekwithdrawverify(withdrawverify)
{
	if(withdrawverify == ''){
		$("#withdrawverify").html("请输入短信验证码");
		return false;
	}else{
		if(withdrawverify.match(/^[0-9]{4}$/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + withdrawverify, check_withdrawphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$("#withdrawverify").html("短信验证码错误");
			return false;
		}
	}
}

/*
 * 设定提现密码验证密码
 */
function chekwithdrawpassword(withdrawpassword)
{
	if(withdrawpassword == ''){
		$("#withdrawpassword").html("请输入您的提现密码");
		return false;
	}else{
		if(withdrawpassword.match(/^[0-9a-zA-Z]{6}$/)){
			$("#withdrawpassword").html("good");
		}else{
			$("#withdrawpassword").html("提现密码格式错误");
			return false;
		}
	}
}

/* 点击获取验证码*/
function getwithdrawphoneverify()
{
	var phone = document.getElementById('truephone').value;
	Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, withdraw_phoneverify_callback , 'GET', 'TEXT', true, true );
}

function withdraw_phoneverify_callback(result)
{
	if ( result == 'ok' )
	  { 
		$('#withdrawverify').html('验证码已发送');
		RemainwithdrawTime();
	  }
	  else
	  {
		$('#withdraw_click').html('0');
		$('#withdrawverify').html('验证码发送失败请重新点击');
		$('#withdrawform').submit(function(){ return false;});
	  }
}

function check_withdrawphoneverify_callback(result)
{
	if ( result == 'ok' )
	  {
		$('#withdrawverify').html('输入正确');
	  }
	  else
	  {
		  $('#withdrawverify').html('输入错误');
		  $('#withdrawform').submit(function(){ return false;});
	  }
}

/*设置提现密码倒计时*/
function RemainwithdrawTime(){
	var iTime = 59;
	var Account;
	var timenum = document.getElementById('doutimeinp').value;

	if(timenum < iTime){
		iTime = timenum
	}

	var sTime="";
	if (iTime >= 0){
		if(iTime==0){
			clearTimeout(Account);
			iTime = '<a onclick=getwithdrawphoneverify()>获取验证码</a>';
		}else{
			iTime=iTime-1;
			document.getElementById('doutimeinp').value = iTime;
			Account = setTimeout("RemainwithdrawTime()",1000);
		}
	}else{
		sTime='没有倒计时';
	}
	
	document.getElementById('get_withdraw_time').innerHTML = iTime;
	document.getElementById('click_time').style.color = '#FF852F';
	
}

/* 安全认证中心手机更换倒计时*/
function RemainauthcenterphoneTime(){
	var iTime = 61;
	var Account;
	var timenum = document.getElementById('oldphone_verify_time').value;
	
	if(timenum < iTime){
		iTime = timenum
	}

	var sTime="";
	if (iTime >= 0){
		if(iTime==0){
			clearTimeout(Account);
			iTime = '<a onclick=getwithdrawphoneverify()>获取验证码</a>';
		}else{
			iTime=iTime-1;
			document.getElementById('oldphone_verify_time').value = iTime;
			Account = setTimeout("RemainauthcenterphoneTime()",1000);
		}
	}else{
		sTime='没有倒计时';
	}

	document.getElementById('get_authcenterphone_time').innerHTML = iTime;
	document.getElementById('click_time').style.color = '#FF852F';
	
}

/* 安全认证中心新手机点击倒计时*/
function RemainauthcenternewphoneTime(){
	var iTime = 61;
	var Account;
	var timenum = document.getElementById('newphone_verify_time').value;

	if(timenum < iTime){
		iTime = timenum
	}

	var sTime="";
	if (iTime >= 0){
		if(iTime==0){
			clearTimeout(Account);
			iTime = '<a onclick=getwithdrawphoneverify()>获取验证码</a>';
		}else{
			iTime=iTime-1;
			document.getElementById('newphone_verify_time').value = iTime;
			Account = setTimeout("RemainauthcenternewphoneTime()",1000);
		}
	}else{
		sTime='没有倒计时';
	}
	
	document.getElementById('get_newauthcenterphone_time').innerHTML = iTime;
	document.getElementById('click_time').style.color = '#FF852F';
	
}

/* 安全认证中心手机更换手机获取验证码*/
function getauthcenter_phone(){
	var phone = document.getElementById('oldmobile_phone').value;
	Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, authcenter_phoneverify_callback , 'GET', 'TEXT', true, true );
}
function authcenter_phoneverify_callback(result){
	if(result == 'ok'){
		$('#callauthphone_verify').html('验证码已发送');
		RemainauthcenterphoneTime();
	}else{
		$('#callauthphone_verify').html('-验证码发送失败');
	}
	
}

/* 安全认证中心手机修改验证码验证*/
function chekauthcenter_verify(phoneveri){
	if(phoneveri == ''){
		$('#callauthphone_verify').html('-请输入您收到的验证码');
	}else{
		if(phoneveri.match(/[0-9]{4}/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, check_authcenterphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#callauthphone_verify').html('-验证码格式错误！');
		}
	}
}
/*function check_authcenterphoneverify_callback(result){
	if（result == 'ok'){
		$('#callauthphone_verify').html('输入正确');
	}else{
		$('#callauthphone_verify').html('输入错误');
	}
}*/

/* 安全认证中心提现密码手机的验证*/
function chewithdrawauthcenter_password(widthdrawpassword){
	if(widthdrawpassword == ''){
		$('#withdrawerror_authcenter').html('-请输入您的提现密码');
	}else{
		if(!widthdrawpassword.match(/[0-9a-zA-Z]{6,30}/)){
			$('#withdrawerror_authcenter').html('-输入的格式错误');
		}
	}
}

/* 安全认证中心提现密码身份证的验证*/
function chewithdrawidcardauthcenter_password(widthdrawpassword){
	if(widthdrawpassword == ''){
		$('#withdrawidcard_authcenter').html('-请输入您的提现密码');
	}else{
		if(!widthdrawpassword.match(/[0-9a-zA-Z]{6,30}/)){
			$('#withdrawidcard_authcenter').html('-输入的格式错误');
		}
	}
}

/* 安全认证中心身份证号的验证*/
function chekauthcenter_idcard(idcard){
	if(idcard == ''){
		$('#idcarderror_authcenter').html('-请输入您的身份证号');
	}else{
		if(idcard.match(/(^\/d{15}$)|(^\/d{17}([0-9]|X)$)/)){
			/* 未完验证*/
			$('#idcarderror_authcenter').html('-输入正确');
		}else{
			$('#idcarderror_authcenter').html('-身份证号格式错误');
		}
	}
}

/* 安全认证中心新手机号的验证*/
function authcenteruser_newphone(newphone){
	var reg = /^1[3|5|8|7]\d{9}$/;
	if(newphone == ''){
		$('#newphone_authcenter').html('-请输入您的新手机号');
	}else{
		if(reg.test(newphone)){
			$('#newphone_authcenter').html('+可以使用');
		}else{
			$('#newphone_authcenter').html('-手机号格式错误');
		}
	}
}

/* 安全认证中心新手机号获取验证码*/
function getwithdrawnewphoneverify(){
	var reg = /^1[3|5|8|7]\d{9}$/;
	var phone = document.getElementById('newmobile_phone').value;
	if(phone == ''){
		$('#newphone_authcenter').html('-请输入您的新手机号');
	}else{
		if(reg.test(phone)){
			Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, authcenter_newphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#newphone_authcenter').html('-手机号格式错误');
		}
	}
}

function authcenter_newphoneverify_callback(result){
	if(result == 'ok'){
		$('#newphonemsg_authcenter').html('验证码已发送');
		RemainauthcenternewphoneTime();
	}else{
		$('#newphonemsg_authcenter').html('-验证码发送失败');
	}
}

/*新手机号验证码的验证*/
function cheauthcenter_newverify(verify){
	if(verify == ''){
		$('#newphonemsg_authcenter').html('-请输入验证码');
	}else{
		if(verify.match(/[0-9]{4}/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, check_authcenternewphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#newphonemsg_authcenter').html('-输入格式错误');
		}
	}
}

/*安全认证中心修改手机号的提交*/
function authcentereditphone(){
	var phoneverify = $("input[name='authcenter_phoneverify']")[0].value();
	var withdrawps = $("input[name='withdrawauthcenter_password']")[0].value();
	var idcard = $("input[name='authcenter_idcard']")[0].value();
	var idcardwithdrawpw = $("input[name='withdrawauthidcardcenter_password']")[0].value();
	var newphone = $("input[name='authcenter_newphonename']")[0].value();
	var newphoneverify = $("input[name='authnewphone_verify']")[0].value();
	if(empty(phoneverify)){
		if(empty(idcard)||empty(idcardwithdrawpw)||empty(newphone)||empty(newphoneverify)){
			$('#formauthcenterphone').submit(function(){return false;})
		}
	}else{
		if(empty(phoneverify)||empty(withdrawps)||empty(newphone)||empty(newphoneverify)){
			$('#formauthcenterphone').submit(function(){return false;})
		}
	}
}

/*安全认证中心邮箱的验证*/
function chekauthcenteremail(email){
	if(email == ''){
		$('#emailmsg_authcenter').html('-请输入您的邮箱账号');
		$('#formauthcenteremail').submit(function(){return false;});
	}else{
		if(email.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			/*未完检测邮箱是否存在*/
			
		}else{
			$('#emailmsg_authcenter').html('-请输入正确的邮箱');
			$('#formauthcenteremail').submit(function(){return false;});
		}
	}
}

/*安全认证中心绑定邮箱提交的验证*/
function authcenteremailform(){

	var email = $("input[name='authcenter_email']")[0].value;
	if(email == ''){
		$('#emailmsg_authcenter').html('-请输入您的邮箱账号');
		return false;
	}else{
		if(!email.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			$('#emailmsg_authcenter').html('-请输入正确的邮箱');
			return false;
		}
	}
}

/*安全中心实名认证姓名检测*/
function chekauthcenter_truename(truename){
	var reg=/^[\u4e00-\u9fa5]+$/;
	if(truename == ''){
		$('#truenamemsg_authcenter').html('-请输入您的真实姓名');
	}else{
		if(reg.test(truename)){
			$('#truenamemsg_authcenter').html('+输入正确');
		}else{
			$('#truenamemsg_authcenter').html('-输入格式错误');
		}
	}
}

/*安全中心实名认证身份证号的检测*/
function chekauthcenter_idcardname(idcardnum){
	reg=/^(\d{15}|\d{17}[\dXx])$/;
	if(idcardnum == ''){
		$('#idcardnamemsg_authcenter').html('-请输入您的身份证号');
	}else{
		if(reg.test(idcardnum)){
			$('#idcardnamemsg_authcenter').html('+输入正确');
		}else{
			$('#idcardnamemsg_authcenter').html('-输入格式错误');
		}
	}
}

/*安全认证中心实名认证的提交*/
function authcentertruenamefrom(){
	var truename = $("input[name='truename_authcenter']")[0].value;
	var trueidcard = $("input[name='authcenter_idcardname']")[0].value;
	
	if(truename == ''){
		$('#truenamemsg_authcenter').html('-请输入您的真实姓名');
		return false;
	}
	if(trueidcard == ''){
		$('#idcardnamemsg_authcenter').html('-请输入您的身份证号');
		return false;
	}
	return true;
}

/* 充值页面表单的验证*/
function formrechanger(){
	var num = $("#rechargernum").val();
	var reg = /^[0-9]{2,10}$/;
	if(num == ''){	
		$("#rechargernumspan").html('-请输入您要充值的金额');
		return false;
	}else{
		if(!reg.test(num) ){
			$("#rechargernumspan").html('-请输入您要充值的金额');
			return false;
		}else if(num%50 != 0){
			$("#rechargernumspan").html('-充值的金额必须为50的倍数');
			return false;
		}else{
			$("#rechargernumspan").html('+输入正确');
			return true;
		}
	}
}

function chekrechargernum(num){
	var reg = /^[0-9]{2,10}$/;
	if(num == ''){
		$("#rechargernumspan").html('-请输入您要充值的金额');
	}else{
		if(!reg.test(num)){
			$("#rechargernumspan").html('-请输入您要充值的金额');
		}else if(num%50 != 0){
			$("#rechargernumspan").html('-充值的金额必须为50的倍数');
		}else{
			$("#rechargernumspan").html('+输入正确');
		}
	}
}

/* 提现页面表单的验证*/
function formwithdrawals(){
	var num = $("#withdrawalsnum").val();
	var reg = /^[0-9]{1,10}$/;
	if(num == ''){
		$("#withdrawalsnumspan").html('-请输入您要提现的金额');
		return false;
	}else{
		if(!reg.test(num)){
			$("#withdrawalsnumspan").html('-输入的金额不合法');
			return false;
		}else if(num < 5){
			$("#withdrawalsnumspan").html('-提现的金额小于最小金额');
			return false;
		}else{
			$("#withdrawalsnumspan").html('+输入正确');
			return true;
		}
	}
}

function chekwithdrawalsnum(num){
	var reg = /^[0-9]{1,10}$/;
	if(num == ''){
		$("#withdrawalsnumspan").html('-请输入您要提现的金额');
	}else{
		if(!reg.test(num)){
			$("#withdrawalsnumspan").html('-输入的金额不合法');
		}else if(num < 5){
			$("#withdrawalsnumspan").html('-提现的金额小于最小金额');
		}else{
			$("#withdrawalsnumspan").html('+输入正确');
		}
	}
}