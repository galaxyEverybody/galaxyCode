/*
 * ==================
 * 借款信息的验证
 * =================
 */
function carshowhidcon(){
	$("#borrow_car_term").show(500);
	$("#borrow_house_term").hide(500);
	$("#category_car").removeClass("clickhouse_car");
	$("#category_car").addClass("category_car");
	$("#category_house").removeClass("clickhouse");
	$("#category_house").addClass("category_house");
}
function houseshowhidcon(){
	$("#borrow_house_term").show(500);
	$("#borrow_car_term").hide(500);	
	
	$("#category_house").removeClass("category_house");
	$("#category_house").addClass("clickhouse");
	$("#category_car").removeClass("category_car");
	$("#category_car").addClass("clickhouse_car");
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
 * 车辆借款金额的验证
 */
function borrowchenum(borrownum){
	if(borrownum ==''){
		$('#borrownum').html('请输入您的借款金额');
	}else{
		if(!Utils.isInt(borrownum)){
			$('#borrownum').html('输入的金额不合法');
		}else{
			$('#borrownum').html('');
		}
	}
}
/*
 * 房屋借款金额的验证
 */
function borrowhousechenum(borrownum){
	if(borrownum ==''){
		$('#houseborrownum').html('请输入您的借款金额');
	}else{
		if(!Utils.isNumber(borrownum)){
			$('#houseborrownum').html('输入的金额不合法');
		}else{
			$('#houseborrownum').html('');
		}
	}
}
/*
 * 车辆购置金额的验证
 */
function borrowchebuynum(borrowbuynum){
	reg = /^((\d+\.\d*[1-9]\d*)|(\d*[1-9]\d*\.\d+)|(\d*[1-9]\d*))$/;
	if(borrowbuynum ==''){
		$('#borrowbuynum').html('请输入您的购车金额');
	}else{
		if(reg.test(borrowbuynum)){
			$('#borrowbuynum').html('');
		}else{
			$('#borrowbuynum').html('输入的金额不合法');
		}
	}
}
/*
 * 借款时间的验证
 */
function borrowchetime(borrowtime){
	if(borrowtime ==''){
		$('#borrowtime').html('请输入您的借款期限');
	}else{
		if(!Utils.isInt(borrowtime)){
			$('#borrowtime').html('输入的时间不合法');
		}else{
			$('#borrowtime').html('');
		}
	}
}
/*
 * 车辆借款姓名的验证
 */
function borrowchename(carname){
	var reg=/^[\u2E80-\u9FFF]+$/; 
	if(carname ==''){
		$('#borrowname').html('请输入您的真实姓名');
	}else{
		if(!reg.test(carname)){
			$('#borrowname').html('输入的姓名不合法');
		}else{
			$('#borrowname').html('');
		}
	}
}
/*
 * 房屋借款姓名的验证
 */
function borrowhousechename(carname){
	var reg=/^[\u2E80-\u9FFF]+$/; 
	if(carname ==''){
		$('#housename').html('请输入您的真实姓名');
	}else{
		if(!reg.test(carname)){
			$('#housename').html('输入的姓名不合法');
		}else{
			$('#housename').html('');
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
		$("#borrow_liveadd").html('请输入您车辆的所属地');
	}else{
		$("#borrow_liveadd").html('');
	}
}

/*
 * 借款人车辆信息提交的验证
 */
function borrow_carinfo_form(){
	
	var carname = $("input[name='carname']")[0].value;
	var carphone = $("input[name='carphone']")[0].value;
	var carborrownum = $("input[name='carborrownum']")[0].value;
	var cartime = $("input[name = cartime]")[0].value;
	var carnum = $("input[name = carnum]")[0].value;
	var caraddress = $("input[name = caraddress]")[0].value;
	
	if(carname == ''){
		$("#borrowname").html('请输入您的真实姓名');
		return false;
	}
	if(carphone == ''){
		$("#borrowphone").html('请输入您的手机号码');
		return false;
	}
	if(carborrownum == ''){
		$("#borrownum").html('请输入借款金额');
		return false;
	}
	if(cartime == ''){
		$("#borrowtime").html('请输入您的借款期限');
		return false;
	}
	if(carnum == ''){
		$("#borrowbuynum").html('请输入车辆购置价格');
		return false;
	}
	if(caraddress == ''){
		return false;
	}
	
	
	return true;
}

/*
 * 借款人车辆信息提交的验证
 */
function borrow_houseinfo_form(){
	
	var housename = $("input[name='housename']")[0].value;
	var housephone = $("input[name='housephone']")[0].value;
	var houseborrownum = $("input[name='houseborrownum']")[0].value;
	var house_use = $("input[name = house_use]")[0].value;
	
	if(housename == ''){
		$("#housename").html('请输入您的真实姓名');
		return false;
	}
	if(housephone == ''){
		$("#housephone").html('请输入您的手机号码');
		return false;
	}
	if(houseborrownum == ''){
		$("#houseborrownum").html('请输入借款金额');
		return false;
	}
	if(house_use == ''){
		$("#house_use").html('请输入您的借款用途');
		return false;
	}
	

	return true;
}

/*
 * 车辆借款人手机号的验证
 */
function borrowchephone(borrowphone){
	reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
	if(borrowphone ==''){
		$('#borrowphone').html('请输入您的手机号');
	}else{
		if(reg.test(borrowphone)){
			$('#borrowphone').html('');
		}else{
			$('#borrowphone').html('手机号不合法');
		}
	}
}
/*
 * 房屋借款人手机号的验证
 */
function borrowhousechephone(borrowphone){
	reg = /^0?1[3|4|5|8][0-9]\d{8}$/;
	if(borrowphone ==''){
		$('#housephone').html('请输入您的手机号');
	}else{
		if(reg.test(borrowphone)){
			$('#housephone').html('');
		}else{
			$('#housephone').html('手机号不合法');
		}
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