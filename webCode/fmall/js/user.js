/* $Id : user.js 4865 2007-01-31 14:04:10Z paulgao $ */

/* *
 * 修改会员信息
 */
function userEdit()
{
  var frm = document.forms['formEdit'];
  var email = frm.elements['email'].value;
  var truename = frm.elements['truename'].value;
  var idcard = frm.elements['idcard'].value;
  var msg = '';
  var reg = null;
  var passwd_answer = frm.elements['passwd_answer'] ? Utils.trim(frm.elements['passwd_answer'].value) : '';
  var sel_question =  frm.elements['sel_question'] ? Utils.trim(frm.elements['sel_question'].value) : '';

  if (email.length == 0)
  {
    msg += email_empty + '\n';
  }
  else
  {
    if ( ! (Utils.isEmail(email)))
    {
      msg += email_error + '\n';
    }
  }
  
  if(truename.length == 0)
  {
	  msg += truename_empty + '\n';
  }
  
  if(idcard.length == 0)
  {
	  msg += idcard_empty + '\n';
  }
  else
  {
	if( ! (Utils.isIdcard(idcard)))
	{
		msg += idcard_error + '\n';
	}
  }

  if (passwd_answer.length > 0 && sel_question == 0 || document.getElementById('passwd_quesetion') && passwd_answer.length == 0)
  {
    msg += no_select_question + '\n';
  }

  for (i = 7; i < frm.elements.length - 2; i++)	// 从第七项开始循环检查是否为必填项
  {
	needinput = document.getElementById(frm.elements[i].name + 'i') ? document.getElementById(frm.elements[i].name + 'i') : '';

	if (needinput != '' && frm.elements[i].value.length == 0)
	{
	  msg += '- ' + needinput.innerHTML + msg_blank + '\n';
	}
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

/*身份证实名认证*/
function truenamecheck()
{
	var frm = document.forms['formEdit'];
	var truename = frm.elements['truename_authcenter'].value;
	var idcard = frm.elements['authcenter_idcardname'].value;

	var msg = '';
	
	if(truename.length == 0)
	  {
		  msg += truename_empty + '\n';
	  }
	  
	  if(idcard.length == 0)
	  {
		  msg += idcard_empty + '\n';
	  }
	  else
	  {
		if( ! (Utils.isIdcard(idcard)))
		{
			msg += idcard_error + '\n';
		}
	  }
	  if (msg.length > 0)
	  {
	    alert(msg);
	    return false;
	  }
	  else
	  {
		Ajax.call('check_idcard.php','idcard='+ idcard + '&' + 'useruser=' + useruser + '&' + 'realname=' + truename,callback_checkidcarddiv,'POST','TEXT',true,true);
	  }
			
}


/*
 *  会员修改密码 
 */
function editPassword()
{
	var msg='';
	var oldpassword = $("input[name='old_password']")[0].value;
	var newpassword = $("input[name='new_password']")[0].value;
	var confirmpassword = $("input[name='confirm_password']")[0].value;
	if(oldpassword == ''){
		msg = '原密码不可以为空 \n';
	}
	if(newpassword == ''){
		msg += '新密码不可以为空 \n';
	}
	if(newpassword != confirmpassword){
		msg += '两次密码输入不一致 \n';
	}
	
	if(msg.length > 0){
		alert(msg);
		return false;
	}else{
		return true;
	}
}
/* 检测输入的原密码是否正确*/
function chekold_password(oldpassword)
{	
	if(oldpassword == ''){
		$('#old_password').html('请输入您的原密码');
		if($("#old_password").hasClass("focus"))
		{
			$("#old_password").removeClass("focus");
		}
		$("#old_password").addClass("error");
	}else{
		if(oldpassword.match(/^[0-9a-zA-Z]{6,30}$/)){
			Ajax.call('user.php?act=ajax_checkoldpassword','oldpassword=' + oldpassword,old_pwcallback,'POST','JSON');
		}else{
			$('#old_password').html('输入的内容不合法');
			if($("#old_password").hasClass("focus"))
			{
				$("#old_password").removeClass("focus");
			}
			$("#old_password").addClass("error");
		}
	}
}

function old_pwcallback(result)
{
	if(result > 0){
		$('#old_password').html('');
		if($("#old_password").hasClass("error"))
		{
			$("#old_password").removeClass("error");
		}
		$("#old_password").addClass("focus");
	}else{
		$('#old_password').html('原密码输入错误');
		if($("#old_password").hasClass("focus"))
		{
			$("#old_password").removeClass("focus");
		}
		$("#old_password").addClass("error");
		$('#formPassword').submit(function(){ return false;});
	}
}

function cheknew_password(newpassword)
{
	if(newpassword == ''){
		$('#new_password').html('请输入您的新密码');
		if($("#new_password").hasClass("focus"))
		{
			$("#new_password").removeClass("focus");
		}
		$("#new_password").addClass("error");
	}else{
		if(newpassword.match(/^[0-9a-zA-Z]{6,30}$/)){
			$('#new_password').html('');
			if($("#new_password").hasClass("error"))
			{
				$("#new_password").removeClass("error");
			}
			$("#new_password").addClass("focus");
		}else{
			$('#new_password').html('输入的内容不合法');
			if($("#new_password").hasClass("focus"))
			{
				$("#new_password").removeClass("focus");
			}
			$("#new_password").addClass("error");
		}
	}
}

function chekconfirm_password(confirmpassword)
{
	if(confirmpassword == ''){
		$('#confirm_password').html('请输入您的新密码');
		if($("#confirm_password").hasClass("focus"))
		{
			$("#confirm_password").removeClass("focus");
		}
		$("#confirm_password").addClass("error");
	}else{
		if(confirmpassword.match(/^[0-9a-zA-Z]{6,30}$/)){
			$('#confirm_password').html('');
			if($("#confirm_password").hasClass("error"))
			{
				$("#confirm_password").removeClass("error");
			}
			$("#confirm_password").addClass("focus");
		}else{
			$('#confirm_password').html('输入的内容不合法');
			if($("#confirm_password").hasClass("focus"))
			{
				$("#confirm_password").removeClass("focus");
			}
			$("#confirm_password").addClass("error");
		}
	}
}
/* *
 * 对会员的留言输入作处理
 */
function submitMsg()
{
  var frm         = document.forms['formMsg'];
  var msg_title   = frm.elements['msg_title'].value;
  var msg_content = frm.elements['msg_content'].value;
  var msg = '';

  if (msg_title.length == 0)
  {
    msg += msg_title_empty + '\n';
  }
  if (msg_content.length == 0)
  {
    msg += msg_content_empty + '\n'
  }

  if (msg_title.length > 200)
  {
    msg += msg_title_limit + '\n';
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

/* *
 * 会员找回密码时，对输入作处理
 */
function submitPwdInfo()
{
  var frm = document.forms['getPassword'];
  var user_name = frm.elements['user_name'].value;
  var email     = frm.elements['email'].value;

  var errorMsg = '';
  if (user_name.length == 0)
  {
    errorMsg += user_name_empty + '\n';
  }

  if (email.length == 0)
  {
    errorMsg += email_address_empty + '\n';
  }
  else
  {
    if ( ! (Utils.isEmail(email)))
    {
      errorMsg += email_address_error + '\n';
    }
  }

  if (errorMsg.length > 0)
  {
    alert(errorMsg);
    return false;
  }

  return true;
}

/* *
 * 会员找回密码时，对输入作处理
 */
function submitPwd()
{
  var frm = document.forms['getPassword2'];
  var password = frm.elements['new_password'].value;
  var confirm_password = frm.elements['confirm_password'].value;

  var errorMsg = '';
  if (password.length == 0)
  {
    errorMsg += new_password_empty + '\n';
  }

  if (confirm_password.length == 0)
  {
    errorMsg += confirm_password_empty + '\n';
  }

  if (confirm_password != password)
  {
    errorMsg += both_password_error + '\n';
  }

  if (errorMsg.length > 0)
  {
    alert(errorMsg);
    return false;
  }
  else
  {
    return true;
  }
}

/* *
 * 处理会员提交的缺货登记
 */
function addBooking()
{
  var frm  = document.forms['formBooking'];
  var goods_id = frm.elements['id'].value;
  var rec_id  = frm.elements['rec_id'].value;
  var number  = frm.elements['number'].value;
  var desc  = frm.elements['desc'].value;
  var linkman  = frm.elements['linkman'].value;
  var email  = frm.elements['email'].value;
  var tel  = frm.elements['tel'].value;
  var msg = "";

  if (number.length == 0)
  {
    msg += booking_amount_empty + '\n';
  }
  else
  {
    var reg = /^[0-9]+/;
    if ( ! reg.test(number))
    {
      msg += booking_amount_error + '\n';
    }
  }

  if (desc.length == 0)
  {
    msg += describe_empty + '\n';
  }

  if (linkman.length == 0)
  {
    msg += contact_username_empty + '\n';
  }

  if (email.length == 0)
  {
    msg += email_empty + '\n';
  }
  else
  {
    if ( ! (Utils.isEmail(email)))
    {
      msg += email_error + '\n';
    }
  }

  if (tel.length == 0)
  {
    msg += contact_phone_empty + '\n';
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }

  return true;
}

/* *
 * 会员登录
 */
function userLogin()
{
  var frm      = document.forms['formLogin'];
  var username = frm.elements['username'].value;
  var password = frm.elements['password'].value;
  var msg = '';

  if (username.length == 0)
  {
    msg += username_empty + '\n';
  }

  if (password.length == 0)
  {
    msg += password_empty + '\n';
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

function chkstr(str)
{
  for (var i = 0; i < str.length; i++)
  {
    if (str.charCodeAt(i) < 127 && !str.substr(i,1).match(/^\w+$/ig))
    {
      return false;
    }
  }
  return true;
}

function check_password( password )
{
    if ( password.length < 6 )
    {
		if($("#password_notice").hasClass("focus"))
		{
			$("#password_notice").removeClass("focus");
		}
		$("#password_notice").addClass("error");
        document.getElementById('password_notice').innerHTML = password_shorter;
    }
    else
    {
		if($("#password_notice").hasClass("error"))
		{
			$("#password_notice").removeClass("error");
		}
		$("#password_notice").addClass("focus");
		document.getElementById('password_notice').innerHTML = '';
    }
}

function check_conform_password( conform_password )
{
    password = document.getElementById('password1').value;
    
    if ( conform_password.length < 6 )
    {
		if($("#conform_password_notice").hasClass("focus"))
		{
			$("#conform_password_notice").removeClass("focus");
		}
		$("#conform_password_notice").addClass("error");
        document.getElementById('conform_password_notice').innerHTML = password_shorter;
        return false;
    }
    if ( conform_password != password )
    {
		if($("#conform_password_notice").hasClass("focus"))
		{
			$("#conform_password_notice").removeClass("focus");
		}
		$("#conform_password_notice").addClass("error");
        document.getElementById('conform_password_notice').innerHTML = confirm_password_invalid;
    }
    else
    {
		if($("#conform_password_notice").hasClass("error"))
		{
			$("#conform_password_notice").removeClass("error");
		}
		$("#conform_password_notice").addClass("focus");
		document.getElementById('conform_password_notice').innerHTML = '';
    }
}

function is_registered( username )
{
    var submit_disabled = false;
	var unlen = username.replace(/[^\x00-\xff]/g, "**").length;

    if ( username == '' )
    {
        document.getElementById('username_notice').innerHTML = msg_un_blank;
		if($("#username_notice").hasClass("focus"))
		{
			$("#username_notice").removeClass("focus");
		}
		$("#username_notice").addClass("error");
        var submit_disabled = true;
    }

    if ( !chkstr( username ) )
    {
        document.getElementById('username_notice').innerHTML = msg_un_format;
		if($("#username_notice").hasClass("focus"))
		{
			$("#username_notice").removeClass("focus");
		}
		$("#username_notice").addClass("error");
        var submit_disabled = true;
    }
    if ( unlen < 3 )
    { 
        document.getElementById('username_notice').innerHTML = username_shorter;
		if($("#username_notice").hasClass("focus"))
		{
			$("#username_notice").removeClass("focus");
		}
		$("#username_notice").addClass("error");
        var submit_disabled = true;
    }
    if ( unlen > 14 )
    {
        document.getElementById('username_notice').innerHTML = msg_un_length;
		if($("#username_notice").hasClass("focus"))
		{
			$("#username_notice").removeClass("focus");
		}
		$("#username_notice").addClass("error");
        var submit_disabled = true;
    }
    if ( submit_disabled )
    {
        document.forms['formUser'].elements['Submit'].disabled = 'disabled';
        return false;
    }
    Ajax.call( 'user.php?act=is_registered', 'username=' + username, registed_callback , 'GET', 'TEXT', true, true );
}



function registed_callback(result)
{
  if ( result == "true" )
  {
	if($("#username_notice").hasClass("error"))
	{
		$("#username_notice").removeClass("error");
	}
	$("#username_notice").addClass("focus");
	document.getElementById('username_notice').innerHTML = '';
    document.forms['formUser'].elements['Submit'].disabled = '';
  }
  else
  {
    document.getElementById('username_notice').innerHTML = msg_un_registered;
	if($("#username_notice").hasClass("focus"))
	{
		$("#username_notice").removeClass("focus");
	}
	$("#username_notice").addClass("error");
    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
  }
}

function checkEmail(email)
{
  var submit_disabled = false;
  
  if (email == '')
  {
    document.getElementById('email_notice').innerHTML = msg_email_blank;
	if($("#email_notice").hasClass("focus"))
	{
		$("#email_notice").removeClass("focus");
	}
	$("#email_notice").addClass("error");
    submit_disabled = true;
  }
  else if (!Utils.isEmail(email))
  {
    document.getElementById('email_notice').innerHTML = msg_email_format;
	if($("#email_notice").hasClass("focus"))
	{
		$("#email_notice").removeClass("focus");
	}
	$("#email_notice").addClass("error");
    submit_disabled = true;
  }
 
  if( submit_disabled )
  {
	if($("#email_notice").hasClass("focus"))
	{
		$("#email_notice").removeClass("focus");
	}
	$("#email_notice").addClass("error");
    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
    return false;
  }
  Ajax.call( 'user.php?act=check_email', 'email=' + email, check_email_callback , 'GET', 'TEXT', true, true);
}

function check_email_callback(result)
{
  if ( result == 'ok' )
  {
	if($("#email_notice").hasClass("error"))
	{
		$("#email_notice").removeClass("error");
	}
	$("#email_notice").addClass("focus");
    
    document.forms['formUser'].elements['Submit'].disabled = '';
  }
  else
  {
    document.getElementById('email_notice').innerHTML = msg_email_registered;
	if($("#email_notice").hasClass("focus"))
	{
		$("#email_notice").removeClass("focus");
	}
	$("#email_notice").addClass("error");
    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
  }
}


/*注册时手机号码的检验*/
function checkPhone(phone)
{
	var submit_disabled = false;
	
	if (phone == '')
	  {
	    document.getElementById('phone_notice').innerHTML = '手机号不能为空';
		if($("#phone_notice").hasClass("focus"))
		{
			$("#phone_notice").removeClass("focus");
		}
		$("#phone_notice").addClass("error");
	    submit_disabled = true;
	  }
	  else if (!Utils.isTel(phone))
	  {
	    document.getElementById('phone_notice').innerHTML = '手机号格式不正确';
		if($("#phone_notice").hasClass("focus"))
		{
			$("#phone_notice").removeClass("focus");
		}
		$("#phone_notice").addClass("error");
	    submit_disabled = true;
	  }
	 
	  if( submit_disabled )
	  {
		if($("#phone_notice").hasClass("focus"))
		{
			$("#phone_notice").removeClass("focus");
		}
		$("#phone_notice").addClass("error");
	    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
	    return false;
	  }
	Ajax.call( 'user.php?act=check_phone', 'phone=' + phone, check_phone_callback , 'GET', 'TEXT', true, true );
}
function check_phone_callback(result){
	if ( result == 'ok' )
	  {
		if($("#phone_notice").hasClass("error"))
		{
			$("#phone_notice").removeClass("error");
		}
		$("#phone_notice").addClass("focus");
		document.getElementById('phone_notice').innerHTML = '';
	    document.forms['formUser'].elements['Submit'].disabled = '';
	  }
	  else
	  {
	    document.getElementById('phone_notice').innerHTML = '手机号已存在,请重新输入';
		if($("#phone_notice").hasClass("focus"))
		{
			$("#phone_notice").removeClass("focus");
		}
		$("#phone_notice").addClass("error");
	    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
	  }
}
/* 点击获取验证码*/
function getphoneverify()
{
	var phone = document.getElementById('phone').value;
	Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + phone, get_phoneverify_callback , 'POST', 'TEXT', true, true );
}
function get_phoneverify_callback(result)
{
	alert(result);
	if ( result == 'ok' )
	  { 
		RemainTime();
	    document.forms['formUser'].elements['Submit'].disabled = '';
	  }
	  else
	  {
	    document.getElementById('verify_notice').innerHTML = '验证码发送失败';
	    document.forms['formUser'].elements['Submit'].disabled = 'disabled';
	  }
}
/*手机短信验证码的验证*/
function checkphoneverify(phoneverify)
{
	var submit_disabled = false;
	if (phoneverify == '')
	  {
	    document.getElementById('verify_notice').innerHTML = '验证码不能为空';
		if($("#verify_notice").hasClass("focus"))
		{
			$("#verify_notice").removeClass("focus");
		}
		$("#verify_notice").addClass("verifyerror");
	  }
	  else if (!Utils.isTelverify(phoneverify))
	  {
	    document.getElementById('verify_notice').innerHTML = '验证码格式不正确';
		if($("#verify_notice").hasClass("focus"))
		{
			$("#verify_notice").removeClass("focus");
		}
		$("#verify_notice").addClass("verifyerror");
	  }
	 
	  if( submit_disabled )
	  {
		if($("#verify_notice").hasClass("focus"))
		{
			$("#verify_notice").removeClass("focus");
		}
		$("#verify_notice").addClass("verifyerror");
	  }
	 Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify, check_phoneverify_callback , 'GET', 'TEXT', true, true );
}
function check_phoneverify_callback(result)
{
	if ( result == 'ok' )
	  {
		if($("#verify_notice").hasClass("error"))
		{
			$("#verify_notice").removeClass("error");
		}
		$("#verify_notice").addClass("verifyfocus");
		document.getElementById('verify_notice').innerHTML = ''
	  }
	  else
	  {
	    document.getElementById('verify_notice').innerHTML = '输入错误';
		if($("#verify_notice").hasClass("verifyfocus"))
		{
			$("#verify_notice").removeClass("verifyfocus");
		}
		$("#verify_notice").addClass("verifyerror");
		$("#phoneverify").val(' ');
	  }
}
/* *
 * 处理注册用户
 */
function sub_register()
{
	
	var username  = $("#username").val();
	var password  = $("#password1").val();
	var confirm_password  = $("#conform_password").val();
	var mobile_phone  = $("#phone").val();
	var phone_verify  = $("#phoneverify").val();
	
	if( username == ''){
		alert('用户名不可以为空！');
		return false;
	}
	if( password == ''){
		alert('密码不可以为空！');
		return false;
	}
	if( password != confirm_password){
		alert('两次密码输入不一致！');
		return false;
	}
	if( mobile_phone == ''){
		alert('手机号不可以为空！');
		return false;
	}
	if( phone_verify == ''){
		alert('短信验证码不可以为空！');
		return false;
	}
	return true;
 
}


/* *
 * 用户中心订单保存地址信息
 */
function saveOrderAddress(id)
{
  var frm           = document.forms['formAddress'];
  var consignee     = frm.elements['consignee'].value;
  var email         = frm.elements['email'].value;
  var address       = frm.elements['address'].value;
  var zipcode       = frm.elements['zipcode'].value;
  var tel           = frm.elements['tel'].value;
  var mobile        = frm.elements['mobile'].value;
  var sign_building = frm.elements['sign_building'].value;
  var best_time     = frm.elements['best_time'].value;

  if (id == 0)
  {
    alert(current_ss_not_unshipped);
    return false;
  }
  var msg = '';
  if (address.length == 0)
  {
    msg += address_name_not_null + "\n";
  }
  if (consignee.length == 0)
  {
    msg += consignee_not_null + "\n";
  }

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

/* *
 * 会员余额申请
 */
function submitSurplus()
{
  var frm            = document.forms['formSurplus'];
  var surplus_type   = frm.elements['surplus_type'].value;
  var surplus_amount = frm.elements['amount'].value;//充值提现金额
  var process_notic  = frm.elements['moneypassword'].value;//提现密码
  var payment_id     = 0;
  var msg = '';

  if (surplus_amount.length == 0 )
  {
    msg += '请输入您要操作的金额数量！' + '\n';
  }
  else
  {
    var reg = /^[\.0-9]+/;
    if ( ! reg.test(surplus_amount))
    {
      msg += '您输入的金额数量格式不正确！' + '\n';
    }
  }
  
  if(surplus_type == 1)
  {
	  if (process_notic.length == 0)
	  {
	    msg += '请输入您的提现密码';
	  }
	  else
	  {
		  var reg = /[a-zA-Z0-9]{8,18}/;
		  if ( ! reg.test(process_notic))
	      {
			  msg += '您输入的密码格式不正确！';
	      }
	  }
	  
  }
  

  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
	  return true;
  }

  /*if (surplus_type == 0)
  {
    for (i = 0; i < frm.elements.length ; i ++)
    {
      if (frm.elements[i].name=="payment_id" && frm.elements[i].checked)
      {
        payment_id = frm.elements[i].value;
        break;
      }
    }

    if (payment_id == 0)
    {
      alert(payment_empty);
      return false;
    }
  }*/

  //return true;
}

/* *
 *  处理用户添加一个红包
 */
function addBonus()
{
  var frm      = document.forms['addBouns'];
  var bonus_sn = frm.elements['bonus_sn'].value;

  if (bonus_sn.length == 0)
  {
    alert(bonus_sn_empty);
    return false;
  }
  else
  {
    var reg = /^[0-9]{10}$/;
    if ( ! reg.test(bonus_sn))
    {
      alert(bonus_sn_error);
      return false;
    }
  }

  return true;
}

/* *
 *  合并订单检查
 */
function mergeOrder()
{
  if (!confirm(confirm_merge))
  {
    return false;
  }

  var frm        = document.forms['formOrder'];
  var from_order = frm.elements['from_order'].value;
  var to_order   = frm.elements['to_order'].value;
  var msg = '';

  if (from_order == 0)
  {
    msg += from_order_empty + '\n';
  }
  if (to_order == 0)
  {
    msg += to_order_empty + '\n';
  }
  else if (to_order == from_order)
  {
    msg += order_same + '\n';
  }
  if (msg.length > 0)
  {
    alert(msg);
    return false;
  }
  else
  {
    return true;
  }
}

/* *
 * 订单中的商品返回购物车
 * @param       int     orderId     订单号
 */
function returnToCart(orderId)
{
  Ajax.call('user.php?act=return_to_cart', 'order_id=' + orderId, returnToCartResponse, 'POST', 'JSON');
}

function returnToCartResponse(result)
{
  alert(result.message);
}

/* *
 * 检测密码强度
 * @param       string     pwd     密码
 */
function checkIntensity(pwd)
{
  var Mcolor = "#FFF",Lcolor = "#FFF",Hcolor = "#FFF";
  var m=0;

  var Modes = 0;
  for (i=0; i<pwd.length; i++)
  {
    var charType = 0;
    var t = pwd.charCodeAt(i);
    if (t>=48 && t <=57)
    {
      charType = 1;
    }
    else if (t>=65 && t <=90)
    {
      charType = 2;
    }
    else if (t>=97 && t <=122)
      charType = 4;
    else
      charType = 4;
    Modes |= charType;
  }

  for (i=0;i<4;i++)
  {
    if (Modes & 1) m++;
      Modes>>>=1;
  }

  if (pwd.length<=4)
  {
    m = 1;
  }

  switch(m)
  {
    case 1 :
	  var a = $("#pwdstrength").attr("class");
	  $("#pwdstrength").removeClass(a);

	  $("#pwdstrength").addClass("strengthA");

    break;
    case 2 :
      var a = $("#pwdstrength").attr("class");
	  $("#pwdstrength").removeClass(a);
	  $("#pwdstrength").addClass("strengthB");
    break;
    case 3 :
     var a = $("#pwdstrength").attr("class");
	  $("#pwdstrength").removeClass(a);
	  $("#pwdstrength").addClass("strengthC");
    break;
    case 4 :
      var a = $("#pwdstrength").attr("class");
	  $("#pwdstrength").removeClass(a);
	  $("#pwdstrength").addClass("strengthC");
    break;
    default :
      var a = $("#pwdstrength").attr("class");
	  $("#pwdstrength").removeClass(a);
	  $("#pwdstrength").addClass("strengthA");
    break;
  }

  if (document.getElementById("pwd_lower"))
  {
    document.getElementById("pwd_lower").style.borderBottom  = Lcolor;
    document.getElementById("pwd_middle").style.borderBottom = Mcolor;
    document.getElementById("pwd_high").style.borderBottom   = Hcolor;
  }


}

function changeType(obj)
{
  if (obj.getAttribute("min") && document.getElementById("ECS_AMOUNT"))
  {
    document.getElementById("ECS_AMOUNT").disabled = false;
    document.getElementById("ECS_AMOUNT").value = obj.getAttribute("min");
    if (document.getElementById("ECS_NOTICE") && obj.getAttribute("to") && obj.getAttribute('fee'))
    {
      var fee = parseInt(obj.getAttribute("fee"));
      var to = parseInt(obj.getAttribute("to"));
      if (fee < 0)
      {
        to = to + fee * 2;
      }
      document.getElementById("ECS_NOTICE").innerHTML = notice_result + to;
    }
  }
}

function calResult()
{
  var amount = document.getElementById("ECS_AMOUNT").value;
  var notice = document.getElementById("ECS_NOTICE");

  reg = /^\d+$/;
  if (!reg.test(amount))
  {
    notice.innerHTML = notice_not_int;
    return;
  }
  amount = parseInt(amount);
  var frm = document.forms['transform'];
  for(i=0; i < frm.elements['type'].length; i++)
  {
    if (frm.elements['type'][i].checked)
    {
      var min = parseInt(frm.elements['type'][i].getAttribute("min"));
      var to = parseInt(frm.elements['type'][i].getAttribute("to"));
      var fee = parseInt(frm.elements['type'][i].getAttribute("fee"));
      var result = 0;
      if (amount < min)
      {
        notice.innerHTML = notice_overflow + min;
        return;
      }

      if (fee > 0)
      {
        result = (amount - fee) * to / (min -fee);
      }
      else
      {
        //result = (amount + fee* min /(to+fee)) * (to + fee) / min ;
        result = amount * (to + fee) / min + fee;
      }

      notice.innerHTML = notice_result + parseInt(result + 0.5);
    }
  }
}
