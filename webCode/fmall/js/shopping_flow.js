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
	$(this).attr("checked",true);
	var payment=$(".hoverInput");
	payment.click(function(){
		if($(this).find("input").is(":checked")){
			$(this).addClass("cur").parent("li").siblings("li").find("div").removeClass("cur");
		}
	});
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
		if($("#bangtruename").hasClass("focus")){
			$("#bangtruename").removeClass("focus");
		}
		$("#bangtruename").addClass("error");
		return false;
	}else{
		if(bangtruename.match(/[^\u4e00-\u9fa5]/)){
			$("#bangtruename").html("输入姓名不合法");
			if($("#bangtruename").hasClass("focus")){
				$("#bangtruename").removeClass("focus");
			}
			$("#bangtruename").addClass("error");
			return false;
		}else{
			$("#bangtruename").html("");
			if($("#bangtruename").hasClass("error")){
				$("#bangtruename").removeClass("error");
			}
			$("#bangtruename").addClass("focus");
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
		if($("#cardwang").hasClass("focus")){
			$("#cardwang").removeClass("focus");
		}
		$("#cardwang").addClass("error");
		return false;
	}else{
		if(cardwang.match(/[^\u4e00-\u9fa5]/)){
			if($("#cardwang").hasClass("focus")){
				$("#cardwang").removeClass("focus");
			}
			$("#cardwang").addClass("error");
			$("#cardwang").html("输入开户网点不合法");
			return false;
		}else{
			$("#cardwang").html("");
			if($("#cardwang").hasClass("error")){
				$("#cardwang").removeClass("error");
			}
			$("#cardwang").addClass("focus");
		}
	}
}

/*
 * 绑定银行卡检测银行卡号
 */
function chekcardnum(cardnum)
{
	if(cardnum == ''){
		$("#cardnum").html("请输入您的银行卡号");
		if($("#cardnum").hasClass("focus")){
			$("#cardnum").removeClass("focus");
		}
		$("#cardnum").addClass("error");
		return false;
	}else{
		if(cardnum.match(/^[0-9]{15,20}$/)){
			$("#cardnum").html("");
			if($("#cardnum").hasClass("error")){
				$("#cardnum").removeClass("error");
			}
			$("#cardnum").addClass("focus");
		}else{
			$("#cardnum").html("输入银行卡号不合法");
			if($("#cardnum").hasClass("focus")){
				$("#cardnum").removeClass("focus");
			}
			$("#cardnum").addClass("error");
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
	var withdrawpwconfirm = $("input[name='withdrawpwconfirm']")[0].value;
	
	if(chekwithdrawverify(withdrawverify) && chekwithdrawpassword(withdrawpassword) && chekwithdrawpwconfirm(pwconfirm)){
		return true;
	}else{
		return false;
	}
	
}

/*
 * 设定提现密码验证码检测
 */
function chekwithdrawverify(withdrawverify)
{
	if(withdrawverify == ''){
		$("#withdrawverify").html("请输入短信验证码");
		if($("#withdrawverify").hasClass("focus"))
		{
			$("#withdrawverify").removeClass("focus");
		}
		$("#withdrawverify").addClass("error");
		return false;
	}else{
		if(withdrawverify.match(/^[0-9]{4}$/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + withdrawverify, check_withdrawphoneverify_callback , 'GET', 'TEXT', true, true );
			return true;
		}else{
			$("#withdrawverify").html("短信验证码错误");
			if($("#withdrawverify").hasClass("focus"))
			{
				$("#withdrawverify").removeClass("focus");
			}
			$("#withdrawverify").addClass("error");
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
		if($("#withdrawpassword").hasClass("focus"))
		{
			$("#withdrawpassword").removeClass("focus");
		}
		$("#withdrawpassword").addClass("error");
		return false;
	}else{
		if(withdrawpassword.match(/^[0-9a-zA-Z]{6,30}$/)){
			$("#withdrawpassword").html("");
			if($("#withdrawpassword").hasClass("error"))
			{
				$("#withdrawpassword").removeClass("error");
			}
			$("#withdrawpassword").addClass("focus");
			return true;
		}else{
			$("#withdrawpassword").html("提现密码格式错误");
			if($("#withdrawpassword").hasClass("focus"))
			{
				$("#withdrawpassword").removeClass("focus");
			}
			$("#withdrawpassword").addClass("error");
			return false;
		}
	}
}

/*
 * 重复密码的验证
 */
function chekwithdrawpwconfirm(pwconfirm){
	var pw = $("input[name = 'withdrawpassword']")[0].value;
	
	if(pwconfirm == ''){
		$("#withdrawpwconfirm").html("请输入您的提现密码");
		if($("#withdrawpwconfirm").hasClass("focus"))
		{
			$("#withdrawpwconfirm").removeClass("focus");
		}
		$("#withdrawpwconfirm").addClass("error");
		return false;
	}else{
		if(!pwconfirm.match(/^[0-9a-zA-Z]{6,30}$/)){
			$("#withdrawpwconfirm").html("提现密码格式错误");
			if($("#withdrawpwconfirm").hasClass("focus"))
			{
				$("#withdrawpwconfirm").removeClass("focus");
			}
			$("#withdrawpwconfirm").addClass("error");
			return false;
		}else if(pw != pwconfirm){
			$("#withdrawpwconfirm").html("两次密码输入不一致");
			if($("#withdrawpwconfirm").hasClass("focus"))
			{
				$("#withdrawpwconfirm").removeClass("focus");
			}
			$("#withdrawpwconfirm").addClass("error");
			return false;
		}else{
			$("#withdrawpwconfirm").html("");
			if($("#withdrawpwconfirm").hasClass("error"))
			{
				$("#withdrawpwconfirm").removeClass("error");
			}
			$("#withdrawpwconfirm").addClass("focus");
			return true;
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
		RemainwithdrawTime();
	  }
	  else
	  {
		$('#withdraw_click').html('0');
		$('#withdrawform').submit(function(){ return false;});
	  }
}

function check_withdrawphoneverify_callback(result)
{
	if ( result == 'ok' )
	  {
		$('#withdrawverify').html('');
		if($("#withdrawverify").hasClass("error"))
		{
			$("#withdrawverify").removeClass("error");
		}
		$("#withdrawverify").addClass("focus");
		return true;
	  }
	  else
	  {
		  $('#withdrawverify').html('输入错误');
		  if($("#withdrawverify").hasClass("focus"))
			{
				$("#withdrawverify").removeClass("focus");
			}
			$("#withdrawverify").addClass("error");
		  $('#withdrawform').submit(function(){ return false;});
		  return false;
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
	var phone = document.getElementById('oldmobile_phone').innerHTML;
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
		$('#callauthphone_verify').html('请输入您收到的验证码');
		if($("#callauthphone_verify").hasClass("focus")){
			$("#callauthphone_verify").removeClass("focus");
		}
		$("#callauthphone_verify").addClass("error");
	}else{
		if(phoneveri.match(/[0-9]{4}/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, check_auphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#callauthphone_verify').html('验证码不合法');
			if($("#callauthphone_verify").hasClass("focus")){
				$("#callauthphone_verify").removeClass("focus");
			}
			$("#callauthphone_verify").addClass("error");
		}
	}
}
function check_auphoneverify_callback(result){
	if(result == 'ok'){
		$('#callauthphone_verify').html('');
		if($("#callauthphone_verify").hasClass("error")){
			$("#callauthphone_verify").removeClass("error");
		}
		$("#callauthphone_verify").addClass("focus");
	}else{
		$('#callauthphone_verify').html('输入错误');
		if($("#callauthphone_verify").hasClass("focus")){
			$("#callauthphone_verify").removeClass("focus");
		}
		$("#callauthphone_verify").addClass("error");
	}
}

/* 安全认证中心提现密码手机的验证*/
function chewithdrawauthcenter_password(widthdrawpassword){
	if(widthdrawpassword == ''){
		$('#withdrawerror_authcenter').html('请输入您的提现密码');
		if($("#withdrawerror_authcenter").hasClass("focus")){
			$("#withdrawerror_authcenter").removeClass("focus");
		}
		$("#withdrawerror_authcenter").addClass("error");
	}else{
		if(!widthdrawpassword.match(/[0-9a-zA-Z]{6,30}/)){
			$('#withdrawerror_authcenter').html('输入的格式错误');
			if($("#withdrawerror_authcenter").hasClass("focus")){
				$("#withdrawerror_authcenter").removeClass("focus");
			}
			$("#withdrawerror_authcenter").addClass("error");
		}else{
			$('#withdrawerror_authcenter').html('');
			if($("#withdrawerror_authcenter").hasClass("error")){
				$("#withdrawerror_authcenter").removeClass("error");
			}
			$("#withdrawerror_authcenter").addClass("focus");
		}
	}
}

/* 安全认证中心提现密码身份证的验证*/
function chewithdrawidcardauthcenter_password(widthdrawpassword){
	if(widthdrawpassword == ''){
		$('#withdrawidcard_authcenter').html('请输入您的提现密码');
		if($("#withdrawidcard_authcenter").hasClass("focus")){
			$("#withdrawidcard_authcenter").removeClass("focus");
		}
		$("#withdrawidcard_authcenter").addClass("error");
	}else{
		if(!widthdrawpassword.match(/[0-9a-zA-Z]{6,30}/)){
			$('#withdrawidcard_authcenter').html('输入的密码不合法');
			if($("#withdrawidcard_authcenter").hasClass("focus")){
				$("#withdrawidcard_authcenter").removeClass("focus");
			}
			$("#withdrawidcard_authcenter").addClass("error");
		}else{
			$('#withdrawidcard_authcenter').html('');
			if($("#withdrawidcard_authcenter").hasClass("error")){
				$("#withdrawidcard_authcenter").removeClass("error");
			}
			$("#withdrawidcard_authcenter").addClass("focus");
		}
	}
}

/* 安全认证中心身份证号的验证*/
function chekauthcenter_idcard(idcard){
	if(idcard == ''){
		$('#idcarderror_authcenter').html('请输入您的身份证号');
		if($("#idcarderror_authcenter").hasClass("focus")){
			$("#idcarderror_authcenter").removeClass("focus");
		}
		$("#idcarderror_authcenter").addClass("error");
	}else{
		if(idcard.match(/(^\/d{15}$)|(^\/d{17}([0-9]|X)$)/)){
			/* 未完验证*/
			$('#idcarderror_authcenter').html('');
			if($("#idcarderror_authcenter").hasClass("error")){
				$("#idcarderror_authcenter").removeClass("error");
			}
			$("#idcarderror_authcenter").addClass("focus");
		}else{
			$('#idcarderror_authcenter').html('身份证号不合法');
			if($("#idcarderror_authcenter").hasClass("focus")){
				$("#idcarderror_authcenter").removeClass("focus");
			}
			$("#idcarderror_authcenter").addClass("error");
		}
	}
}

/* 安全认证中心新手机号的验证*/
function authcenteruser_newphone(newphone){
	var reg = /^1[3|5|8|7]\d{9}$/;
	if(newphone == ''){
		$('#newphone_authcenter').html('请输入您的新手机号');
		if($("#newphone_authcenter").hasClass("focus")){
			$("#newphone_authcenter").removeClass("focus");
		}
		$("#newphone_authcenter").addClass("error");
	}else{
		if(reg.test(newphone)){
			$('#newphone_authcenter').html('');
			if($("#newphone_authcenter").hasClass("error")){
				$("#newphone_authcenter").removeClass("error");
			}
			$("#newphone_authcenter").addClass("focus");
		}else{
			$('#newphone_authcenter').html('手机号不合法');
			if($("#newphone_authcenter").hasClass("focus")){
				$("#newphone_authcenter").removeClass("focus");
			}
			$("#newphone_authcenter").addClass("error");
		}
	}
}

/* 安全认证中心新手机号获取验证码*/
function getwithdrawnewphoneverify(){
	var reg = /^1[3|5|8|7]\d{9}$/;
	var phone = document.getElementById('newmobile_phone').value;
	if(phone == ''){
		$('#newphone_authcenter').html('请输入您的新手机号');
		if($("#newphone_authcenter").hasClass("focus")){
			$("#newphone_authcenter").removeClass("focus");
		}
		$("#newphone_authcenter").addClass("error");
	}else{
		if(reg.test(phone)){
			Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, authcenter_newphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#newphone_authcenter').html('手机号格式错误');
			if($("#newphone_authcenter").hasClass("focus")){
				$("#newphone_authcenter").removeClass("focus");
			}
			$("#newphone_authcenter").addClass("error");
		}
	}
}

function authcenter_newphoneverify_callback(result){
	if(result == 'ok'){
		RemainauthcenternewphoneTime();
	}
}

/*新手机号验证码的验证*/
function cheauthcenter_newverify(verify){
	if(verify == ''){
		$('#newphonemsg_authcenter').html('请输入验证码');
		if($("#newphonemsg_authcenter").hasClass("focus")){
			$("#newphonemsg_authcenter").removeClass("focus");
		}
		$("#newphonemsg_authcenter").addClass("error");
	}else{
		if(verify.match(/[0-9]{4}/)){
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, check_authcenternewphoneverify_callback , 'GET', 'TEXT', true, true );
		}else{
			$('#newphonemsg_authcenter').html('输入不合法');
			if($("#newphonemsg_authcenter").hasClass("focus")){
				$("#newphonemsg_authcenter").removeClass("focus");
			}
			$("#newphonemsg_authcenter").addClass("error");
		}
	}
}
function check_authcenternewphoneverify_callback(result){
	if(result == 'ok'){
		$('#newphonemsg_authcenter').html('');
		if($("#newphonemsg_authcenter").hasClass("error")){
			$("#newphonemsg_authcenter").removeClass("error");
		}
		$("#newphonemsg_authcenter").addClass("focus");
	}else{
		$('#newphonemsg_authcenter').html('输入错误');
		if($("#newphonemsg_authcenter").hasClass("focus")){
			$("#newphonemsg_authcenter").removeClass("focus");
		}
		$("#newphonemsg_authcenter").addClass("error");
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
		$('#emailmsg_authcenter').html('请输入您的邮箱账号');
		if($("#emailmsg_authcenter").hasClass("focus")){
			$("#emailmsg_authcenter").removeClass("focus");
		}
		$("#emailmsg_authcenter").addClass("error");
		$('#formauthcenteremail').submit(function(){return false;});
	}else{
		if(email.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			$('#emailmsg_authcenter').html('');
			if($("#emailmsg_authcenter").hasClass("error")){
				$("#emailmsg_authcenter").removeClass("error");
			}
			$("#emailmsg_authcenter").addClass("focus");
		}else{
			$('#emailmsg_authcenter').html('邮箱账号不合法');
			if($("#emailmsg_authcenter").hasClass("focus")){
				$("#emailmsg_authcenter").removeClass("focus");
			}
			$("#emailmsg_authcenter").addClass("error");
			$('#formauthcenteremail').submit(function(){return false;});
		}
	}
}

/*安全认证中心绑定邮箱提交的验证*/
function authcenteremailform(){

	var email = $("input[name='authcenter_email']")[0].value;
	if(email == ''){
		$('#emailmsg_authcenter').html('请输入您的邮箱账号');
		if($("#emailmsg_authcenter").hasClass("focus")){
			$("#emailmsg_authcenter").removeClass("focus");
		}
		$("#emailmsg_authcenter").addClass("error");
		return false;
	}else{
		if(!email.match(/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/)){
			$('#emailmsg_authcenter').html('邮箱账号不合法');
			if($("#emailmsg_authcenter").hasClass("focus")){
				$("#emailmsg_authcenter").removeClass("focus");
			}
			$("#emailmsg_authcenter").addClass("error");
			return false;
		}
	}
}

/*安全中心实名认证姓名检测*/
function chekauthcenter_truename(truename){
	var reg=/^[\u4e00-\u9fa5]+$/;
	if(truename == ''){
		$('#truenamemsg_authcenter').html('请输入您的真实姓名');
		if($("#truenamemsg_authcenter").hasClass("focus")){
			$("#truenamemsg_authcenter").removeClass("focus");
		}
		$("#truenamemsg_authcenter").addClass("error");
	}else{
		if(reg.test(truename)){
			$('#truenamemsg_authcenter').html('');
			if($("#truenamemsg_authcenter").hasClass("error")){
				$("#truenamemsg_authcenter").removeClass("error");
			}
			$("#truenamemsg_authcenter").addClass("focus");
		}else{
			$('#truenamemsg_authcenter').html('输入内容不合法');
			if($("#truenamemsg_authcenter").hasClass("focus")){
				$("#truenamemsg_authcenter").removeClass("focus");
			}
			$("#truenamemsg_authcenter").addClass("error");
		}
	}
}

/*安全中心实名认证身份证号的检测*/
function chekauthcenter_idcardname(idcardnum){
	
	reg=/^(\d{15}|\d{17}[\dXx])$/;
	var truename = $('#auth_realname').val();
	var useruser = $('#useruser').val();
	
	if(idcardnum == ''){
		$('#idcardnamemsg_authcenter').html('请输入您的身份证号');
		if($("#idcardnamemsg_authcenter").hasClass("focus")){
			$("#idcardnamemsg_authcenter").removeClass("focus");
		}
		$("#idcardnamemsg_authcenter").addClass("error");
	}else{
		if(reg.test(idcardnum)){
			Ajax.call('check_idcard.php','idcard='+ idcardnum + '&' + 'useruser=' + useruser + '&' + 'realname=' + truename,callback_checkidcarddiv,'POST','TEXT',true,true);
		}else{
			$('#idcardnamemsg_authcenter').html('输入内容不合法');
			if($("#idcardnamemsg_authcenter").hasClass("focus")){
				$("#idcardnamemsg_authcenter").removeClass("focus");
			}
			$("#idcardnamemsg_authcenter").addClass("error");
		}
	}
}

function callback_checkidcarddiv(result)
{
	var result = eval("("+result+")");
	
	if(result.status == '1'){
		$('#idcardnamemsg_authcenter').html('');
		if($("#idcardnamemsg_authcenter").hasClass("error")){
			$("#idcardnamemsg_authcenter").removeClass("error");
		}
		$("#idcardnamemsg_authcenter").addClass("focus");
	}else if(result.status == '2'){
		$("#idcardnamemsg_authcenter").html('您的认证次数超过限制，请24小时之后再进行提交');
		if($("#idcardnamemsg_authcenter").hasClass("focus")){
			$("#idcardnamemsg_authcenter").removeClass("focus");
		}
		$("#idcardnamemsg_authcenter").addClass("error");
	}else{
		$("#idcardnamemsg_authcenter").html('您输入的身份证号码与姓名不符');
		if($("#idcardnamemsg_authcenter").hasClass("focus")){
			$("#idcardnamemsg_authcenter").removeClass("focus");
		}
		$("#idcardnamemsg_authcenter").addClass("error");
	}
	document.getElementById("checknameid").style.display="block";
		
}

/*安全认证中心实名认证的提交*/
function authcentertruenamefrom(){
	var truename = $("input[name='truename_authcenter']")[0].value;
	var trueidcard = $("input[name='authcenter_idcardname']")[0].value;
	
	if(truename == ''){
		$('#truenamemsg_authcenter').html('请输入您的真实姓名');
		if($("#truenamemsg_authcenter").hasClass("focus")){
			$("#truenamemsg_authcenter").removeClass("focus");
		}
		$("#truenamemsg_authcenter").addClass("error");
		return false;
	}
	if(trueidcard == ''){
		$('#idcardnamemsg_authcenter').html('请输入您的身份证号');
		if($("#idcardnamemsg_authcenter").hasClass("focus")){
			$("#idcardnamemsg_authcenter").removeClass("focus");
		}
		$("#idcardnamemsg_authcenter").addClass("error");
		return false;
	}
	return true;
}

/* 充值页面表单的验证*/
function formrechanger(){
	var num = $("#rechargernum").val();
	var reg = /^[0-9]{2,10}$/;
	if(num == ''){	
		$("#rechargernumspan").html('请输入您要充值的金额');
		if($("#rechargernumspan").hasClass("focus")){
			$("#rechargernumspan").removeClass("focus");
		}
		$("#rechargernumspan").addClass("error");
		return false;
	}else{
		if(!reg.test(num) ){
			$("#rechargernumspan").html('请输入您要充值的金额');
			if($("#rechargernumspan").hasClass("focus")){
				$("#rechargernumspan").removeClass("focus");
			}
			$("#rechargernumspan").addClass("error");
			return false;
		}else if(num%50 != 0){
			$("#rechargernumspan").html('充值的金额必须为50的倍数');
			if($("#rechargernumspan").hasClass("focus")){
				$("#rechargernumspan").removeClass("focus");
			}
			$("#rechargernumspan").addClass("error");
			return false;
		}else{		
			return true;
		}
	}
}

function chekrechargernum(num){
	var reg = /^[0-9]{2,10}$/;
	if(num == ''){
		$("#rechargernumspan").html('请输入您要充值的金额');
		if($("#rechargernumspan").hasClass("focus")){
			$("#rechargernumspan").removeClass("focus");
		}
		$("#rechargernumspan").addClass("error");
	}else{
		if(!reg.test(num)){
			$("#rechargernumspan").html('请输入您要充值的金额');
			if($("#rechargernumspan").hasClass("focus")){
				$("#rechargernumspan").removeClass("focus");
			}
			$("#rechargernumspan").addClass("error");
		}else if(num%50 != 0){
			$("#rechargernumspan").html('充值的金额必须为50的倍数');
			if($("#rechargernumspan").hasClass("focus")){
				$("#rechargernumspan").removeClass("focus");
			}
			$("#rechargernumspan").addClass("error");
		}else{
			$("#rechargernumspan").html('');
			if($("#rechargernumspan").hasClass("error")){
				$("#rechargernumspan").removeClass("error");
			}
			$("#rechargernumspan").addClass("focus");
		}
	}
}

/* 提现页面表单的验证*/
function formwithdrawals(){
	var num = $("#withdrawalsnum").val();
	var reg = /^[0-9]{1,10}$/;
	if(num == ''){
		$("#withdrawalsnumspan").html('请输入您要提现的金额');
		if($("#withdrawalsnumspan").hasClass("focus")){
			$("#withdrawalsnumspan").removeClass("focus");
		}
		$("#withdrawalsnumspan").addClass("error");
		return false;
	}else{
		if(!reg.test(num)){
			$("#withdrawalsnumspan").html('输入的金额不合法');
			if($("#withdrawalsnumspan").hasClass("focus")){
				$("#withdrawalsnumspan").removeClass("focus");
			}
			$("#withdrawalsnumspan").addClass("error");
			return false;
		}else if(num < 5){
			$("#withdrawalsnumspan").html('提现的金额小于最小金额');
			if($("#withdrawalsnumspan").hasClass("focus")){
				$("#withdrawalsnumspan").removeClass("focus");
			}
			$("#withdrawalsnumspan").addClass("error");
			return false;
		}else{
			return true;
		}
	}
}

function chekwithdrawalsnum(num){
	var reg = /^[0-9]{1,10}$/;
	if(num == ''){
		$("#withdrawalsnumspan").html('请输入您要提现的金额');
		if($("#withdrawalsnumspan").hasClass("focus")){
			$("#withdrawalsnumspan").removeClass("focus");
		}
		$("#withdrawalsnumspan").addClass("error");
	}else{
		if(!reg.test(num)){
			$("#withdrawalsnumspan").html('输入的金额不合法');
			if($("#withdrawalsnumspan").hasClass("focus")){
				$("#withdrawalsnumspan").removeClass("focus");
			}
			$("#withdrawalsnumspan").addClass("error");
		}else if(num < 5){
			$("#withdrawalsnumspan").html('提现的金额小于最小金额');
			if($("#withdrawalsnumspan").hasClass("focus")){
				$("#withdrawalsnumspan").removeClass("focus");
			}
			$("#withdrawalsnumspan").addClass("error");
		}else{
			$("#withdrawalsnumspan").html('');
			if($("#withdrawalsnumspan").hasClass("error")){
				$("#withdrawalsnumspan").removeClass("error");
			}
			$("#withdrawalsnumspan").addClass("focus");
		}
	}
}

/* 登录忘记密码*/
function getpwphoneform(){
	var username = $("input[name='getpwphone_user']")[0].value;
	var userphone = $("input[name='getpwphone_phone']")[0].value;
	var userverify = $("input[name='getpw_verify']")[0].value;
	var userpw = $("input[name='newpw']")[0].value;
	var userpwconfirm = $("input[name='newpwconfirm']")[0].value;
	
	if(username == '' || userphone == '' || userverify == '' || userpw == '' || userpwconfirm == ''){
		return false;
	}else{
		return true;
	}
}

//账号验证
function chekgetpwphone_user(username){
	if(username == ''){
		$("#user_getpw").html('请输入您注册的账号');
		if($("#user_getpw").hasClass("focus")){
			$("#user_getpw").removeClass("focus");
		}
		$("#user_getpw").addClass("error");
		return false;
	}else{
		Ajax.call( 'user.php?act=is_registered', 'username=' + username, registed_callbackonlogin , 'GET', 'TEXT', true, true );
		return true;
	}
}
function registed_callbackonlogin(result){
  if ( result == "true" ){
	  if($("#user_getpw").hasClass("focus")){
			$("#user_getpw").removeClass("focus");
		}
	  $("#user_getpw").addClass("error");
	  $("#user_getpw").html('您输入的账号不存在');
	  return false;
  }else{
	  $("#user_getpw").html('');
	  if($("#user_getpw").hasClass("error")){
			$("#user_getpw").removeClass("error");
		}
	  $("#user_getpw").addClass("focus");
	  return true;
  }
}

//手机号验证
function chekgetpwphone_phone(phone){
	var reg = /^1[3|5|8|7]\d{9}$/;
	if(phone == ''){
		if($("#phone_getpw").hasClass("focus")){
			$("#phone_getpw").removeClass("focus");
		}
		$("#phone_getpw").addClass("error");
		$("#phone_getpw").html('请输入您注册时的手机号');
		return false;
	}else{
		if(!reg.test(phone)){
			if($("#phone_getpw").hasClass("focus")){
				$("#phone_getpw").removeClass("focus");
			}
			$("#phone_getpw").addClass("error");
			$("#phone_getpw").html('输入的手机号不合法');
			return false;
		}else{
			Ajax.call( 'user.php?act=check_phone', 'phone=' + phone, check_phone_callbacknologin , 'GET', 'TEXT', true, true );
			return true;
		}
	}
}
function check_phone_callbacknologin(result){
	if ( result == 'ok' ){
		if($("#phone_getpw").hasClass("focus")){
			$("#phone_getpw").removeClass("focus");
		}
		$("#phone_getpw").addClass("error");
		$("#phone_getpw").html('您输入的号码不存在');
		return true;
	}else{
		if($("#phone_getpw").hasClass("error")){
			$("#phone_getpw").removeClass("error");
		}
		$("#phone_getpw").addClass("focus");
		$("#phone_getpw").html('');
		return true;
	}
}

//短信验证码验证
function chekgetpwphone_verify(verify){
	var reg = /^[0-9]{4}$/;
	if(verify == ''){
		if($("#verify_getpw").hasClass("focus")){
			$("#verify_getpw").removeClass("focus");
		}
		$("#verify_getpw").addClass("error");
		$("#verify_getpw").html('请输入您收到的验证码');
		return false;
	}else if(!reg.test(verify)){
		if($("#verify_getpw").hasClass("focus")){
			$("#verify_getpw").removeClass("focus");
		}
		$("#verify_getpw").addClass("error");
		$("#verify_getpw").html('输入的验证码不合法');
		return false;
	}else{
		Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, checkgetpw_phoneverify_callback , 'GET', 'TEXT', true, true );
	}
}
function checkgetpw_phoneverify_callback(result){
	if(result == 'false'){
		if($("#verify_getpw").hasClass("focus")){
			$("#verify_getpw").removeClass("focus");
		}
		$("#verify_getpw").addClass("error");
		$('#verify_getpw').html('验证码输入错误');
	}else{
		if($("#verify_getpw").hasClass("error")){
			$("#verify_getpw").removeClass("error");
		}
		$("#verify_getpw").addClass("focus");
		$('#verify_getpw').html('');
		return true;
	}
}

//邮箱找回密码的提交
function emailgetpwform(){
	var pwuser = $("input[name='getpwemail_user']")[0].value;
	var pwemail = $("input[name='getpwemail_email']")[0].value;
	if(chekgetpwemail_user(pwuser)&&chekgetpwemail_email(pwemail)){
		return true;
	}else{
		return false;
	}
	
}

//邮箱账户验证
function chekgetpwemail_user(username){
	if(username == ''){
		if($("#emailuser_getpw").hasClass("focus")){
			$("#emailuser_getpw").removeClass("focus");
		}
		$("#emailuser_getpw").addClass("error");
		$("#emailuser_getpw").html('请输入您注册的账号');
		return false;
	}else{
		Ajax.call( 'user.php?act=is_registered', 'username=' + username, onlogin_callback_username , 'GET', 'TEXT', true, true );
		return true;
	}
}
function onlogin_callback_username(result){
  if ( result == "true" ){
	  if($("#emailuser_getpw").hasClass("focus")){
			$("#emailuser_getpw").removeClass("focus");
		}
	  $("#emailuser_getpw").addClass("error");
	  $("#emailuser_getpw").html('您输入的账号不存在');
	  return false;
  }else{
	  if($("#emailuser_getpw").hasClass("error")){
			$("#emailuser_getpw").removeClass("error");
		}
	  $("#emailuser_getpw").addClass("focus");
	  $("#emailuser_getpw").html('');
	  return true;
  }
}
//邮箱验证
function chekgetpwemail_email(email){
	var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if(email == ''){
		if($("#emailemail_getpw").hasClass("focus")){
			$("#emailemail_getpw").removeClass("focus");
		}
		$("#emailemail_getpw").addClass("error");
		$('#emailemail_getpw').html('请输入您的邮箱账号');
		return false;
	}else{
		if(!reg.test(email)){
			if($("#emailemail_getpw").hasClass("focus")){
				$("#emailemail_getpw").removeClass("focus");
			}
			$("#emailemail_getpw").addClass("error");
			$('#emailemail_getpw').html('输入的邮箱账号不合法');
			return false;
		}else{
			Ajax.call( 'user.php?act=check_email', 'email=' + email, onlogin_callback_email , 'GET', 'TEXT', true, true );
			return true;
		}
	}
}
function onlogin_callback_email(result){
  if ( result == "false" ){
	  if($("#emailemail_getpw").hasClass("error")){
			$("#emailemail_getpw").removeClass("error");
		}
		$("#emailemail_getpw").addClass("focus");
	  $("#emailemail_getpw").html('');
	  return true;
  }else{
	  if($("#emailemail_getpw").hasClass("focus")){
			$("#emailemail_getpw").removeClass("focus");
		}
		$("#emailemail_getpw").addClass("error");
	  $("#emailemail_getpw").html('您输入的账号不存在');
	  return false;
  }
}
//新密码的验证
function chekgetpw_newpw(newpw){
	var reg = /^[0-9a-zA-Z]{3,30}$/;
	if(newpw == ''){
		if($("#newpw_getpw").hasClass("focus")){
			$("#newpw_getpw").removeClass("focus");
		}
		$("#newpw_getpw").addClass("error");
		$("#newpw_getpw").html('请输入新的密码');
		return false;
	}else{
		if(!reg.test(newpw)){
			if($("#newpw_getpw").hasClass("focus")){
				$("#newpw_getpw").removeClass("focus");
			}
			$("#newpw_getpw").addClass("error");
			$("#newpw_getpw").html('输入的密码不合法');
			return false;
		}else{
			if($("#newpw_getpw").hasClass("error")){
				$("#newpw_getpw").removeClass("error");
			}
			$("#newpw_getpw").addClass("focus");
			$("#newpw_getpw").html('');
			return true;
		}
	}
}
//新密码的确认
function chekgetpw_newpwconfirm(newpwconfirm){
	var newpw = $('#newpw').val();
	var reg = /^[0-9a-zA-Z]{3,30}$/;
	if(newpwconfirm == ''){
		if($("#newpw_getpwconfirm").hasClass("focus")){
			$("#newpw_getpwconfirm").removeClass("focus");
		}
		$("#newpw_getpwconfirm").addClass("error");
		$("#newpw_getpwconfirm").html('请输入新的密码');
		return false;
	}else{
		if(!reg.test(newpw)){
			if($("#newpw_getpwconfirm").hasClass("focus")){
				$("#newpw_getpwconfirm").removeClass("focus");
			}
			$("#newpw_getpwconfirm").addClass("error");
			$("#newpw_getpwconfirm").html('输入的密码不合法');
			return false;
		}
	}
	if(newpw != newpwconfirm){
		if($("#newpw_getpwconfirm").hasClass("focus")){
			$("#newpw_getpwconfirm").removeClass("focus");
		}
		$("#newpw_getpwconfirm").addClass("error");
		$("#newpw_getpwconfirm").html('两次密码输入不一致');
		return false;
	}else{
		if($("#newpw_getpwconfirm").hasClass("error")){
			$("#newpw_getpwconfirm").removeClass("error");
		}
		$("#newpw_getpwconfirm").addClass("focus");
		$("#newpw_getpwconfirm").html('');
		return true;
	}
}

/* 点击获取验证码*/
function getuserpw_phone()
{
	var phone = $("input[name='getpwphone_phone']")[0].value;
	Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, getpw_phoneverify_callback , 'POST', 'TEXT', true, true );
}
function getpw_phoneverify_callback(result)
{
	if(result == 'ok'){
		RemainTimegetpw();
	}else{
		if($("#verify_getpw").hasClass("focus")){
			$("#verify_getpw").removeClass("focus");
		}
		$("#verify_getpw").addClass("error");
		$('#verify_getpw').html(result);
	}
}

/*显示倒计时*/
function RemainTimegetpw(){
	
	var iTime = 60;
	var Account;
	var timenum = document.getElementById('getpwtime').value;

	if(timenum < iTime){
		iTime = timenum
	}

	var sTime="";
	if (iTime >= 0){
		if(iTime==0){
			clearTimeout(Account);
			iTime = '<a onclick=getuserpw_phone()>获取验证码</a>';
		}else{
			iTime=iTime-1;
			document.getElementById('getpwtime').value = iTime;
			Account = setTimeout("RemainTimegetpw()",1000);
		}
	}else{
		sTime='没有倒计时';
	}
	
	document.getElementById("getpwphone_time_phone").innerHTML = iTime;
	
}

