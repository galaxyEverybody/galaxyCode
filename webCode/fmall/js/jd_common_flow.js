/*******init start*****/
var httpUrl="http://"+location.hostname;
/*******init end*****/

/*****宽窄屏幕自适应****/
$(function(){
	/*头部客户服务鼠标移入效果*/
	$(".fr .menu").mouseenter(function(){
		$(this).addClass("hover");
	})
	
	$(".fr .menu").mouseleave(function(){
		$(this).removeClass("hover");
	})
	
	$("#sortlist_atc h4").click(function(){
		if($(this).parents(".article_list").hasClass("current"))	
		{
			$(this).parents(".article_list").removeClass("current")
		}
		else
		{
			$(this).parents(".article_list").addClass("current")
		}
	})
	
	/*头部我的京东鼠标移入效果*/
	$("#my360buy-2013").mouseenter(function(){
		$(this).find("dl").addClass("hover");
	})
	
	$("#my360buy-2013").mouseleave(function(){
		$(this).find("dl").removeClass("hover");
	})
	
	/*头部购物车鼠标移入效果*/
	$(".settleup-2013").mouseenter(function(){
		$(this).find("dl").addClass("hover");
	})
	
	$(".settleup-2013").mouseleave(function(){
		$(this).find("dl").removeClass("hover");
	})
	
	/*头部导航分类鼠标移入效果*/
	$("#_JD_ALLSORT .item").mouseenter(function(){
		$(this).addClass("hover");
	})
	
	$("#_JD_ALLSORT .item").mouseleave(function(){
		$(this).removeClass("hover");
	})
	
	$(".no_index").click(function(){
		$(this).addClass("hover");
	})
	
	$(".no_index").mouseleave(function(){
		$(this).removeClass("hover");
	})
	/* 微信下拉效果*/
	$("#xinliang-jd").mouseenter(function(){
		$("#weixinshow").slideDown();
	}).mouseleave(function(){
		$("#weixinshow").slideUp();
	});
	/* 用户中心左侧菜单类点击*/
	$("#myjd dt").click(function(){
		
		var ima = $(this).css("background-image");
		var ima1 = ima.substr(-18);
		var path = window.document.location.href;
		var pathnum = path.lastIndexOf('/');
		var path1 = path.substr(0,pathnum);

		if(ima1 == 'user_clickone.gif)')
		{
			$(this).css("background-image","url("+path1+"/themes/jingdong2015/images/user_clicktwo.gif)");
		}
		else
		{
			$(this).css("background-image","url("+path1+"/themes/jingdong2015/images/user_clickone.gif)");
		}
		
		if($(this).parents("dl").hasClass("close"))
		{
			$(this).parents("dl").removeClass("close");
		}
		else
		{
			$(this).parents("dl").addClass("close");
		}
	})
	
	var a = $(".backpanel").offset();
	var b = ($(window).width()-$(".backpanel").width())/2;

	var c = Math.round(b)+$(".backpanel").width();
	
	$(".backpanel-inner").css("left",c);
})


/*收藏夹功能*/
function bookmark() {
    var c;
    var a = /^http{1}s{0,1}:\/\/([a-z0-9_\\-]+\.)+(yihaodian|1mall|111|yhd){1}\.(com|com\.cn){1}\?(.+)+$/;
    if (a.test(httpUrl)) {
        c = "&ref=favorite"
    } else {
        c = "?ref=favorite"
    }
    var d = httpUrl + c;
    if ('undefined' == typeof (document.body.style.maxHeight)) {
        d = httpUrl
    }
    try {
        if (document.all) {
            window.external.AddFavorite(d, favorite)
        } else {
            try {
                window.sidebar.addPanel(favorite, d, "")
            } catch(b) {
                alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加")
            }
        }
    } catch(b) {
        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加")
    }
}
