/*
 * ==================
 * 借款信息的验证
 * =================
 */
function carshowhidcon(){
	$("#borrow_car_term").slideDown(500);
	$("#borrow_house_term").hide();
	$("#borrow_credit_term").hide();
	$("#category_car_input").prop("checked",true);
	$("#category_house_input").prop("checked",false);
	$("#category_credit_input").prop("checked",false);
}
function houseshowhidcon(){
	$("#borrow_house_term").slideDown(500);
	$("#borrow_car_term").hide();
	$("#borrow_credit_term").hide();
	$("#category_house_input").prop("checked",true);
	$("#category_car_input").prop("checked",false);
	$("#category_credit_input").prop("checked",false);
}
function creditshowhidcon(){
	$("#borrow_credit_term").slideDown(500);
	$("#borrow_car_term").hide();
	$("#borrow_house_term").hide();
	$("#category_credit_input").prop("checked",true);
	$("#category_house_input").prop("checked",false);
	$("#category_car_input").prop("checked",false);
}

/*
 * 处理借款信息
 */
function borrow_money()
{
	var loantitle = $("input[name='loantitle']")[0].value;
	var loannum = $("input[name='loannum']")[0].value;
	var loandescription = $("#loantextarea").val();

	if(loannum == ''){
		$("#borrownum").html('借款金额不可以为空');
		return false;
	}else{
		if(!Utils.isNumber(loannum)){
			$("#borrownum").html('借款金额格式不正确');
			return false;
		}
	}
	if(loantitle == ''){
		$("#borrowtitle").html('请输入您借款的需求');
		return false;
	}
	if(loandescription == ''){
		$("#borrowdescription").html('请输入您的借款需求');
		return false;
	}

	return true;
}
/*
 * 借款金额的验证
 */
function borrowchenum(borrownum){
	if(borrownum ==''){
		$('#borrownum').html('请输入您的借款金额');
	}else{
		if(!Utils.isInt(borrownum)){
			$('#borrownum').html('输入的格式不正确');
		}else{
			$('#borrowname').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}
/*
 * 借款姓名的验证
 */
function borrowchename(borrowname){
	if(borrowname ==''){
		$('#borrowname').html('-请输入您的真实姓名');
	}else{
		if(borrowname.match(/[^\u4e00-\u9fa5]/)){
			$('#borrowname').html('-输入的格式不正确');
		}else{
			$('#borrowname').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//验证身份证号码
function borrowcheidcard(card){
	var reg2 = /^[1-9]{1}[0-9]{14}$|^[1-9]{1}[0-9]{16}([0-9]|[xX])$/;
	var useruser = $("#useruser").val();
	var truename = $("#usertruename").val();

	if(card == ''){
		$("#borrow_idcard").html('-请输入您的身份证号码');
	}else{
		if(!Utils.isIdcard(card)){
			$("#borrow_idcard").html('-您输入的身份证号码不合法');
		}else{
			Ajax.call('check_idcard.php','idcard='+ card + '&' + 'useruser=' + useruser + '&' + 'realname=' + truename,callback_cheidcard,'POST','TEXT',true,true);
		}
	}
}

function callback_cheidcard(result){
	var result = eval("("+result+")");
	
	if(result.status == '1'){
		$('#borrow_idcard').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
	}else if(result.status == '2'){
		$("#borrow_idcard").html('-您的认证次数超过限制，请24小时之后再进行提交');
	}else{
		$("#borrow_idcard").html('-您输入的身份证号码与姓名不符');
	}
}

//验证年龄
function borrowage(age){
	if(age == ''){
		$("#borrow_age").html('-请输入您的年龄');
	}else{
		if(age <22 || age> 55){
			$("#borrow_age").html('-您输入的年龄不合法');
		}else{
			$('#borrow_age').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

/* 居住地址的验证*/
function borrowliveaddress(liveadd){
	if(liveadd == ''){
		$("#borrow_liveadd").html('-请输入您现在的居住地');
	}else{
		$('#borrow_liveadd').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
	}
}

//邮编的验证
function borrowzipcode(zipcode){
	if(zipcode == ''){
		$("#borrow_zip").html('-请输入您居住地的邮编');
	}else{
		if(!Utils.isInt(zipcode)){
			$("#borrow_zip").html('-您输入的邮编不合法');
		}else{
			$('#borrow_zip').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//最高学历的验证
function borrowcheeducational(educational){
	if(educational == ''){
		$("#borroweducational").html('-请输入您的最高学历');
	}else{
		if(educational.match(/[^\u4e00-\u9fa5]/)){
			$("#borroweducational").html('-您输入的不合法');
		}else{
			$('#borroweducational').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//毕业院校的验证
function borrowchegraduate(graduate){
	if(graduate == ''){
		$("#borrowgraduate").html('-请输入您的毕业院校');
	}else{
		if(graduate.match(/[^\u4e00-\u9fa5]/)){
			$("#borrowgraduate").html('-您输入的不合法');
		}else{
			$('#borrowgraduate').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//亲属与您的关系的验证
function borrowchefilination(filination){
	if(filination == ''){
		$("#borrowfilination").html('-请输入与您的关系');
	}else{
		if(filination.match(/[^\u4e00-\u9fa5]/)){
			$("#borrowfilination").html('-您输入的不合法');
		}else{
			$('#borrowfilination').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//亲属姓名与您的关系的验证
function borrowcherelatename(relatename){
	if(relatename == ''){
		$("#borrowrelatename").html('-请输入您直系亲属的姓名');
	}else{
		if(relatename.match(/[^\u4e00-\u9fa5]/)){
			$("#borrowrelatename").html('-您输入的姓名不合法');
		}else{
			$('#borrowrelatename').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//亲属电话与您的关系的验证
function borrowcherelatephone(relatephone){
	if(relatephone == ''){
		$("#borrowrelatephone").html('-请输入您直系亲属的电话');
	}else{
		if(!Utils.isTel(relatephone)){
			$("#borrowrelatephone").html('-您输入的手机号不合法');
		}else{
			$('#borrowrelatephone').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//其它与您的关系的验证
function borrowcheotherfilination(otherfilination){
	if(otherfilination == ''){
		$("#borrowotherfilination").html('-请输入与您的关系');
	}else{
		if(otherfilination.match(/[^\u4e00-\u9fa5]/)){
			$("#borrowotherfilination").html('-您输入的不合法');
		}else{
			$('#borrowotherfilination').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//其它姓名与您的关系的验证
function borrowcheothername(othername){
	if(othername == ''){
		$("#borrowothername").html('-请输入他的姓名');
	}else{
		if(othername.match(/[^\u4e00-\u9fa5]/)){
			$("#borrowothername").html('-您输入的姓名不合法');
		}else{
			$('#borrowothername').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

//其它电话与您的关系的验证
function borrowcheotherphone(otherphone){
	if(otherphone == ''){
		$("#borrowotherphone").html('-请输入他的手机号');
	}else{
		if(!Utils.isTel(otherphone)){
			$("#borrowotherphone").html('-您输入的手机号不合法');
		}else{
			$('#borrowotherphone').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
		}
	}
}

/*
 * 借款人基本信息提交的验证
 */
function borrow_userinfo_form(){
	
	var truename = $("input[name='truename']")[0].value;
	var idcard = $("input[name='idcard']")[0].value;
	var phone = $("input[name='phone']")[0].value;
	var sex = $("input[name = sex]")[0].value;
	var age = $("input[name = age]")[0].value;
	var liveaddress = $("input[name = liveaddress]")[0].value;
	var zipcode = $("input[name = zipcode]")[0].value;
	
	if(truename == ''){
		$("#borrowname").html('-请输入您的真实姓名');
		return false;
	}
	if(idcard == ''){
		$("#borrow_idcard").html('-请输入您的身份证号码');
		return false;
	}
	if(phone == ''){
		$("#borrowphone").html('-请输入您的手机号码');
		return false;
	}
	if(sex == ''){
		$("#borrow_sex").html('-请选择您的性别');
		return false;
	}
	if(age == ''){
		$("#borrow_age").html('-请输入您的年龄');
		return false;
	}
	if(liveaddress == ''){
		$("#borrow_liveadd").html('-请输入您现在的居住地');
		return false;
	}
	if(zipcode == ''){
		$("#borrow_zip").html('-请输入您居住地的邮编');
		return false;
	}
	
	return true;
}

/*
 * 借款人手机号的验证
 */
function borrowchephone(borrowphone){
	if(borrowphone ==''){
		$('#borrowphone').html('-请输入您的手机号');
	}else{
		if(!Utils.isTel(borrowphone)){
			$('#borrowphone').html('-手机号格式不正确');
		}else{
			Ajax.call( 'user.php?act=get_phoneverify', 'phone=' + borrowphone,borrow_phone_callback, 'GET', 'TEXT', true, true );
		}
	}
}
function borrow_phone_callback(result){
	if(result == 'ok'){
		$('#borrowphone').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
	}else{
		$('#borrowphone').html('输入的手机号不正确请重新输入');
	}
}
/*
 * 借款短信验证码的验证
 */
function borrowcheverify(phoneverify){
	if(phoneverify ==''){
		$('#phoneverify').html('请输入您收到的验证码');
	}else{
		var reg=/[0-9]{4}/;
		if(!reg.test(phoneverify)){
			$('#phoneverify').html('<img src="themes/jingdong2015/images/borrow_error.gif">输入的格式不正确');
		}else{
			Ajax.call( 'user.php?act=check_phoneverify', 'phoneverify=' + phoneverify,borrow_verify_callback, 'GET', 'TEXT', true, true );
		}
	}
}
function borrow_verify_callback(result){
	if(result == 'ok'){
		$('#phoneverify').html('<img src="themes/jingdong2015/images/borrow_right.gif">');
	}else{
		$('#phoneverify').html('验证码输入错误');
	}
}

/*
 *信用信息的图片上传信息
 */

function insertcardrightTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pcardrightTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadcardrightshow(){
	$('#uploadcardrightdiv').slideToggle(500);
}

function uploadcardrighthide(){
	$('#uploadcardrightdiv').slideToggle(500);
}

function insertcardleftTitle(tValue){ 
	   var t1 = tValue.lastIndexOf("\\");  
	   var t2 = tValue.lastIndexOf(".");  
	   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
		   $('#pcardleftTitle').html(tValue.substring(t1 + 1, t2));
	   }
	}
	
function uploadcardleftshow(){
	$('#uploadcardleftdiv').slideToggle(500);
}

function uploadcardlefthide(){
	$('#uploadcardleftdiv').slideToggle(500);
}

function insertcardheadTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pcardheadTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadcardheadshow(){
	$('#uploadcardheaddiv').slideToggle(500);
}

function uploadcardheadhide(){
	$('#uploadcardheaddiv').slideToggle(500);
}

function insertcontractTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pcontractTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadcontractshow(){
	$('#uploadcontractdiv').slideToggle(500);
}

function uploadcontracthide(){
	$('#uploadcontractdiv').slideToggle(500);
}

function insertcertificationTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pcertificationTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadcertificationshow(){
	$('#uploadcertificationdiv').slideToggle(500);
}

function uploadcertificationhide(){
	$('#uploadcertificationdiv').slideToggle(500);
}

function insertworkcertificationTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pworkcertificationTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadworkcertificationshow(){
	$('#uploadworkcertificationdiv').slideToggle(500);
}

function uploadworkcertificationhide(){
	$('#uploadworkcertificationdiv').slideToggle(500);
}

function insertproveTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pproveTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadproveshow(){
	$('#uploadprovediv').slideToggle(500);
}

function uploadprovehide(){
	$('#uploadprovediv').slideToggle(500);
}

function insertbankproveTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pbankproveTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadbankproveshow(){
	$('#uploadbankprovediv').slideToggle(500);
}

function uploadbankprovehide(){
	$('#uploadbankprovediv').slideToggle(500);
}

function insertcomscreenTitle(tValue){ 
   var t1 = tValue.lastIndexOf("\\");  
   var t2 = tValue.lastIndexOf(".");  
   if(t1 >= 0 && t1 < t2 && t1 < tValue.length){
	   $('#pcomscreenTitle').html(tValue.substring(t1 + 1, t2));
   }
}

function uploadcomscreenshow(){
	$('#uploadcomscreendiv').slideToggle(500);
}

function uploadcomscreenhide(){
	$('#uploadcomscreendiv').slideToggle(500);
}