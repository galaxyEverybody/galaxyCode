<?php exit;?>a:3:{s:8:"template";a:11:{i:0;s:56:"/home/www/default/fmallOld/themes/jingdong2015/index.dwt";i:1;s:76:"/home/www/default/fmallOld/themes/jingdong2015/library/page_header_index.lbi";i:2;s:67:"/home/www/default/fmallOld/themes/jingdong2015/library/index_ad.lbi";i:3;s:71:"/home/www/default/fmallOld/themes/jingdong2015/library/cat_articles.lbi";i:4;s:70:"/home/www/default/fmallOld/themes/jingdong2015/library/ad_position.lbi";i:5;s:72:"/home/www/default/fmallOld/themes/jingdong2015/library/invoice_query.lbi";i:6;s:70:"/home/www/default/fmallOld/themes/jingdong2015/library/order_query.lbi";i:7;s:68:"/home/www/default/fmallOld/themes/jingdong2015/library/vote_list.lbi";i:8;s:68:"/home/www/default/fmallOld/themes/jingdong2015/library/cat_goods.lbi";i:9;s:69:"/home/www/default/fmallOld/themes/jingdong2015/library/help_index.lbi";i:10;s:70:"/home/www/default/fmallOld/themes/jingdong2015/library/page_footer.lbi";}s:7:"expires";i:1436458594;s:8:"maketime";i:1436454994;}<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="Keywords" content="网上购物,网上商城,手机,笔记本,电脑,MP3,CD,VCD,DV,相机,数码,配件,手表,存储卡,京东商城" />
<meta name="Description" content="京东JD.COM-专业的综合网上购物商城，在线销售家电、数码通讯、电脑、家居百货、服装服饰、母婴、图书、食品、在线旅游等数万个品牌千万种优质商品。便捷、诚信的服务，为您提供愉悦的网上商城购物体验!" />
<title>京东网上商城-综合网购首选（JD.COM）-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！ - Powered by ECShop</title>
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="themes/jingdong2015/style.css" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|京东网上商城-综合网购首选（JD.COM）-正品低价、品质保障、货到付款、配送及时、放心服务、轻松购物！ - Powered by ECShop" href="feed.php" />
<script type="text/javascript" src="js/common.js"></script><script type="text/javascript" src="js/index.js"></script></head>
<body>
<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script><script type="text/javascript" src="js/jquery.json.js"></script><script type="text/javascript" src="js/jd_common.js"></script><script type="text/javascript" src="js/easydialog.min.js"></script><script type="text/javascript" src="js/transport_jquery.js"></script><script type="text/javascript" src="js/utils.js"></script><script type="text/javascript" src="js/jquery.SuperSlide.js"></script><div id="shortcut-2013">
	<div class="w">
    	<ul class="fr lh">
        	554fcae493e564ee0dc75bdf2ebf94camember_info|a:1:{s:4:"name";s:11:"member_info";}554fcae493e564ee0dc75bdf2ebf94ca            <li class="fore3 ld menu myJd" id="app-jd">
            	<div class="dt"><span class="outline"></span><span class="blank"></span><s></s><a href="user.php" target="_blank">我的众联</a><b></b></div>
                <div class="dd myJdCon">
                	<div class="userInfo">
                    	<div class="uPic"><a href="user.php"><img src="themes/jingdong2015/images/no-img_mid_.jpg"></a></div>
                        <div class="uName">554fcae493e564ee0dc75bdf2ebf94camember_info_index|a:1:{s:4:"name";s:17:"member_info_index";}554fcae493e564ee0dc75bdf2ebf94ca</div>
                    </div>
                    <div class="otherList">
                        <p><a target="_blank" href="user.php?act=address_list">收货地址</a></p>
                        <p><a target="_blank" href="user.php?act=message_list">我的留言</a></p>
                        <p><a target="_blank" href="user.php?act=booking_list">缺货登记</a></p>
                        <p><a target="_blank" href="user.php?act=comment_list">我的评论</a></p>
                        <p><a target="_blank" href="user.php?act=profile">用户信息</a></p>
                        <p><a target="_blank" href="user.php?act=bonus">我的红包</a></p>
                        <p><a target="_blank" href="user.php?act=collection_list">我的收藏</a></p>
                        <p><a target="_blank" href="user.php?act=bonus">资金管理</a></p>
                    </div>
                    <div class="viewList" id="history_div">
                    	<div class="smt"><h4>最近浏览</h4></div>
                        <div class="smc" id="history_list">
                        	554fcae493e564ee0dc75bdf2ebf94cahistory2|a:1:{s:4:"name";s:8:"history2";}554fcae493e564ee0dc75bdf2ebf94ca                        </div>
                    </div>
                </div>
            </li>
            <script type="text/javascript">
			if (document.getElementById('history_list').innerHTML.replace(/\s/g,'').length<1){
				document.getElementById('history_div').style.display='none';
			}else{
				document.getElementById('history_div').style.display='block';
			}
			function clear_history(){
				Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
			}
			function clear_history_Response(res){
				document.getElementById('history_list').innerHTML = '<center>您已清空最近浏览过的商品</center>';
			}
			$(function(){
				var zhi=$(".viewList").find(".smc .item").length;
				if( zhi > 4 ){
					$(".viewList").find(".smc .item").eq(3).nextAll().remove();
				}
			});
            </script>
            
                                    <li class="fore2 ld"><div class="dt"><s></s> <a href="#" >会员俱乐部</a></div></li>
                        <li class="fore2 ld"><div class="dt"><s></s> <a href="#" >企业频道</a></div></li>
                                    <!--<li class="fore3 ld menu" id="app-jd">
            	<div class="dt"><s></s><i></i><span class="outline"></span><span class="blank"></span><a href="#" target="_blank">手机京东</a><b></b></div>
                <div class="dd lh">
                	<div class="qr-info"></div>
                    <div class="qr-item qr-jd-app">
                    	<div class="qr-img"><img id="app-qrcode-img" src="themes/jingdong2015/images/538557daNd249a428.png" class="err-product" width="76" height="76"></div>
                        <div class="qr-ext"><strong>EC模板堂客户端</strong><a href="#" target="_blank" class="btn-app-apple"></a><a href="#" target="_blank" class="btn-app-android"></a></div>
                    </div>
                </div>
            </li>-->
            <li class="fore4 ld menu myJd" id="biz-service">
            	<div class="dt"><s></s> <span class="outline"></span> <span class="blank"></span> 客户服务 <b></b></div>
                <div class="dd">
                	<div><a href="#" target="_blank">帮助中心</a></div>
                    <div><a href="#" target="_blank" rel="nofollow">售后服务</a></div>
                    <div><a href="#" target="_blank" rel="nofollow">在线客服</a></div>
                    <div><a href="#" target="_blank" rel="nofollow">投诉中心</a></div>
                    <div><a href="#" target="_blank">客服邮箱</a></div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div id="o-header-2013">
	<div class="w" id="header-2013">
    	<div id="logo-2013" class="ld"><a href="./index.php" hidefocus="true" ><img src="themes/jingdong2015/images/logo.gif" alt="京东"></a></div>
        
        <div id="search-2013">
        	<div class="i-search ld">
            	<div class="form">
                	<form id="searchForm" name="searchForm" method="get" action="search.php" onSubmit="return checkSearchForm()">
                    	<input type="text" class="text" accesskey="s" id="key" autocomplete="off" name="keywords" id="keyword" value="">
                        <input type="submit" value="搜索" class="button">
                    </form>
                </div>
            </div>
                        <div id="hotwords">
            	                                <a href="search.php?keywords=%E6%88%B7%E5%A4%96%E5%87%BA%E6%B8%B8" target="_blank" style="color:#ff0000">户外出游</a>
                                                                <a href="search.php?keywords=%E5%8A%9E%E5%85%AC%E6%96%87%E5%85%B7" target="_blank">办公文具</a>
                                                                <a href="search.php?keywords=%E5%AE%B6%E7%94%B5%E8%A3%B8%E4%BB%B7" target="_blank">家电裸价</a>
                                                                <a href="search.php?keywords=%E9%98%B2%E6%99%92%E9%9A%94%E7%A6%BB" target="_blank">防晒隔离</a>
                                                                <a href="search.php?keywords=%E5%A4%8F%E8%A3%851%E6%8A%98" target="_blank">夏装1折</a>
                                                                <a href="search.php?keywords=%E5%B0%8F%E7%89%9B3" target="_blank">小牛3</a>
                                                                <a href="search.php?keywords=%E7%AB%A5%E4%B9%A6%E6%BB%A1%E5%87%8F" target="_blank">童书满减</a>
                                                                <a href="search.php?keywords=%E7%90%86%E8%B4%A2" target="_blank">理财</a>
                                            </div>
                    </div>
        
        <div id="my360buy-2013" class="hide">
        	<dl>
            	<dt class="ld"><s></s><a href="user.php">我的京东</a><b></b></dt>
                <dd>
                	<div class="prompt"> <span class="fl"><strong></strong></span> <span class="fr"><a href="user.php">去我的京东首页&nbsp;&gt;</a></span> </div>
                    <div id="jduc-orderlist">
                    	<div class="orderlist">
                        	<div class="smt">
                            	<h4>最新订单状态：</h4>
                                <div class="extra"><a href="user.php?act=order_list" target="_blank">查看所有订单&nbsp;&gt;</a></div>
                            </div>
                            <div class="smc">
                            	<ul></ul>
                            </div>
                        </div>
                    </div>
                	<div class="uclist">
                    	<ul class="fore1 fl">
                        	<li><a target="_blank" href="user.php?act=address_list">收货地址&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=booking_list">缺货登记&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=profile">用户信息&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=collection_list">我的收藏&nbsp;&gt;</a></li>
                        </ul>
                        <ul class="fore2 fl">
                        	<li><a target="_blank" href="user.php?act=message_list">我的留言&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=comment_list">我的评论&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=bonus">我的红包&nbsp;&gt;</a></li>
                            <li><a target="_blank" href="user.php?act=bonus">资金管理&nbsp;&gt;</a></li>
                        </ul>
                    </div>
                    <div class="viewlist" id="history_div">
                    	<div class="smt">
                        	<h4>最近浏览的商品：</h4>
                        </div>
                        <div class="smc" id="jduc-viewlist">
                        	<ul class="lh hide" style="display: block;" id="history_list">
                            554fcae493e564ee0dc75bdf2ebf94cahistory2|a:1:{s:4:"name";s:8:"history2";}554fcae493e564ee0dc75bdf2ebf94ca                            </ul>
                        </div>
                    </div>
					<script type="text/javascript">
                        if (document.getElementById('history_list').innerHTML.replace(/\s/g,'').length<1){
                            document.getElementById('history_div').style.display='none';
                        }else{
                            document.getElementById('history_div').style.display='block';
                        };
                        function clear_history(){
                            Ajax.call('user.php', 'act=clear_history',clear_history_Response, 'GET', 'TEXT',1,1);
                        };
                        function clear_history_Response(res){
                            document.getElementById('history_list').innerHTML = '<center>您已清空最近浏览过的商品</center>';
                        };
                    </script>
                </dd>
            </dl>
        </div>
        
        <div id="ECS_CARTINFO" class="settleup-2013">554fcae493e564ee0dc75bdf2ebf94cacart_info|a:1:{s:4:"name";s:9:"cart_info";}554fcae493e564ee0dc75bdf2ebf94ca</div>
        
    </div>
    
    <div class="navBox">
        <div class="w">
            <div id="nav-2013">
                <div id="categorys-2013" class="categorys-2014 ">
                    <div class="mt ld">
                        <h2><a href="javascript:;">全部商品分类<b></b></a></h2>
                    </div>
                    <div id="_JD_ALLSORT" class="mc">
                                                <div class="item fore1">
                            <span><h3><a href="category.php?id=1">资讯</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=998">最新动态<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=999">新闻焦点<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=1000">众联访谈<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=1001">回忆实录<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:6:"资讯";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:6:"资讯";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore2">
                            <span><h3><a href="category.php?id=2">家用电器</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=90">大 家 电<i>></i></a></dt>
                                        <dd><a href="category.php?id=95">平板电视</a><a href="category.php?id=96">空调</a><a href="category.php?id=97">冰箱</a><a href="category.php?id=98">洗衣机</a><a href="category.php?id=99">家庭影院</a><a href="category.php?id=100">DVD</a><a href="category.php?id=101">迷你音响</a><a href="category.php?id=102">烟机/灶具</a><a href="category.php?id=103">热水器</a><a href="category.php?id=104">消毒柜/洗碗机</a><a href="category.php?id=105">酒柜/冷柜</a><a href="category.php?id=106">家电配件</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=93">个护健康<i>></i></a></dt>
                                        <dd><a href="category.php?id=139">剃须刀</a><a href="category.php?id=140">口腔护理</a><a href="category.php?id=141">剃/脱毛器</a><a href="category.php?id=142">电吹风</a><a href="category.php?id=143">美容</a><a href="category.php?id=144">美发</a><a href="category.php?id=145">按摩器</a><a href="category.php?id=146">按摩椅</a><a href="category.php?id=147">足浴盆</a><a href="category.php?id=148">血压计</a><a href="category.php?id=149">健康秤/厨房秤</a><a href="category.php?id=150">血糖仪</a><a href="category.php?id=151">体温计</a><a href="category.php?id=152">计步器/脂肪检测仪</a><a href="category.php?id=153">其它健康电器</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=92">厨房电器<i>></i></a></dt>
                                        <dd><a href="category.php?id=122">电压力锅</a><a href="category.php?id=123">电饭煲</a><a href="category.php?id=124">豆浆机</a><a href="category.php?id=125">面包机</a><a href="category.php?id=126">咖啡机</a><a href="category.php?id=127">微波炉</a><a href="category.php?id=128">料理/榨汁机</a><a href="category.php?id=129">电烤箱</a><a href="category.php?id=130">电磁炉</a><a href="category.php?id=131">电饼铛/烧烤盘</a><a href="category.php?id=132">煮蛋器</a><a href="category.php?id=133">酸奶机</a><a href="category.php?id=134">电水壶/热水瓶</a><a href="category.php?id=135">电炖锅</a><a href="category.php?id=136">多用途锅</a><a href="category.php?id=137">果蔬解毒机</a><a href="category.php?id=138">其它厨房电器</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=91">生活电器<i>></i></a></dt>
                                        <dd><a href="category.php?id=107">电风扇</a><a href="category.php?id=108">冷风扇</a><a href="category.php?id=109">净化器</a><a href="category.php?id=110">饮水机</a><a href="category.php?id=111">净水设备</a><a href="category.php?id=112">挂烫机/熨斗</a><a href="category.php?id=113">吸尘器</a><a href="category.php?id=114">电话机</a><a href="category.php?id=115">插座</a><a href="category.php?id=116">收录/音机</a><a href="category.php?id=117">清洁机</a><a href="category.php?id=118">加湿器</a><a href="category.php?id=119">除湿/干衣机</a><a href="category.php?id=120">取暖电器</a><a href="category.php?id=121">其它生活电器</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=94">五金家装<i>></i></a></dt>
                                        <dd><a href="category.php?id=154">电动工具</a><a href="category.php?id=155">手动工具</a><a href="category.php?id=156">仪器仪表</a><a href="category.php?id=157">浴霸/排气扇</a><a href="category.php?id=158">灯具</a><a href="category.php?id=159">LED灯</a><a href="category.php?id=160">洁身器</a><a href="category.php?id=161">水槽</a><a href="category.php?id=162">龙头</a><a href="category.php?id=163">淋浴花洒</a><a href="category.php?id=164">厨卫五金</a><a href="category.php?id=165">家具五金</a><a href="category.php?id=166">门铃</a><a href="category.php?id=167">电气开关</a><a href="category.php?id=168">插座</a><a href="category.php?id=169">电工电料</a><a href="category.php?id=170">监控安防</a><a href="category.php?id=171">电线/线缆</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=1&amp;cat=2"><img src="data/brandlogo/1408388661280162950.gif" alt="创维 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=2&amp;cat=2"><img src="data/brandlogo/1408388666819567839.gif" alt="统帅 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=3&amp;cat=2"><img src="data/brandlogo/1408388672554358389.jpg" alt="志高 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=4&amp;cat=2"><img src="data/brandlogo/1408388684265799995.gif" alt="科龙 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=5&amp;cat=2"><img src="data/brandlogo/1408388690499800497.gif" alt="海尔 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=6&amp;cat=2"><img src="data/brandlogo/1408388695099889406.gif" alt="海信 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=7&amp;cat=2"><img src="data/brandlogo/1408388701900679009.gif" alt="赛忆 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=8&amp;cat=2"><img src="data/brandlogo/1408388707352962838.jpg" alt="美的 (9)" /></a>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore3">
                            <span><h3><a href="category.php?id=3">手机、数码、京东通信</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=172">手机通讯<i>></i></a></dt>
                                        <dd><a href="category.php?id=182">对讲机</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=173">京东通信<i>></i></a></dt>
                                        <dd><a href="category.php?id=183">选号中心</a><a href="category.php?id=184">自助服务</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=174">运营商<i>></i></a></dt>
                                        <dd><a href="category.php?id=185">购机送费</a><a href="category.php?id=186">0元购机</a><a href="category.php?id=187">选号入网</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=175">手机配件<i>></i></a></dt>
                                        <dd><a href="category.php?id=188">电池</a><a href="category.php?id=189">蓝牙耳机</a><a href="category.php?id=190">充电器/数据线</a><a href="category.php?id=191">手机耳机</a><a href="category.php?id=192">贴膜</a><a href="category.php?id=193">存储卡</a><a href="category.php?id=194">保护套</a><a href="category.php?id=195">车载</a><a href="category.php?id=196">iPhone配件</a><a href="category.php?id=197">创意配件</a><a href="category.php?id=198">便携/无线音箱</a><a href="category.php?id=199">手机饰品</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=176">摄影摄像<i>></i></a></dt>
                                        <dd><a href="category.php?id=200">数码相机</a><a href="category.php?id=201">单电/微单相机</a><a href="category.php?id=202">单反相机</a><a href="category.php?id=203">拍立得</a><a href="category.php?id=204">运动相机</a><a href="category.php?id=205">摄像机</a><a href="category.php?id=206">镜头</a><a href="category.php?id=207">户外器材</a><a href="category.php?id=208">摄影器材</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=177">数码配件<i>></i></a></dt>
                                        <dd><a href="category.php?id=209">存储卡</a><a href="category.php?id=210">读卡器</a><a href="category.php?id=211">滤镜</a><a href="category.php?id=212">闪光灯/手柄</a><a href="category.php?id=213">相机包</a><a href="category.php?id=214">三脚架/云台</a><a href="category.php?id=215">相机清洁</a><a href="category.php?id=216">相机贴膜</a><a href="category.php?id=217">机身附件</a><a href="category.php?id=218">镜头附件</a><a href="category.php?id=219">电池/充电器</a><a href="category.php?id=220">移动电源</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=178">时尚影音<i>></i></a></dt>
                                        <dd><a href="category.php?id=221">耳机/耳麦</a><a href="category.php?id=222">音箱/音响</a><a href="category.php?id=223">麦克风</a><a href="category.php?id=224">MP3/MP4</a><a href="category.php?id=225">数码相框</a><a href="category.php?id=226">专业音频</a><a href="category.php?id=227">苹果周边</a></dd>
                                    </dl>
                                                                        <dl class="fore8">
                                        <dt><a href="category.php?id=179">智能设备<i>></i></a></dt>
                                        <dd><a href="category.php?id=228">智能手环</a><a href="category.php?id=229">智能手表</a><a href="category.php?id=232">健康监测</a><a href="category.php?id=233">智能配饰</a><a href="category.php?id=234">智能家居</a><a href="category.php?id=235">体感车</a><a href="category.php?id=236">其他配件</a></dd>
                                    </dl>
                                                                        <dl class="fore9">
                                        <dt><a href="category.php?id=180">电子教育<i>></i></a></dt>
                                        <dd><a href="category.php?id=237">电子词典</a><a href="category.php?id=238">电纸书</a><a href="category.php?id=239">录音笔</a><a href="category.php?id=240">复读机</a><a href="category.php?id=241">点读机/笔</a><a href="category.php?id=242">学生平板</a><a href="category.php?id=243">早教机</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:30:"手机、数码、京东通信";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:30:"手机、数码、京东通信";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore4">
                            <span><h3><a href="category.php?id=4">电脑、办公</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=244">电脑整机<i>></i></a></dt>
                                        <dd><a href="category.php?id=251">笔记本</a><a href="category.php?id=252">超极本</a><a href="category.php?id=253">游戏本</a><a href="category.php?id=254">平板电脑</a><a href="category.php?id=256">台式机</a><a href="category.php?id=257">服务器/工作站</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=245">电脑配件<i>></i></a></dt>
                                        <dd><a href="category.php?id=259">CPU</a><a href="category.php?id=260">主板</a><a href="category.php?id=261">显卡</a><a href="category.php?id=262">硬盘</a><a href="category.php?id=263">SSD固态硬盘</a><a href="category.php?id=264">内存</a><a href="category.php?id=265">机箱</a><a href="category.php?id=266">电源</a><a href="category.php?id=267">显示器</a><a href="category.php?id=268">刻录机/光驱</a><a href="category.php?id=269">声卡/扩展卡</a><a href="category.php?id=270">散热器</a><a href="category.php?id=271">装机配件</a><a href="category.php?id=272">组装电脑</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=246">外设产品<i>></i></a></dt>
                                        <dd><a href="category.php?id=273">鼠标</a><a href="category.php?id=274">键盘</a><a href="category.php?id=275">游戏设备</a><a href="category.php?id=276">U盘</a><a href="category.php?id=277">移动硬盘</a><a href="category.php?id=278">鼠标垫</a><a href="category.php?id=279">摄像头</a><a href="category.php?id=280">线缆</a><a href="category.php?id=281">电玩</a><a href="category.php?id=282">手写板</a><a href="category.php?id=283">外置盒</a><a href="category.php?id=284">电脑工具</a><a href="category.php?id=285">电脑清洁</a><a href="category.php?id=286">UPS</a><a href="category.php?id=287">插座</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=247">网络产品<i>></i></a></dt>
                                        <dd><a href="category.php?id=288">路由器</a><a href="category.php?id=289">网卡</a><a href="category.php?id=290">交换机</a><a href="category.php?id=291">网络存储</a><a href="category.php?id=292">4G/3G上网</a><a href="category.php?id=293">网络盒子</a><a href="category.php?id=294">网络配件</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=248">办公打印<i>></i></a></dt>
                                        <dd><a href="category.php?id=295">打印机</a><a href="category.php?id=296">一体机</a><a href="category.php?id=297">投影机</a><a href="category.php?id=298">投影配件</a><a href="category.php?id=299">传真机</a><a href="category.php?id=300">复合机</a><a href="category.php?id=301">碎纸机</a><a href="category.php?id=302">扫描仪</a><a href="category.php?id=303">墨盒</a><a href="category.php?id=304">硒鼓</a><a href="category.php?id=305">墨粉</a><a href="category.php?id=306">色带</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=249">办公文仪<i>></i></a></dt>
                                        <dd><a href="category.php?id=307">办公文具</a><a href="category.php?id=308">文件管理</a><a href="category.php?id=309">笔类</a><a href="category.php?id=310">纸类</a><a href="category.php?id=311">本册/便签</a><a href="category.php?id=312">学生文具</a><a href="category.php?id=313">财务用品</a><a href="category.php?id=314">计算器</a><a href="category.php?id=315">激光笔</a><a href="category.php?id=316">白板/封装</a><a href="category.php?id=317">考勤机</a><a href="category.php?id=318">刻录碟片/附件</a><a href="category.php?id=319">点钞机</a><a href="category.php?id=320">支付设备/POS机</a><a href="category.php?id=321">安防监控</a><a href="category.php?id=322">呼叫/会议设备</a><a href="category.php?id=323">保险柜</a><a href="category.php?id=324">办公家具</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=250">服务产品<i>></i></a></dt>
                                        <dd><a href="category.php?id=325">上门服务</a><a href="category.php?id=326">远程服务</a><a href="category.php?id=327">电脑软件</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=12&amp;cat=4"><img src="data/brandlogo/1408388731946030201.gif" alt="松下 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=33&amp;cat=4"><img src="data/brandlogo/1408388860169094248.jpg" alt="联想 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=35&amp;cat=4"><img src="data/brandlogo/1408388873290611085.jpg" alt="宏碁 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=36&amp;cat=4"><img src="data/brandlogo/1408388884893878072.jpg" alt="微软 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=37&amp;cat=4"><img src="data/brandlogo/1408388892253249002.jpg" alt="机械革命 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=38&amp;cat=4"><img src="data/brandlogo/1408388897063788352.jpg" alt="华硕 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=39&amp;cat=4"><img src="data/brandlogo/1408388904367521114.jpg" alt="惠普 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=66&amp;cat=4"><img src="data/brandlogo/1408389135311019767.gif" alt="维诺夫卡 (1)" /></a>
                                                                                                                                                                                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore5">
                            <span><h3><a href="category.php?id=5">家居、家具、家装、厨具</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=330">家纺<i>></i></a></dt>
                                        <dd><a href="category.php?id=353">床品套件</a><a href="category.php?id=355">蚊帐</a><a href="category.php?id=356">凉席</a><a href="category.php?id=357">床单被罩</a><a href="category.php?id=358">枕芯</a><a href="category.php?id=359">毛巾浴巾</a><a href="category.php?id=360">布艺软饰</a><a href="category.php?id=361">毯子</a><a href="category.php?id=362">抱枕靠垫</a><a href="category.php?id=363">床垫/床褥</a><a href="category.php?id=364">窗帘/窗纱</a><a href="category.php?id=365">电热毯</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=328">厨具<i>></i></a></dt>
                                        <dd><a href="category.php?id=335">烹饪锅具</a><a href="category.php?id=336">刀剪菜板</a><a href="category.php?id=337">厨房配件</a><a href="category.php?id=338">水具酒具</a><a href="category.php?id=339">餐具</a><a href="category.php?id=340">茶具/咖啡具</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=329">家装建材<i>></i></a></dt>
                                        <dd><a href="category.php?id=341">灯饰照明</a><a href="category.php?id=342">厨房卫浴</a><a href="category.php?id=343">五金工具</a><a href="category.php?id=344">电工电料</a><a href="category.php?id=345">墙地面材料</a><a href="category.php?id=346">装饰材料</a><a href="category.php?id=347">装修服务</a><a href="category.php?id=348">吸顶灯</a><a href="category.php?id=349">淋浴花洒</a><a href="category.php?id=350">开关插座</a><a href="category.php?id=351">油漆涂料</a><a href="category.php?id=352">龙头</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=331">家具<i>></i></a></dt>
                                        <dd><a href="category.php?id=366">卧室家具</a><a href="category.php?id=367">客厅家具</a><a href="category.php?id=368">餐厅家具</a><a href="category.php?id=369">书房家具</a><a href="category.php?id=370">储物家具</a><a href="category.php?id=371">阳台/户外</a><a href="category.php?id=372">商业办公</a><a href="category.php?id=373">床</a><a href="category.php?id=374">床垫</a><a href="category.php?id=375">沙发</a><a href="category.php?id=376">电脑椅</a><a href="category.php?id=377">衣柜</a><a href="category.php?id=378">茶几</a><a href="category.php?id=379">电视柜</a><a href="category.php?id=380">餐桌</a><a href="category.php?id=381">电脑桌</a><a href="category.php?id=382">鞋架/衣帽架</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=332">灯具<i>></i></a></dt>
                                        <dd><a href="category.php?id=383">台灯</a><a href="category.php?id=384">吸顶灯</a><a href="category.php?id=385">筒灯射灯</a><a href="category.php?id=386">LED灯</a><a href="category.php?id=387">节能灯</a><a href="category.php?id=388">落地灯</a><a href="category.php?id=389">五金电器</a><a href="category.php?id=390">应急灯/手电</a><a href="category.php?id=391">装饰灯</a><a href="category.php?id=392">吊灯</a><a href="category.php?id=393">氛围照明</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=333">生活日用<i>></i></a></dt>
                                        <dd><a href="category.php?id=394">收纳用品</a><a href="category.php?id=395">雨伞雨具</a><a href="category.php?id=396">浴室用品</a><a href="category.php?id=397">缝纫/针织用品</a><a href="category.php?id=398">洗晒/熨烫</a><a href="category.php?id=399">净化除味</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=334">家装软饰<i>></i></a></dt>
                                        <dd><a href="category.php?id=400">桌布/罩件</a><a href="category.php?id=401">地毯地垫</a><a href="category.php?id=402">沙发垫套/椅垫</a><a href="category.php?id=403">帘艺隔断</a><a href="category.php?id=404">相框/照片墙</a><a href="category.php?id=405">装饰字画</a><a href="category.php?id=406">墙贴/装饰贴</a><a href="category.php?id=407">节庆饰品</a><a href="category.php?id=408">手工/十字绣</a><a href="category.php?id=409">钟饰</a><a href="category.php?id=410">装饰摆件</a><a href="category.php?id=411">花瓶花艺</a><a href="category.php?id=412">创意家居</a><a href="category.php?id=413">保暖防护</a><a href="category.php?id=414">香薰蜡烛</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=47&amp;cat=5"><img src="data/brandlogo/1408388968061368049.gif" alt="洗颜专科 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=48&amp;cat=5"><img src="data/brandlogo/1408388977236154439.jpg" alt="富安娜家纺 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=49&amp;cat=5"><img src="data/brandlogo/1408388984062114039.gif" alt="巧布万棉家纺 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=50&amp;cat=5"><img src="data/brandlogo/1408388992835276757.gif" alt="九洲鹿 (3)" /></a>
                                                                                                                                                                <a href="brand.php?id=51&amp;cat=5"><img src="data/brandlogo/1408389003705467870.gif" alt="爱斯基摩人 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=52&amp;cat=5"><img src="data/brandlogo/1408389011381507906.gif" alt="么小毛家纺 (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore6">
                            <span><h3><a href="category.php?id=6">服饰内衣、珠宝首饰</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=711">女装<i>></i></a></dt>
                                        <dd><a href="category.php?id=716">连衣裙</a><a href="category.php?id=717">蕾丝/雪纺衫</a><a href="category.php?id=718">衬衫</a><a href="category.php?id=719">T恤</a><a href="category.php?id=720">半身裙</a><a href="category.php?id=721">休闲裤</a><a href="category.php?id=722">短裤</a><a href="category.php?id=723">牛仔裤</a><a href="category.php?id=724">针织衫</a><a href="category.php?id=725">吊带/背心</a><a href="category.php?id=726">打底衫</a><a href="category.php?id=727">打底裤</a><a href="category.php?id=728">正装裤</a><a href="category.php?id=729">小西服</a><a href="category.php?id=730">马甲</a><a href="category.php?id=731">风衣</a><a href="category.php?id=732">羊毛衫</a><a href="category.php?id=733">羊绒衫</a><a href="category.php?id=734">短外套</a><a href="category.php?id=735">棉服</a><a href="category.php?id=736">毛呢大衣</a><a href="category.php?id=737">加绒裤</a><a href="category.php?id=738">羽绒服</a><a href="category.php?id=739">皮草</a><a href="category.php?id=740">真皮皮衣</a><a href="category.php?id=741">仿皮皮衣</a><a href="category.php?id=742">旗袍/唐装</a><a href="category.php?id=743">礼服</a><a href="category.php?id=744">婚纱</a><a href="category.php?id=745">中老年女装</a><a href="category.php?id=746">大码女装</a><a href="category.php?id=747">设计师/潮牌</a><a href="category.php?id=748">卫衣</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=712">男装<i>></i></a></dt>
                                        <dd><a href="category.php?id=749">衬衫</a><a href="category.php?id=750">T恤</a><a href="category.php?id=751">POLO衫</a><a href="category.php?id=752">针织衫</a><a href="category.php?id=753">夹克</a><a href="category.php?id=754">卫衣</a><a href="category.php?id=755">风衣</a><a href="category.php?id=756">马甲/背心</a><a href="category.php?id=757">短裤</a><a href="category.php?id=758">休闲裤</a><a href="category.php?id=759">牛仔裤</a><a href="category.php?id=760">西服</a><a href="category.php?id=761">西裤</a><a href="category.php?id=762">西服套装</a><a href="category.php?id=763">真皮皮衣</a><a href="category.php?id=764">仿皮皮衣</a><a href="category.php?id=765">羽绒服</a><a href="category.php?id=766">毛呢大衣</a><a href="category.php?id=767">棉服</a><a href="category.php?id=768">羊绒衫</a><a href="category.php?id=769">羊毛衫</a><a href="category.php?id=770">卫裤/运动裤</a><a href="category.php?id=771">加绒裤</a><a href="category.php?id=772">设计师/潮牌</a><a href="category.php?id=773">唐装/中山装</a><a href="category.php?id=774">工装</a><a href="category.php?id=775">中老年男装</a><a href="category.php?id=776">大码男装</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=713">内衣<i>></i></a></dt>
                                        <dd><a href="category.php?id=777">文胸</a><a href="category.php?id=778">睡衣/家居服</a><a href="category.php?id=779">情侣睡衣</a><a href="category.php?id=780">文胸套装</a><a href="category.php?id=781">少女文胸</a><a href="category.php?id=782">女式内裤</a><a href="category.php?id=783">男式内裤</a><a href="category.php?id=784">商务男袜</a><a href="category.php?id=785">休闲棉袜</a><a href="category.php?id=786">吊带/背心</a><a href="category.php?id=787">打底衫</a><a href="category.php?id=788">抹胸</a><a href="category.php?id=789">连裤袜/丝袜</a><a href="category.php?id=790">美腿袜</a><a href="category.php?id=791">打底裤袜</a><a href="category.php?id=792">塑身美体</a><a href="category.php?id=793">大码内衣</a><a href="category.php?id=794">内衣配件</a><a href="category.php?id=795">泳衣</a><a href="category.php?id=796">秋衣秋裤</a><a href="category.php?id=797">保暖内衣</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=714">服饰配件<i>></i></a></dt>
                                        <dd><a href="category.php?id=798">太阳镜</a><a href="category.php?id=799">光学镜架/镜片</a><a href="category.php?id=800">防辐射眼镜</a><a href="category.php?id=801">女士丝巾/围巾/披肩</a><a href="category.php?id=802">棒球帽</a><a href="category.php?id=803">遮阳伞/雨伞</a><a href="category.php?id=804">遮阳帽</a><a href="category.php?id=805">领带/领结/领带夹</a><a href="category.php?id=806">男士腰带/礼盒</a><a href="category.php?id=807">防晒手套</a><a href="category.php?id=808">老花镜</a><a href="category.php?id=809">袖扣</a><a href="category.php?id=810">鸭舌帽</a><a href="category.php?id=811">装饰眼镜</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=715">珠宝首饰<i>></i></a></dt>
                                        <dd><a href="category.php?id=812">时尚饰品</a><a href="category.php?id=813">钻石</a><a href="category.php?id=814">翡翠玉石</a><a href="category.php?id=815">纯金K金饰品</a><a href="category.php?id=816">金银投资</a><a href="category.php?id=817">银饰</a><a href="category.php?id=818">水晶玛瑙</a><a href="category.php?id=819">彩宝</a><a href="category.php?id=820">铂金</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=40&amp;cat=6"><img src="data/brandlogo/1408388912842195129.gif" alt="刊菲 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=41&amp;cat=6"><img src="data/brandlogo/1408388917023098895.gif" alt="HARMARYCIAGA (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=42&amp;cat=6"><img src="data/brandlogo/1408388927970168396.gif" alt="俏妮妃 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=43&amp;cat=6"><img src="data/brandlogo/1408388934924405061.jpg" alt="琼瑛 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=44&amp;cat=6"><img src="data/brandlogo/1408388941128040572.gif" alt="时竟 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=45&amp;cat=6"><img src="data/brandlogo/1408388948874779333.gif" alt="誉彩 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=46&amp;cat=6"><img src="data/brandlogo/1408388959674000474.gif" alt="莱雪曼 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=50&amp;cat=6"><img src="data/brandlogo/1408388992835276757.gif" alt="九洲鹿 (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore7">
                            <span><h3><a href="category.php?id=7">个护化妆</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=415">面部护肤<i>></i></a></dt>
                                        <dd><a href="category.php?id=421">清洁</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=416">洗发护发<i>></i></a></dt>
                                        <dd><a href="category.php?id=426">洗发</a><a href="category.php?id=427">护发</a><a href="category.php?id=428">染发</a><a href="category.php?id=429">造型</a><a href="category.php?id=430">假发</a><a href="category.php?id=431">套装</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=417">身体护肤<i>></i></a></dt>
                                        <dd><a href="category.php?id=432">沐浴</a><a href="category.php?id=433">润肤</a><a href="category.php?id=434">颈部</a><a href="category.php?id=435">手足</a><a href="category.php?id=436">纤体塑形</a><a href="category.php?id=437">美胸</a><a href="category.php?id=438">套装</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=418">口腔护理<i>></i></a></dt>
                                        <dd><a href="category.php?id=439">牙膏/牙粉</a><a href="category.php?id=440">牙刷/牙线</a><a href="category.php?id=441">漱口水</a><a href="category.php?id=442">套装</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=419">女性护理<i>></i></a></dt>
                                        <dd><a href="category.php?id=444">卫生护垫</a><a href="category.php?id=445">私密护理</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=420">香水彩妆<i>></i></a></dt>
                                        <dd><a href="category.php?id=447">香水</a><a href="category.php?id=448">底妆</a><a href="category.php?id=449">腮红</a><a href="category.php?id=450">眼部</a><a href="category.php?id=451">唇部</a><a href="category.php?id=452">美甲</a><a href="category.php?id=453">美容工具</a><a href="category.php?id=454">套装</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=38&amp;cat=7"><img src="data/brandlogo/1408388897063788352.jpg" alt="华硕 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=46&amp;cat=7"><img src="data/brandlogo/1408388959674000474.gif" alt="莱雪曼 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=47&amp;cat=7"><img src="data/brandlogo/1408388968061368049.gif" alt="洗颜专科 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=53&amp;cat=7"><img src="data/brandlogo/1408389020467816163.gif" alt="雅培 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=54&amp;cat=7"><img src="data/brandlogo/1408389028549234249.gif" alt="美素力 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=61&amp;cat=7"><img src="data/brandlogo/1408389088273428177.gif" alt="养生堂 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=62&amp;cat=7"><img src="data/brandlogo/1408389094494256102.gif" alt="健安喜 (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"个护化妆";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"个护化妆";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore8">
                            <span><h3><a href="category.php?id=8">鞋靴、箱包、钟表、奢侈品</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=455">时尚女鞋<i>></i></a></dt>
                                        <dd><a href="category.php?id=463">凉鞋</a><a href="category.php?id=464">单鞋</a><a href="category.php?id=465">高跟鞋</a><a href="category.php?id=466">坡跟鞋</a><a href="category.php?id=467">松糕鞋</a><a href="category.php?id=468">鱼嘴鞋</a><a href="category.php?id=469">休闲鞋</a><a href="category.php?id=470">帆布鞋</a><a href="category.php?id=471">拖鞋/人字拖</a><a href="category.php?id=472">妈妈鞋</a><a href="category.php?id=473">防水台</a><a href="category.php?id=474">雨鞋/雨靴</a><a href="category.php?id=475">内增高</a><a href="category.php?id=476">布鞋/绣花鞋</a><a href="category.php?id=477">女靴</a><a href="category.php?id=478">雪地靴</a><a href="category.php?id=479">踝靴</a><a href="category.php?id=480">马丁靴</a><a href="category.php?id=481">鞋配件</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=456">流行男鞋<i>></i></a></dt>
                                        <dd><a href="category.php?id=482">休闲鞋</a><a href="category.php?id=483">凉鞋/沙滩鞋</a><a href="category.php?id=484">帆布鞋</a><a href="category.php?id=485">商务休闲鞋</a><a href="category.php?id=486">正装鞋</a><a href="category.php?id=487">增高鞋</a><a href="category.php?id=488">拖鞋/人字拖</a><a href="category.php?id=489">工装鞋</a><a href="category.php?id=490">男靴</a><a href="category.php?id=491">传统布鞋</a><a href="category.php?id=492">功能鞋</a><a href="category.php?id=493">鞋配件</a><a href="category.php?id=494">定制鞋</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=457">潮流女包<i>></i></a></dt>
                                        <dd><a href="category.php?id=495">单肩包</a><a href="category.php?id=496">手提包</a><a href="category.php?id=497">斜挎包</a><a href="category.php?id=498">双肩包</a><a href="category.php?id=499">钱包</a><a href="category.php?id=500">手拿包/晚宴包</a><a href="category.php?id=501">卡包/零钱包</a><a href="category.php?id=502">钥匙包</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=458">精品男包<i>></i></a></dt>
                                        <dd><a href="category.php?id=503">商务公文包</a><a href="category.php?id=504">单肩/斜挎包</a><a href="category.php?id=505">男士手包</a><a href="category.php?id=506">双肩包</a><a href="category.php?id=507">钱包/卡包</a><a href="category.php?id=508">钥匙包</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=459">功能箱包<i>></i></a></dt>
                                        <dd><a href="category.php?id=509">拉杆箱/拉杆包</a><a href="category.php?id=510">旅行包</a><a href="category.php?id=511">电脑包</a><a href="category.php?id=512">休闲运动包</a><a href="category.php?id=513">相机包</a><a href="category.php?id=514">腰包/胸包</a><a href="category.php?id=515">登山包</a><a href="category.php?id=516">旅行配件</a><a href="category.php?id=517">书包</a><a href="category.php?id=518">妈咪包</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=460">奢侈品<i>></i></a></dt>
                                        <dd><a href="category.php?id=519">箱包</a><a href="category.php?id=520">钱包</a><a href="category.php?id=521">服饰腰带</a><a href="category.php?id=522">鞋靴</a><a href="category.php?id=523">太阳镜/眼镜框</a><a href="category.php?id=525">配件</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=461">钟表<i>></i></a></dt>
                                        <dd><a href="category.php?id=527">女表</a><a href="category.php?id=529">座钟挂钟</a></dd>
                                    </dl>
                                                                        <dl class="fore8">
                                        <dt><a href="category.php?id=462">礼品<i>></i></a></dt>
                                        <dd><a href="category.php?id=530">火机烟具</a><a href="category.php?id=531">军刀军具</a><a href="category.php?id=532">美妆礼品</a><a href="category.php?id=533">工艺礼品</a><a href="category.php?id=534">礼盒礼券</a><a href="category.php?id=535">礼品文具</a><a href="category.php?id=536">收藏品</a><a href="category.php?id=537">古董把玩</a><a href="category.php?id=538">地方礼品</a><a href="category.php?id=539">创意礼品</a><a href="category.php?id=540">婚庆用品</a><a href="category.php?id=541">鲜花绿植</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=75&amp;cat=8"><img src="data/brandlogo/1408400628618339077.jpg" alt="美旅 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=76&amp;cat=8"><img src="data/brandlogo/1408400611316891423.jpg" alt="ELLE (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:36:"鞋靴、箱包、钟表、奢侈品";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:36:"鞋靴、箱包、钟表、奢侈品";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore9">
                            <span><h3><a href="category.php?id=9">运动户外</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=542">运动鞋包<i>></i></a></dt>
                                        <dd><a href="category.php?id=548">休闲鞋</a><a href="category.php?id=549">跑步鞋</a><a href="category.php?id=550">板鞋</a><a href="category.php?id=551">帆布鞋</a><a href="category.php?id=552">篮球鞋</a><a href="category.php?id=553">足球鞋</a><a href="category.php?id=554">乒羽网鞋</a><a href="category.php?id=555">专项运动鞋</a><a href="category.php?id=556">训练鞋</a><a href="category.php?id=557">拖鞋</a><a href="category.php?id=558">运动包</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=543">运动服饰<i>></i></a></dt>
                                        <dd><a href="category.php?id=559">卫衣/套头衫</a><a href="category.php?id=560">毛衫/线衫</a><a href="category.php?id=561">夹克/风衣</a><a href="category.php?id=562">棉服</a><a href="category.php?id=563">羽绒服</a><a href="category.php?id=564">T恤</a><a href="category.php?id=565">乒羽网服</a><a href="category.php?id=566">训练服</a><a href="category.php?id=567">运动背心</a><a href="category.php?id=568">运动裤</a><a href="category.php?id=569">运动套装</a><a href="category.php?id=570">运动配饰</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=544">健身训练<i>></i></a></dt>
                                        <dd><a href="category.php?id=571">跑步机</a><a href="category.php?id=572">健身车/动感单车</a><a href="category.php?id=573">综合训练器</a><a href="category.php?id=574">其他大型器械</a><a href="category.php?id=575">哑铃</a><a href="category.php?id=576">仰卧板/收腹机</a><a href="category.php?id=577">其他中小型器材</a><a href="category.php?id=578">武术搏击</a><a href="category.php?id=579">运动护具</a><a href="category.php?id=580">瑜伽舞蹈</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=545">骑行运动<i>></i></a></dt>
                                        <dd><a href="category.php?id=581">山地车/公路车</a><a href="category.php?id=582">折叠车</a><a href="category.php?id=583">电动车</a><a href="category.php?id=584">其他整车</a><a href="category.php?id=585">骑行装备</a><a href="category.php?id=586">骑行服</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=546">体育用品<i>></i></a></dt>
                                        <dd><a href="category.php?id=587">乒乓球</a><a href="category.php?id=588">羽毛球</a><a href="category.php?id=589">网球</a><a href="category.php?id=590">篮球</a><a href="category.php?id=592">足球</a><a href="category.php?id=593">高尔夫</a><a href="category.php?id=594">台球</a><a href="category.php?id=595">轮滑滑板</a><a href="category.php?id=596">排球</a><a href="category.php?id=597">棋牌麻将</a><a href="category.php?id=598">其它</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=547">户外装备<i>></i></a></dt>
                                        <dd><a href="category.php?id=619">背包</a><a href="category.php?id=620">帐篷/垫子</a><a href="category.php?id=621">睡袋/吊床</a><a href="category.php?id=622">登山攀岩</a><a href="category.php?id=623">户外照明</a><a href="category.php?id=624">野餐烧烤</a><a href="category.php?id=625">便携桌椅床</a><a href="category.php?id=626">户外工具</a><a href="category.php?id=627">望远镜</a><a href="category.php?id=628">户外仪表</a><a href="category.php?id=629">旅游用品</a><a href="category.php?id=630">军迷用品</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=591">户外鞋服<i>></i></a></dt>
                                        <dd><a href="category.php?id=599">冲锋衣裤</a><a href="category.php?id=600">速干衣裤</a><a href="category.php?id=601">滑雪服</a><a href="category.php?id=602">羽绒服/棉服</a><a href="category.php?id=603">休闲衣裤</a><a href="category.php?id=604">抓绒衣裤</a><a href="category.php?id=605">软壳衣裤</a><a href="category.php?id=606">T恤</a><a href="category.php?id=607">户外风衣</a><a href="category.php?id=608">功能内衣</a><a href="category.php?id=609">军迷服饰</a><a href="category.php?id=610">登山鞋</a><a href="category.php?id=611">徒步鞋</a><a href="category.php?id=612">越野跑鞋</a><a href="category.php?id=613">休闲鞋</a><a href="category.php?id=614">雪地靴</a><a href="category.php?id=615">工装鞋</a><a href="category.php?id=616">溯溪鞋</a><a href="category.php?id=617">沙滩/凉拖</a><a href="category.php?id=618">户外袜</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"运动户外";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"运动户外";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore10">
                            <span><h3><a href="category.php?id=10">汽车用品</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=631">维修保养<i>></i></a></dt>
                                        <dd><a href="category.php?id=636">润滑油</a><a href="category.php?id=637">添加剂</a><a href="category.php?id=638">防冻液</a><a href="category.php?id=639">滤清器</a><a href="category.php?id=640">火花塞</a><a href="category.php?id=641">雨刷</a><a href="category.php?id=642">车灯</a><a href="category.php?id=643">后视镜</a><a href="category.php?id=644">轮胎</a><a href="category.php?id=645">轮毂</a><a href="category.php?id=646">刹车片/盘</a><a href="category.php?id=647">喇叭/皮带</a><a href="category.php?id=648">蓄电池</a><a href="category.php?id=649">底盘装甲/护板</a><a href="category.php?id=650">贴膜</a><a href="category.php?id=651">汽修工具</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=632">车载电器<i>></i></a></dt>
                                        <dd><a href="category.php?id=652">导航仪</a><a href="category.php?id=653">安全预警仪</a><a href="category.php?id=654">行车记录仪</a><a href="category.php?id=655">倒车雷达</a><a href="category.php?id=656">蓝牙设备</a><a href="category.php?id=657">时尚影音</a><a href="category.php?id=658">净化器</a><a href="category.php?id=659">电源</a><a href="category.php?id=660">冰箱</a><a href="category.php?id=661">吸尘器</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=633">美容清洗<i>></i></a></dt>
                                        <dd><a href="category.php?id=662">车蜡</a><a href="category.php?id=663">补漆笔</a><a href="category.php?id=664">玻璃水</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=634">汽车装饰<i>></i></a></dt>
                                        <dd><a href="category.php?id=668">脚垫</a><a href="category.php?id=669">座垫</a><a href="category.php?id=670">座套</a><a href="category.php?id=671">后备箱垫</a><a href="category.php?id=672">头枕</a><a href="category.php?id=673">腰靠</a><a href="category.php?id=674">香水</a><a href="category.php?id=675">空气净化</a><a href="category.php?id=676">车内饰品</a><a href="category.php?id=677">功能小件</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=635">安全自驾<i>></i></a></dt>
                                        <dd><a href="category.php?id=680">安全座椅</a><a href="category.php?id=681">胎压充气</a><a href="category.php?id=682">防盗设备</a><a href="category.php?id=683">应急救援</a><a href="category.php?id=685">储物箱</a><a href="category.php?id=686">自驾野营</a><a href="category.php?id=687">摩托车装备</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"汽车用品";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"汽车用品";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore11">
                            <span><h3><a href="category.php?id=11">母婴、玩具乐器</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=688">奶粉<i>></i></a></dt>
                                        <dd><a href="category.php?id=821">婴幼奶粉</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=689">营养辅食<i>></i></a></dt>
                                        <dd><a href="category.php?id=830">DHA</a><a href="category.php?id=831">钙铁锌/维生素</a><a href="category.php?id=832">益生菌/初乳</a><a href="category.php?id=833">清火/开胃</a><a href="category.php?id=834">米粉/菜粉</a><a href="category.php?id=835">果泥/果汁</a><a href="category.php?id=836">面条/粥</a><a href="category.php?id=837">宝宝零食</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=690">尿裤湿巾<i>></i></a></dt>
                                        <dd><a href="category.php?id=838">婴儿尿裤</a><a href="category.php?id=839">拉拉裤</a><a href="category.php?id=840">成人尿裤</a><a href="category.php?id=841">湿巾</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=691">洗护用品<i>></i></a></dt>
                                        <dd><a href="category.php?id=842">宝宝护肤</a><a href="category.php?id=843">宝宝洗浴</a><a href="category.php?id=844">理发器</a><a href="category.php?id=845">洗衣液/皂</a><a href="category.php?id=846">奶瓶清洗</a><a href="category.php?id=847">日常护理</a><a href="category.php?id=848">座便器</a><a href="category.php?id=849">驱蚊防蚊</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=692">喂养用品<i>></i></a></dt>
                                        <dd><a href="category.php?id=850">奶瓶奶嘴</a><a href="category.php?id=851">吸奶器</a><a href="category.php?id=852">牙胶安抚</a><a href="category.php?id=853">暖奶消毒</a><a href="category.php?id=854">辅食料理机</a><a href="category.php?id=855">碗盘叉勺</a><a href="category.php?id=856">水壶/水杯</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=693">童车童床<i>></i></a></dt>
                                        <dd><a href="category.php?id=857">婴儿床</a><a href="category.php?id=858">婴儿推车</a><a href="category.php?id=859">餐椅摇椅</a><a href="category.php?id=860">学步车</a><a href="category.php?id=861">三轮车</a><a href="category.php?id=862">自行车</a><a href="category.php?id=863">扭扭车</a><a href="category.php?id=864">滑板车</a><a href="category.php?id=865">电动车</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=694">安全座椅<i>></i></a></dt>
                                        <dd><a href="category.php?id=866">提篮式</a><a href="category.php?id=867">安全座椅</a><a href="category.php?id=868">增高垫</a></dd>
                                    </dl>
                                                                        <dl class="fore8">
                                        <dt><a href="category.php?id=695">寝居服饰<i>></i></a></dt>
                                        <dd><a href="category.php?id=869">婴儿外出服</a><a href="category.php?id=870">婴儿内衣</a><a href="category.php?id=871">婴儿礼盒</a><a href="category.php?id=872">婴儿鞋帽袜</a><a href="category.php?id=873">家居床品</a><a href="category.php?id=874">安全防护</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=53&amp;cat=11"><img src="data/brandlogo/1408389020467816163.gif" alt="雅培 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=54&amp;cat=11"><img src="data/brandlogo/1408389028549234249.gif" alt="美素力 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=55&amp;cat=11"><img src="data/brandlogo/1408389036032699536.gif" alt="美赞臣 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=56&amp;cat=11"><img src="data/brandlogo/1408389045513441324.jpg" alt="雀巢 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=57&amp;cat=11"><img src="data/brandlogo/1408389052474444489.gif" alt="可瑞康 (2)" /></a>
                                                                                                                                                                <a href="brand.php?id=58&amp;cat=11"><img src="data/brandlogo/1408389066427584551.gif" alt="惠氏 (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore12">
                            <span><h3><a href="category.php?id=12">食品饮料、酒类、生鲜</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=696">中外名酒<i>></i></a></dt>
                                        <dd><a href="category.php?id=875">白酒</a><a href="category.php?id=876">葡萄酒</a><a href="category.php?id=877">洋酒</a><a href="category.php?id=878">啤酒</a><a href="category.php?id=879">黄酒/养生酒</a><a href="category.php?id=880">收藏酒/陈年老酒</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=697">进口食品<i>></i></a></dt>
                                        <dd><a href="category.php?id=881">牛奶</a><a href="category.php?id=882">饼干蛋糕</a><a href="category.php?id=883">糖果/巧克力</a><a href="category.php?id=884">休闲零食</a><a href="category.php?id=885">冲调饮品</a><a href="category.php?id=886">粮油调味</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=698">休闲食品<i>></i></a></dt>
                                        <dd><a href="category.php?id=887">休闲零食</a><a href="category.php?id=888">坚果炒货</a><a href="category.php?id=889">肉干肉脯</a><a href="category.php?id=890">蜜饯果干</a><a href="category.php?id=891">糖果/巧克力</a><a href="category.php?id=892">饼干蛋糕</a><a href="category.php?id=893">无糖食品</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=699">地方特产<i>></i></a></dt>
                                        <dd><a href="category.php?id=894">新疆</a><a href="category.php?id=895">四川</a><a href="category.php?id=896">云南</a><a href="category.php?id=897">湖南</a><a href="category.php?id=898">内蒙</a><a href="category.php?id=899">北京</a><a href="category.php?id=900">山西</a><a href="category.php?id=901">福建</a><a href="category.php?id=902">东北</a><a href="category.php?id=903">其他</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=700">茗茶<i>></i></a></dt>
                                        <dd><a href="category.php?id=904">铁观音</a><a href="category.php?id=905">普洱</a><a href="category.php?id=906">龙井</a><a href="category.php?id=907">绿茶</a><a href="category.php?id=908">红茶</a><a href="category.php?id=909">乌龙茶</a><a href="category.php?id=910">花草茶</a><a href="category.php?id=911">花果茶</a><a href="category.php?id=912">黑茶</a><a href="category.php?id=913">白茶</a><a href="category.php?id=914">养生茶</a><a href="category.php?id=915">其他茶</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=701">饮料冲调<i>></i></a></dt>
                                        <dd><a href="category.php?id=916">牛奶乳品</a><a href="category.php?id=917">饮料</a><a href="category.php?id=918">饮用水</a><a href="category.php?id=919">咖啡/奶茶</a><a href="category.php?id=920">蜂蜜/柚子茶</a><a href="category.php?id=921">冲饮谷物</a><a href="category.php?id=922">成人奶粉</a></dd>
                                    </dl>
                                                                        <dl class="fore7">
                                        <dt><a href="category.php?id=702">粮油调味<i>></i></a></dt>
                                        <dd><a href="category.php?id=923">米面杂粮</a><a href="category.php?id=924">食用油</a><a href="category.php?id=925">调味品</a><a href="category.php?id=926">南北干货</a><a href="category.php?id=927">方便食品</a><a href="category.php?id=928">有机食品</a><a href="category.php?id=935">环球美食</a><a href="category.php?id=936">产地直供</a></dd>
                                    </dl>
                                                                        <dl class="fore8">
                                        <dt><a href="category.php?id=703">生鲜食品<i>></i></a></dt>
                                        <dd><a href="category.php?id=929">水果蔬菜</a><a href="category.php?id=930">海鲜水产</a><a href="category.php?id=931">海参</a><a href="category.php?id=932">牛排</a><a href="category.php?id=933">肉禽蛋奶</a><a href="category.php?id=934">熟食腊味</a></dd>
                                    </dl>
                                                                        <dl class="fore9">
                                        <dt><a href="category.php?id=704">食品礼券<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:30:"食品饮料、酒类、生鲜";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:30:"食品饮料、酒类、生鲜";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore13">
                            <span><h3><a href="category.php?id=13">营养保健</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=705">营养健康<i>></i></a></dt>
                                        <dd><a href="category.php?id=937">调节免疫</a><a href="category.php?id=939">缓解疲劳</a><a href="category.php?id=940">美体塑身</a><a href="category.php?id=941">美容养颜</a><a href="category.php?id=943">肠胃养护</a><a href="category.php?id=946">改善睡眠</a></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=706">营养成分<i>></i></a></dt>
                                        <dd><a href="category.php?id=949">维生素/矿物质</a><a href="category.php?id=950">蛋白质</a><a href="category.php?id=951">鱼油/磷脂</a><a href="category.php?id=952">螺旋藻</a><a href="category.php?id=953">番茄红素</a><a href="category.php?id=954">叶酸</a><a href="category.php?id=955">葡萄籽</a><a href="category.php?id=956">左旋肉碱</a><a href="category.php?id=957">辅酶Q10</a><a href="category.php?id=958">益生菌</a><a href="category.php?id=959">玛咖</a><a href="category.php?id=960">膳食纤维</a><a href="category.php?id=961">牛初乳</a><a href="category.php?id=962">胶原蛋白</a><a href="category.php?id=963">大豆异黄酮</a><a href="category.php?id=964">芦荟提取</a><a href="category.php?id=965">酵素</a></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=707">传统滋补<i>></i></a></dt>
                                        <dd><a href="category.php?id=966">蜂产品</a><a href="category.php?id=967">阿胶</a><a href="category.php?id=968">参类</a><a href="category.php?id=969">冬虫夏草</a><a href="category.php?id=970">燕窝</a><a href="category.php?id=971">海参</a><a href="category.php?id=972">养生茶饮</a><a href="category.php?id=973">鹿茸</a><a href="category.php?id=974">灵芝</a><a href="category.php?id=975">药食同源</a></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=708">成人用品<i>></i></a></dt>
                                        <dd><a href="category.php?id=976">安全避孕</a><a href="category.php?id=977">验孕测孕</a><a href="category.php?id=978">人体润滑</a><a href="category.php?id=979">情爱玩具</a><a href="category.php?id=980">情趣内衣</a></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=709">保健器械<i>></i></a></dt>
                                        <dd><a href="category.php?id=981">血压仪器</a><a href="category.php?id=982">血糖用品</a><a href="category.php?id=983">养生器械</a><a href="category.php?id=984">康复辅助</a><a href="category.php?id=985">中医保健</a><a href="category.php?id=986">家庭护理</a><a href="category.php?id=987">呼吸制氧</a></dd>
                                    </dl>
                                                                        <dl class="fore6">
                                        <dt><a href="category.php?id=710">急救卫生<i>></i></a></dt>
                                        <dd><a href="category.php?id=988">口罩</a><a href="category.php?id=989">跌打损伤</a><a href="category.php?id=990">防裂抗冻</a><a href="category.php?id=991">眼部保健</a><a href="category.php?id=992">鼻炎健康</a></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                                                                <a href="brand.php?id=59&amp;cat=13"><img src="data/brandlogo/1408389072317069867.gif" alt="纽诺迪克 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=60&amp;cat=13"><img src="data/brandlogo/1408389079817514576.gif" alt="太太 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=61&amp;cat=13"><img src="data/brandlogo/1408389088273428177.gif" alt="养生堂 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=62&amp;cat=13"><img src="data/brandlogo/1408389094494256102.gif" alt="健安喜 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=63&amp;cat=13"><img src="data/brandlogo/1408389099241315294.gif" alt="东阿阿胶 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=64&amp;cat=13"><img src="data/brandlogo/1408389123539332672.gif" alt="康宝 (1)" /></a>
                                                                                                                                                                <a href="brand.php?id=66&amp;cat=13"><img src="data/brandlogo/1408389135311019767.gif" alt="维诺夫卡 (1)" /></a>
                                                                                                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"营养保健";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"营养保健";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                                <div class="item fore14">
                            <span><h3><a href="category.php?id=14">彩票、旅行、充值、票务</a></h3><s></s></span>
                            <div class="i-mc">
                                <div class="subitem">
                                                                        <dl class="fore1">
                                        <dt><a href="category.php?id=824">通讯充值<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore2">
                                        <dt><a href="category.php?id=825">游戏<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore3">
                                        <dt><a href="category.php?id=826">便利生活<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore4">
                                        <dt><a href="category.php?id=827">演出票务<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                                                        <dl class="fore5">
                                        <dt><a href="category.php?id=829">教育培训<i>></i></a></dt>
                                        <dd></dd>
                                    </dl>
                                     
                                </div>
                                <div class="cat-right-con fr" id="JD_sort_a">
                                	<div class="itemBrands">
                                    	                                    </div>
                                    <dl class="categorys-promotions">
                                        <dd>
                                            <ul>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"彩票、旅行、充值、票务";s:4:"type";s:19:"左侧导航广告1";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                                <li> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"彩票、旅行、充值、票务";s:4:"type";s:19:"左侧导航广告2";}554fcae493e564ee0dc75bdf2ebf94ca </li>
                                            </ul>
                                        </dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                                            </div>
                    <script>
                    $(function(){
						$("#_JD_ALLSORT .item").each(function(){
							var h=$(this).find(".i-mc").outerHeight();
							if( h<466){
								$(this).find(".i-mc").height(465);
							};
						});
					});
                    </script>
                </div>
                <ul id="navitems-2013">
                    <li class="fore1 curr"><a href="./index.php">首页</a></li>
                                        <li class="fore1 "><a href="article_cat.php?id=12" >资讯</a></li>
                                        <li class="fore2 "><a href="category.php?id=2" >手机、数码、通信</a></li>
                                        <li class="fore3 "><a href="category.php?id=4" >家居、家具、家装、厨具</a></li>
                                        <li class="fore4 "><a href="category.php?id=6" >童装</a></li>
                                        <li class="fore5 "><a href="category.php?id=3" >女鞋/男鞋</a></li>
                                        <li class="fore6 "><a href="category.php?id=5" >家用电器</a></li>
                                        <li class="fore7 "><a href="group_buy.php" >团购商品</a></li>
                                    </ul>
            </div>
        </div>
    </div>
</div> <script type="text/javascript" src="js/jd_index.js"></script><div class="w">
	<div id="o-slide"> <div id="slide" class="m indexAd">
	<ul class="slide-items slide-items-w">
    	        <li> <a href="http://" target="_blank"><img src="data/afficheimg/20150402soxiqt.jpg" width="730" height="454"></a> </li>
                <li> <a href="http://" target="_blank"><img src="data/afficheimg/20150402xixcgs.jpg" width="730" height="454"></a> </li>
            </ul>
    <ul class="slide-items slide-items-s">
    	    </ul>
    <div class="slide-controls slide-controls-w">
    	<div class="slideLiseCon"><span class="curr">1</span><span >2</span></div>
    </div>
    <div class="slide-controls slide-controls-s">
    	<div class="slideLiseCon"></div>
    </div>
    <a class="indexAd_qh prev" href="javascript:void(0)"><</a>
    <a class="indexAd_qh next" href="javascript:void(0)">></a>
</div>
</div>
  
  <div id="jdnews" class="m m1"> 
<div class="mt">
	<h2>站内快讯</h2>
    <div class="extra"><a href="article_cat.php?id=12" target="_blank">更多&nbsp;&gt;</a></div>
</div>
<div class="mc">
	<ul>
    	        <li ><a href="article.php?id=33" target="_blank" title="三星SGHU308说明书下载">三星SGHU308说明书下载</a></li>
                <li ><a href="article.php?id=32" target="_blank" title="手机游戏下载">手机游戏下载</a></li>
                <li ><a href="article.php?id=50" target="_blank" title="美国连发三大电脑故障">美国连发三大电脑故障</a></li>
                <li ><a href="article.php?id=49" target="_blank" title="微软缩小手机业务重点">微软缩小手机业务重点</a></li>
                <li ><a href="article.php?id=48" target="_blank" title="帮员工做好过渡">帮员工做好过渡</a></li>
                <li ><a href="article.php?id=47" target="_blank" title="7月8日，微软宣布将裁员7800人">7月8日，微软宣布将裁员7800...</a></li>
                <li ><a href="article.php?id=43" target="_blank" title="海尔品牌团 特价一天！">海尔品牌团 特价一天！</a></li>
                <li ><a href="article.php?id=42" target="_blank" title="手机7周年特惠盛典">手机7周年特惠盛典</a></li>
            </ul>
</div>
 </div>
  
  
  <div class="m _520_a_lifeandjourney_1 hover" id="virtuals-2014">
    <div class="mt">
    	<h2>其它服务</h2>
        <ul class="fore1 lh">
        	<!--<li class="fore1 abtest_huafei current"><a href="javascript:void(0);"><s></s>活动<i></i></a></li>-->
            <li class="fore2 abtest_lvxing"><a href="javascript:void(0);"><s></s>发货单<i></i></a></li>
            <li class="fore3 abtest_caipiao"><a href="javascript:void(0);"><s></s>订单<i></i></a></li>
            <li class="fore4 abtest_youxi"><a href="javascript:void(0);"><s></s>投票<i></i></a></li>
        </ul>
    </div>
    <div class="mc" style="position:absolute;">
      <div class="virtuals-iframes">
        <div class="virtuals-w"> 
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"3";s:3:"num";s:1:"1";}554fcae493e564ee0dc75bdf2ebf94ca </div>
        <div class="virtuals-s"> 
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"6";s:3:"num";s:1:"1";}554fcae493e564ee0dc75bdf2ebf94ca </div>
      </div>
      <div class="virtuals-iframes" id="txtMarquee-top"> 
<ul  id="brtup1ul" >
<li style="padding-top:6px;">
 <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			  <td width="45%" align="left">&nbsp;订单号:&nbsp;</td>
			  <td>2014073126550</td>
		  </tr>
		  <tr >
			  <td  align="left">&nbsp;发货单:&nbsp;</td>
			  <td ><form style="margin:0px" methods="post" action="http://115.238.100.211:8081/result.aspx" name="queryForm_444444" target="_blank"><input type="hidden" name="wen" value="444444" /><a href="javascript:document.forms['queryForm_444444'].submit();">444444</a></form></td>
		  </tr>
	  </table>
   <div style="height:10px; border-bottom:1px dashed #ccc; width:100%;"></div>
</li>
<li style="padding-top:6px;">
 <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			  <td width="45%" align="left">&nbsp;订单号:&nbsp;</td>
			  <td>2014073113030</td>
		  </tr>
		  <tr >
			  <td  align="left">&nbsp;发货单:&nbsp;</td>
			  <td ><form style="margin:0px" methods="post" action="http://115.238.100.211:8081/result.aspx" name="queryForm_5555" target="_blank"><input type="hidden" name="wen" value="5555" /><a href="javascript:document.forms['queryForm_5555'].submit();">5555</a></form></td>
		  </tr>
	  </table>
   <div style="height:10px; border-bottom:1px dashed #ccc; width:100%;"></div>
</li>
<li style="padding-top:6px;">
 <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			  <td width="45%" align="left">&nbsp;订单号:&nbsp;</td>
			  <td>2014080751421</td>
		  </tr>
		  <tr >
			  <td  align="left">&nbsp;发货单:&nbsp;</td>
			  <td ><form style="margin:0px" methods="post" action="http://115.238.100.211:8081/result.aspx" name="queryForm_3333" target="_blank"><input type="hidden" name="wen" value="3333" /><a href="javascript:document.forms['queryForm_3333'].submit();">3333</a></form></td>
		  </tr>
	  </table>
   <div style="height:10px; border-bottom:1px dashed #ccc; width:100%;"></div>
</li>
<li style="padding-top:6px;">
 <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			  <td width="45%" align="left">&nbsp;订单号:&nbsp;</td>
			  <td>2014081499923</td>
		  </tr>
		  <tr >
			  <td  align="left">&nbsp;发货单:&nbsp;</td>
			  <td ><form style="margin:0px" methods="post" action="http://115.238.100.211:8081/result.aspx" name="queryForm_2222" target="_blank"><input type="hidden" name="wen" value="2222" /><a href="javascript:document.forms['queryForm_2222'].submit();">2222</a></form></td>
		  </tr>
	  </table>
   <div style="height:10px; border-bottom:1px dashed #ccc; width:100%;"></div>
</li>
<li style="padding-top:6px;">
 <table width="100%" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			  <td width="45%" align="left">&nbsp;订单号:&nbsp;</td>
			  <td>2014081591904</td>
		  </tr>
		  <tr >
			  <td  align="left">&nbsp;发货单:&nbsp;</td>
			  <td ><form style="margin:0px" methods="post" action="http://115.238.100.211:8081/result.aspx" name="queryForm_1111111" target="_blank"><input type="hidden" name="wen" value="1111111" /><a href="javascript:document.forms['queryForm_1111111'].submit();">1111111</a></form></td>
		  </tr>
	  </table>
   <div style="height:10px; border-bottom:1px dashed #ccc; width:100%;"></div>
</li>
</ul>
 </div>
      <div class="virtuals-iframes"> 
<script>var invalid_order_sn = "无效订单号"</script>
<div style="padding:8px; ">
    <form name="ecsOrderQuery">
    <input type="text" name="order_sn" class="inputBg" /><br />
    <div class="blank5"></div>
    <input type="button" value="查询该订单号" class="bnt_blue_2" onclick="orderQuery()" />
    </form>
    <div id="ECS_ORDER_QUERY" style="margin-top:8px;">
          </div>
</div> </div>
      <div class="virtuals-iframes"> 
554fcae493e564ee0dc75bdf2ebf94cavote|a:1:{s:4:"name";s:4:"vote";}554fcae493e564ee0dc75bdf2ebf94ca </div>
    </div>
  </div>
  
   
</div>
<Div class="clear"></Div>
<div class="w todayRest">
	<div class="mt">
    	<div class="jd-clock-wrap">
        	<div class="jd-clock">
            	<i class="dian"></i>
                <div class="jd-clock-h" style="-webkit-transform: rotate(327deg);"></div>
                <div class="jd-clock-m"><i></i></div>
                <div class="jd-clock-s"><i></i></div>
            </div>
        </div>
    </div>
    
    <div class="jscroll" id="mscroll">
        <div class="ctrl" id="mscroll-ctrl-prev"><</div>
        <div class="ctrl" id="mscroll-ctrl-next">></div>
        <div class="o-list">
            <div class="list" id="mscroll-list">
                <ul class="mscroll-ul" >
                
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"2";s:3:"num";s:1:"9";}554fcae493e564ee0dc75bdf2ebf94ca
                </ul>
            </div>
        </div>
    </div>
    
</div>
554fcae493e564ee0dc75bdf2ebf94cabrowse_related_index|a:1:{s:4:"name";s:20:"browse_related_index";}554fcae493e564ee0dc75bdf2ebf94ca<div class="blank20"></div>
<div id="showcase" class="w advanced">
	<div class="m">
    	<div class="mt"><h2>众联特色购</h2></div>
        <div class="mc">
        	<div class="sc-list clearfix">
            	<div class="item fore1"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色1";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore2"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色2";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore3"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色3";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore4"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色4";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore5"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色5";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore6"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色6";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore7"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色7";}554fcae493e564ee0dc75bdf2ebf94ca </div>
                <div class="item fore8"> 554fcae493e564ee0dc75bdf2ebf94caads_pro|a:2:{s:4:"name";s:7:"ads_pro";s:4:"type";s:7:"特色8";}554fcae493e564ee0dc75bdf2ebf94ca </div>
            </div>
            <div class="blank10"></div>
            <div id="showcase-promotion-1" class="sc-bottom" style="display: block; ">
            	<div class="item">
                	
554fcae493e564ee0dc75bdf2ebf94caads|a:3:{s:4:"name";s:3:"ads";s:2:"id";s:1:"7";s:3:"num";s:1:"1";}554fcae493e564ee0dc75bdf2ebf94ca
                    
                </div>
            </div>
        </div>
    </div>
</div>
<div id="floors-list">
   
<div class="w catGoodsBox catGoodsSlide">
	<div class="mt">
    	<h2><i></i><span></span><font>家用电器</font></h2>
        <div class="hd_box">
        	<ul>
            	<!--<li><a href="javascript:;">热门<i></i></a></li>-->
            	                            	<li><a href="javascript:;">大 家 电<i></i></a></li>
                                                                                                                                                                            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:24:"分类下商品左广告";}554fcae493e564ee0dc75bdf2ebf94ca<i></i></div>
            <div class="themes Category">
            	<ul>
                                                            <!--<li class="fore1"><a href="category.php?id=90"><i></i><span>大 家 电</span></a></li>-->
                                                                                <!--<li class="fore2"><a href="category.php?id=93"><i></i><span>个护健康</span></a></li>-->
                                                                                <!--<li class="fore3"><a href="category.php?id=92"><i></i><span>厨房电器</span></a></li>-->
                                                                                <!--<li class="fore4"><a href="category.php?id=91"><i></i><span>生活电器</span></a></li>-->
                                                                                <!--<li class="fore5"><a href="category.php?id=94"><i></i><span>五金家装</span></a></li>-->
                                                        </ul>
            </div>
            <div class="words">
            	<ul>
                	
                    <div class="text"></div>
                    
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<!--<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:31:"分类下商品右侧小广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:31:"分类下商品右侧小广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:25:"分类下商品右广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:25:"分类下商品右广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:25:"分类下商品右广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:31:"分类下商品右侧小广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:31:"分类下商品右侧小广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore3">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:25:"分类下商品右广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                </div>
                <div class="bdSlider">
                	<div class="hd_Slider">
                    	<ul>
                        	<li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd_Slider">
                    	<ul>
                        	<li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:37:"分类下商品右侧幻灯片广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:37:"分类下商品右侧幻灯片广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:37:"分类下商品右侧幻灯片广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:12:"家用电器";s:4:"type";s:37:"分类下商品右侧幻灯片广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
            -->
        	                    	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=120" target="_blank" title="华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜"><img width="100" height="100" alt="华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜" src="images/201408/thumb_img/120_thumb_G_1408036989163.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=120" target="_blank" title="华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜">华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜</a></div>
                        <div class="pPrice">￥1799</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=119" target="_blank" title="美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜"><img width="100" height="100" alt="美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜" src="images/201408/thumb_img/119_thumb_G_1408036951326.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=119" target="_blank" title="美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜">美的(Midea) MXV-ZLP90Q05 嵌入式 消毒柜</a></div>
                        <div class="pPrice">￥1199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=118" target="_blank" title="康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜"><img width="100" height="100" alt="康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜" src="images/201408/thumb_img/118_thumb_G_1408036256413.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=118" target="_blank" title="康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜">康宝(Canbo) ZTP108E-11E 嵌入式 消毒柜</a></div>
                        <div class="pPrice">￥1398</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=117" target="_blank" title="美的(Midea) MXV-ZLP80K03 立式 消毒柜"><img width="100" height="100" alt="美的(Midea) MXV-ZLP80K03 立式 消毒柜" src="images/201408/thumb_img/117_thumb_G_1408036206367.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=117" target="_blank" title="美的(Midea) MXV-ZLP80K03 立式 消毒柜">美的(Midea) MXV-ZLP80K03 立式 消毒柜</a></div>
                        <div class="pPrice">￥499</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=116" target="_blank" title="康宝(Canbo) ZTP80A-3 立式 消毒柜"><img width="100" height="100" alt="康宝(Canbo) ZTP80A-3 立式 消毒柜" src="images/201408/thumb_img/116_thumb_G_1408036091315.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=116" target="_blank" title="康宝(Canbo) ZTP80A-3 立式 消毒柜">康宝(Canbo) ZTP80A-3 立式 消毒柜</a></div>
                        <div class="pPrice">￥499</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=115" target="_blank" title="志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶"><img width="100" height="100" alt="志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶" src="images/201408/thumb_img/115_thumb_G_1408036037724.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=115" target="_blank" title="志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层100瓶">志高(Chigo)JC-270L 压缩机恒温红酒柜 底层自由摆放/8月新款8层1...</a></div>
                        <div class="pPrice">￥2250</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=114" target="_blank" title="维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架"><img width="100" height="100" alt="维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架" src="images/201408/thumb_img/114_thumb_G_1408035994251.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=114" target="_blank" title="维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+展示层架">维诺卡夫(Vinocave) CWC-350AJP 压缩机恒温红酒柜 配挂杯架+...</a></div>
                        <div class="pPrice">￥3380</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=113" target="_blank" title="维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架"><img width="100" height="100" alt="维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架" src="images/201408/thumb_img/113_thumb_G_1408035966347.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=113" target="_blank" title="维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示层架">维诺卡夫(Vinocave) CWC-200A 压缩机恒温红酒柜 配挂杯架+展示...</a></div>
                        <div class="pPrice">￥2980</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=112" target="_blank" title="维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜"><img width="100" height="100" alt="维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜" src="images/201408/thumb_img/112_thumb_G_1408035931380.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=112" target="_blank" title="维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜">维诺卡夫(Vinocave) SC-28AJPM电子恒温红酒柜</a></div>
                        <div class="pPrice">￥1180</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=111" target="_blank" title="维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜"><img width="100" height="100" alt="维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜" src="images/201408/thumb_img/111_thumb_G_1408035901498.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=111" target="_blank" title="维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜">维诺卡夫(Vinocave)冰吧冰柜SC-28AJP电子恒温红酒柜</a></div>
                        <div class="pPrice">￥880</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=135" target="_blank" title="飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）"><img width="100" height="100" alt="飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）" src="images/201408/thumb_img/135_thumb_G_1408038331486.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=135" target="_blank" title="飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）">飞科（FLYCO）FS358全身水洗充电式三刀头电动剃须刀（银色）</a></div>
                        <div class="pPrice">￥129</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=134" target="_blank" title="飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）"><img width="100" height="100" alt="飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）" src="images/201408/thumb_img/134_thumb_G_1408038301530.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=134" target="_blank" title="飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）">飞科（FLYCO）FS711充电式双刀头电动剃须刀（黑色）</a></div>
                        <div class="pPrice">￥39</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=133" target="_blank" title="飞利浦(Philips) RQ311 电动剃须刀"><img width="100" height="100" alt="飞利浦(Philips) RQ311 电动剃须刀" src="images/201408/thumb_img/133_thumb_G_1408038271922.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=133" target="_blank" title="飞利浦(Philips) RQ311 电动剃须刀">飞利浦(Philips) RQ311 电动剃须刀</a></div>
                        <div class="pPrice">￥239</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=132" target="_blank" title="飞利浦（PHILIPS） PQ182/16 电动剃须刀"><img width="100" height="100" alt="飞利浦（PHILIPS） PQ182/16 电动剃须刀" src="images/201408/thumb_img/132_thumb_G_1408038228091.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=132" target="_blank" title="飞利浦（PHILIPS） PQ182/16 电动剃须刀">飞利浦（PHILIPS） PQ182/16 电动剃须刀</a></div>
                        <div class="pPrice">￥99</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=131" target="_blank" title="飞利浦（Philips）RQ310 锐锋系列电动剃须刀"><img width="100" height="100" alt="飞利浦（Philips）RQ310 锐锋系列电动剃须刀" src="images/201408/thumb_img/131_thumb_G_1408038199138.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=131" target="_blank" title="飞利浦（Philips）RQ310 锐锋系列电动剃须刀">飞利浦（Philips）RQ310 锐锋系列电动剃须刀</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=20" target="_blank" title="香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃"><img width="100" height="100" alt="香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃" src="images/201407/thumb_img/20_thumb_G_1406496819827.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=20" target="_blank" title="香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃">香山（CAMRY） EB9005L 圆形电子秤 体重秤 透明玻璃</a></div>
                        <div class="pPrice">￥59</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=19" target="_blank" title="九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910"><img width="100" height="100" alt="九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910" src="images/201407/thumb_img/19_thumb_G_1406496704234.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=19" target="_blank" title="九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-5910">九安/Andon 家用全自动智能 上臂式 电子血压计 血压仪 血压计KD-591...</a></div>
                        <div class="pPrice">￥109</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=18" target="_blank" title="华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）"><img width="100" height="100" alt="华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）" src="images/201407/thumb_img/18_thumb_G_1406496660616.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=18" target="_blank" title="华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）">华盛昌（CEM）DT-8806S 红外线人体测温仪 体温计（精致版）</a></div>
                        <div class="pPrice">￥99</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=17" target="_blank" title="雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机"><img width="100" height="100" alt="雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机" src="images/201407/thumb_img/17_thumb_G_1406496601297.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=17" target="_blank" title="雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机">雷瓦（RIWA） RC-643A 专业静音1800W大功率恒温负离子电吹风吹风机</a></div>
                        <div class="pPrice">￥89</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=16" target="_blank" title="力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）"><img width="100" height="100" alt="力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）" src="images/201407/thumb_img/16_thumb_G_1406496556239.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=16" target="_blank" title="力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）">力博得（Lebond）ilife家庭系列升级版 I3声波电动牙刷（和谐蓝）</a></div>
                        <div class="pPrice">￥599</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=130" target="_blank" title="奔腾（POVOS） LN5152 电压力锅 5L"><img width="100" height="100" alt="奔腾（POVOS） LN5152 电压力锅 5L" src="images/201408/thumb_img/130_thumb_G_1408038003484.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=130" target="_blank" title="奔腾（POVOS） LN5152 电压力锅 5L">奔腾（POVOS） LN5152 电压力锅 5L</a></div>
                        <div class="pPrice">￥0</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=129" target="_blank" title="美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅"><img width="100" height="100" alt="美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅" src="images/201408/thumb_img/129_thumb_G_1408037931843.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=129" target="_blank" title="美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅">美的（Midea） W13PCS503E 易拆洗一手开系列 5L电压力锅</a></div>
                        <div class="pPrice">￥289</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=128" target="_blank" title="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1"><img width="100" height="100" alt="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1" src="images/201408/thumb_img/128_thumb_G_1408037886026.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=128" target="_blank" title="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1">九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1</a></div>
                        <div class="pPrice">￥208</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=127" target="_blank" title="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1"><img width="100" height="100" alt="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1" src="images/201408/thumb_img/127_thumb_G_1408037863991.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=127" target="_blank" title="九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1">九阳（Joyoung） 5升电脑板电压力锅JYY-50YL1</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=126" target="_blank" title="美的(midea) W12PCS505E 电压力锅 5L多功能电脑版"><img width="100" height="100" alt="美的(midea) W12PCS505E 电压力锅 5L多功能电脑版" src="images/201408/thumb_img/126_thumb_G_1408037827510.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=126" target="_blank" title="美的(midea) W12PCS505E 电压力锅 5L多功能电脑版">美的(midea) W12PCS505E 电压力锅 5L多功能电脑版</a></div>
                        <div class="pPrice">￥299</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=39" target="_blank" title="小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）"><img width="100" height="100" alt="小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）" src="images/201407/thumb_img/39_thumb_G_1406499391304.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=39" target="_blank" title="小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）">小熊（Bear) ZDQ-2191 多功能双层煎烙煮蛋器 14个蛋 （橙黄色）</a></div>
                        <div class="pPrice">￥148</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=38" target="_blank" title="九阳（Joyoung）JYZS-K423 紫砂电炖锅 4L"><img width="100" height="100" alt="九阳（Joyoung）JYZS-K423 紫砂电炖锅 4L" src="images/201407/thumb_img/38_thumb_G_1406499360982.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=38" target="_blank" title="九阳（Joyoung）JYZS-K423 紫砂电炖锅 4L">九阳（Joyoung）JYZS-K423 紫砂电炖锅 4L</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=28" target="_blank" title="意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）"><img width="100" height="100" alt="意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）" src="images/201407/thumb_img/28_thumb_G_1406497460391.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=28" target="_blank" title="意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）">意大利德龙(DeLonghi) ESAM2200 EX:1 全自动咖啡机（银色）</a></div>
                        <div class="pPrice">￥5599</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=27" target="_blank" title="松下（Panasonic） SD-PM105 面包机"><img width="100" height="100" alt="松下（Panasonic） SD-PM105 面包机" src="images/201407/thumb_img/27_thumb_G_1406497395536.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=27" target="_blank" title="松下（Panasonic） SD-PM105 面包机">松下（Panasonic） SD-PM105 面包机</a></div>
                        <div class="pPrice">￥1599</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=26" target="_blank" title="利仁（Liven）LRT-310A 电饼铛 香槟金"><img width="100" height="100" alt="利仁（Liven）LRT-310A 电饼铛 香槟金" src="images/201407/thumb_img/26_thumb_G_1406497331534.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=26" target="_blank" title="利仁（Liven）LRT-310A 电饼铛 香槟金">利仁（Liven）LRT-310A 电饼铛 香槟金</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=125" target="_blank" title="艾美特(Airmate) FTW36T2-A 电风扇/塔扇"><img width="100" height="100" alt="艾美特(Airmate) FTW36T2-A 电风扇/塔扇" src="images/201408/thumb_img/125_thumb_G_1408037781672.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=125" target="_blank" title="艾美特(Airmate) FTW36T2-A 电风扇/塔扇">艾美特(Airmate) FTW36T2-A 电风扇/塔扇</a></div>
                        <div class="pPrice">￥249</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=124" target="_blank" title="艾美特(Airmate) FSW27T2-5 电风扇/落地扇"><img width="100" height="100" alt="艾美特(Airmate) FSW27T2-5 电风扇/落地扇" src="images/201408/thumb_img/124_thumb_G_1408037748638.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=124" target="_blank" title="艾美特(Airmate) FSW27T2-5 电风扇/落地扇">艾美特(Airmate) FSW27T2-5 电风扇/落地扇</a></div>
                        <div class="pPrice">￥179</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=123" target="_blank" title="艾美特(Airmate) FT42R 电风扇/遥控塔扇"><img width="100" height="100" alt="艾美特(Airmate) FT42R 电风扇/遥控塔扇" src="images/201408/thumb_img/123_thumb_G_1408037702822.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=123" target="_blank" title="艾美特(Airmate) FT42R 电风扇/遥控塔扇">艾美特(Airmate) FT42R 电风扇/遥控塔扇</a></div>
                        <div class="pPrice">￥269</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=122" target="_blank" title="艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇"><img width="100" height="100" alt="艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇" src="images/201408/thumb_img/122_thumb_G_1408037526563.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=122" target="_blank" title="艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇">艾美特(Airmate) FSW65R-5 电风扇/遥控落地扇</a></div>
                        <div class="pPrice">￥189</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=121" target="_blank" title="艾美特(Airmate) FSW52R 电风扇/遥控落地扇"><img width="100" height="100" alt="艾美特(Airmate) FSW52R 电风扇/遥控落地扇" src="images/201408/thumb_img/121_thumb_G_1408037492638.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=121" target="_blank" title="艾美特(Airmate) FSW52R 电风扇/遥控落地扇">艾美特(Airmate) FSW52R 电风扇/遥控落地扇</a></div>
                        <div class="pPrice">￥169</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=51" target="_blank" title="公牛（BULL) GN-110 3米 插座"><img width="100" height="100" alt="公牛（BULL) GN-110 3米 插座" src="images/201407/thumb_img/51_thumb_G_1406500301068.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=51" target="_blank" title="公牛（BULL) GN-110 3米 插座">公牛（BULL) GN-110 3米 插座</a></div>
                        <div class="pPrice">￥63</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=50" target="_blank" title="飞利浦（PHILIPS）AZ5740/93 DVD 唱机 USB 磁带CD 唱机收录机 银黑色"><img width="100" height="100" alt="飞利浦（PHILIPS）AZ5740/93 DVD 唱机 USB 磁带CD 唱机收录机 银黑色" src="images/201407/thumb_img/50_thumb_G_1406500264617.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=50" target="_blank" title="飞利浦（PHILIPS）AZ5740/93 DVD 唱机 USB 磁带CD 唱机收录机 银黑色">飞利浦（PHILIPS）AZ5740/93 DVD 唱机 USB 磁带CD 唱机...</a></div>
                        <div class="pPrice">￥699</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=49" target="_blank" title="飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色"><img width="100" height="100" alt="飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色" src="images/201407/thumb_img/49_thumb_G_1406500221151.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=49" target="_blank" title="飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色">飞利浦（PHILIPS） CORD118大屏幕，免电池工作 来电显示电话机 黑色</a></div>
                        <div class="pPrice">￥70</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=48" target="_blank" title="美菱（Meiling）SJ-262E除湿机/抽湿机/除湿器"><img width="100" height="100" alt="美菱（Meiling）SJ-262E除湿机/抽湿机/除湿器" src="images/201407/thumb_img/48_thumb_G_1406500169110.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=48" target="_blank" title="美菱（Meiling）SJ-262E除湿机/抽湿机/除湿器">美菱（Meiling）SJ-262E除湿机/抽湿机/除湿器</a></div>
                        <div class="pPrice">￥1160</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=47" target="_blank" title="海尔（Haier） HGS-2032 蒸汽挂烫机（橙+黑）"><img width="100" height="100" alt="海尔（Haier） HGS-2032 蒸汽挂烫机（橙+黑）" src="images/201407/thumb_img/47_thumb_G_1406500119826.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=47" target="_blank" title="海尔（Haier） HGS-2032 蒸汽挂烫机（橙+黑）">海尔（Haier） HGS-2032 蒸汽挂烫机（橙+黑）</a></div>
                        <div class="pPrice">￥179</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=140" target="_blank" title="山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具"><img width="100" height="100" alt="山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具" src="images/201408/thumb_img/140_thumb_G_1408038607652.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=140" target="_blank" title="山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动工具">山崎(ASAKI)4.8伏家用充电式电动起子螺丝刀小电钻(带磁性)/充电电池电动...</a></div>
                        <div class="pPrice">￥126</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=139" target="_blank" title="新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲"><img width="100" height="100" alt="新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲" src="images/201408/thumb_img/139_thumb_G_1408038567856.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=139" target="_blank" title="新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀起子 TSR1080-2-Li单电 一电一冲">新款BOSCH博世TSR 1080-2-LI锂电钻充电手电钻多功能家用电动螺丝刀...</a></div>
                        <div class="pPrice">￥372</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=138" target="_blank" title="老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批"><img width="100" height="100" alt="老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批" src="images/201408/thumb_img/138_thumb_G_1408038526431.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=138" target="_blank" title="老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充电批">老A（LAOA) 电动工具双速12V锂电池充电钻/手电钻/电起子/电动螺丝刀/充...</a></div>
                        <div class="pPrice">￥219</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=137" target="_blank" title="宝工（Pro'skit） PT-5501I 可调速软轴电磨组"><img width="100" height="100" alt="宝工（Pro'skit） PT-5501I 可调速软轴电磨组" src="images/201408/thumb_img/137_thumb_G_1408038494314.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=137" target="_blank" title="宝工（Pro'skit） PT-5501I 可调速软轴电磨组">宝工（Pro'skit） PT-5501I 可调速软轴电磨组</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=136" target="_blank" title="博世(Bosch)GSB600RE set 13毫米冲击钻套装"><img width="100" height="100" alt="博世(Bosch)GSB600RE set 13毫米冲击钻套装" src="images/201408/thumb_img/136_thumb_G_1408038460145.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=136" target="_blank" title="博世(Bosch)GSB600RE set 13毫米冲击钻套装">博世(Bosch)GSB600RE set 13毫米冲击钻套装</a></div>
                        <div class="pPrice">￥399</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=52" target="_blank" title="海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色"><img width="100" height="100" alt="海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色" src="images/201407/thumb_img/52_thumb_G_1406500407096.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=52" target="_blank" title="海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色">海燕（HAIYAN） ZD-BV4 阻燃 塑铜线100米 双色</a></div>
                        <div class="pPrice">￥460</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=37" target="_blank" title="宝工（Pro'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用"><img width="100" height="100" alt="宝工（Pro'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用" src="images/201407/thumb_img/37_thumb_G_1406499266752.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=37" target="_blank" title="宝工（Pro'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接两用">宝工（Pro'skit) SS-989H 2合1SMD吹焊台 700W 热风焊接...</a></div>
                        <div class="pPrice">￥630</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=36" target="_blank" title="史丹利（Stanley）家用工具箱套装多用组套工具LT-802A-23"><img width="100" height="100" alt="史丹利（Stanley）家用工具箱套装多用组套工具LT-802A-23" src="images/201407/thumb_img/36_thumb_G_1406499228274.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=36" target="_blank" title="史丹利（Stanley）家用工具箱套装多用组套工具LT-802A-23">史丹利（Stanley）家用工具箱套装多用组套工具LT-802A-23</a></div>
                        <div class="pPrice">￥299</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=35" target="_blank" title="博深（Bosun） 7803 26双功能电锤 800W功率"><img width="100" height="100" alt="博深（Bosun） 7803 26双功能电锤 800W功率" src="images/201407/thumb_img/35_thumb_G_1406499137431.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=35" target="_blank" title="博深（Bosun） 7803 26双功能电锤 800W功率">博深（Bosun） 7803 26双功能电锤 800W功率</a></div>
                        <div class="pPrice">￥298</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=34" target="_blank" title="贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装"><img width="100" height="100" alt="贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装" src="images/201407/thumb_img/34_thumb_G_1406498733504.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=34" target="_blank" title="贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装">贝乐卫浴（ballee) G17-4 毛巾架浴巾架多功能套装</a></div>
                        <div class="pPrice">￥299</div>
                    </li>
                                    </ul>
            </div>
                                </div>
    </div>
</div><div class="w catGoodsBox catGoodsSlide">
	<div class="mt">
    	<h2><i></i><span></span><font>电脑、办公</font></h2>
        <div class="hd_box">
        	<ul>
            	<!--<li><a href="javascript:;">热门<i></i></a></li>-->
            	                            	<li><a href="javascript:;">电脑整机<i></i></a></li>
                                                                                                                                                                                                                                            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:24:"分类下商品左广告";}554fcae493e564ee0dc75bdf2ebf94ca<i></i></div>
            <div class="themes Category">
            	<ul>
                                                            <!--<li class="fore1"><a href="category.php?id=244"><i></i><span>电脑整机</span></a></li>-->
                                                                                <!--<li class="fore2"><a href="category.php?id=245"><i></i><span>电脑配件</span></a></li>-->
                                                                                <!--<li class="fore3"><a href="category.php?id=246"><i></i><span>外设产品</span></a></li>-->
                                                                                <!--<li class="fore4"><a href="category.php?id=247"><i></i><span>网络产品</span></a></li>-->
                                                                                <!--<li class="fore5"><a href="category.php?id=248"><i></i><span>办公打印</span></a></li>-->
                                                                                <!--<li class="fore6"><a href="category.php?id=249"><i></i><span>办公文仪</span></a></li>-->
                                                                                                </ul>
            </div>
            <div class="words">
            	<ul>
                	
                    <div class="text"></div>
                    
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<!--<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:31:"分类下商品右侧小广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:31:"分类下商品右侧小广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:25:"分类下商品右广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:25:"分类下商品右广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:25:"分类下商品右广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:31:"分类下商品右侧小广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:31:"分类下商品右侧小广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore3">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:25:"分类下商品右广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                </div>
                <div class="bdSlider">
                	<div class="hd_Slider">
                    	<ul>
                        	<li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd_Slider">
                    	<ul>
                        	<li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:37:"分类下商品右侧幻灯片广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:37:"分类下商品右侧幻灯片广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:37:"分类下商品右侧幻灯片广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:15:"电脑、办公";s:4:"type";s:37:"分类下商品右侧幻灯片广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
            -->
        	                    	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=142" target="_blank" title="清华同方（THTF） 锋锐K560 15.6英寸笔记本(i7-4702MQ 8G 1T GT840M 2G独显 25.3mm超薄机身)咖啡金"><img width="100" height="100" alt="清华同方（THTF） 锋锐K560 15.6英寸笔记本(i7-4702MQ 8G 1T GT840M 2G独显 25.3mm超薄机身)咖啡金" src="images/201408/thumb_img/142_thumb_G_1408400346592.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=142" target="_blank" title="清华同方（THTF） 锋锐K560 15.6英寸笔记本(i7-4702MQ 8G 1T GT840M 2G独显 25.3mm超薄机身)咖啡金">清华同方（THTF） 锋锐K560 15.6英寸笔记本(i7-4702MQ 8G...</a></div>
                        <div class="pPrice">￥0</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=141" target="_blank" title="海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色"><img width="100" height="100" alt="海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色" src="images/201408/thumb_img/141_thumb_G_1408400311748.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=141" target="_blank" title="海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色">海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G ...</a></div>
                        <div class="pPrice">￥4499</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=60" target="_blank" title="联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色"><img width="100" height="100" alt="联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色" src="images/201407/thumb_img/60_thumb_G_1406502424054.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=60" target="_blank" title="联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 500G DVD刻录 Dos）白色">联想（Lenovo） C245 18.5英寸一体电脑（E1-1200 2G 50...</a></div>
                        <div class="pPrice">￥1999</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=59" target="_blank" title="微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）"><img width="100" height="100" alt="微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）" src="images/201407/thumb_img/59_thumb_G_1406502346659.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=59" target="_blank" title="微软（Microsoft） Surface2 64G（Tegra 4四核 2G内存 64G硬盘 1080P高清屏 USB3.0）">微软（Microsoft） Surface2 64G（Tegra 4四核 2G内...</a></div>
                        <div class="pPrice">￥4088</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=58" target="_blank" title="机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色"><img width="100" height="100" alt="机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色" src="images/201407/thumb_img/58_thumb_G_1406502297662.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=58" target="_blank" title="机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702MQ 4G 64G SSD+1T机械 GTX850M 游戏键盘)黑色">机械革命（MECHREVO） MR X3 升级版 14英寸游戏本(i7-4702...</a></div>
                        <div class="pPrice">￥4999</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=57" target="_blank" title="华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)"><img width="100" height="100" alt="华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)" src="images/201407/thumb_img/57_thumb_G_1406502251842.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=57" target="_blank" title="华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 750G GT750M 2G独显 1920x1080 Win8 黑色)">华硕（ASUS） N550JV 15.6英寸笔记本(i5-4200H 4G 75...</a></div>
                        <div class="pPrice">￥5999</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=56" target="_blank" title="惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）"><img width="100" height="100" alt="惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）" src="images/201407/thumb_img/56_thumb_G_1406502138545.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=56" target="_blank" title="惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4G 750GB GT820M 2G独显 DOS）">惠普（HP） CQ14-a104TX 14英寸笔记本电脑 （i5-4200M 4...</a></div>
                        <div class="pPrice">￥3199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=55" target="_blank" title="宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色"><img width="100" height="100" alt="宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色" src="images/201407/thumb_img/55_thumb_G_1406502466933.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=55" target="_blank" title="宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G 500G GT840M 2G独显 win8.1 料号59TB）银色">宏碁（acer） V3-572G 15.6英寸超薄本 （i5-4210U 4G ...</a></div>
                        <div class="pPrice">￥3599</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=54" target="_blank" title="雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑"><img width="100" height="100" alt="雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑" src="images/201407/thumb_img/54_thumb_G_1406501940558.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=54" target="_blank" title="雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710HQ 4G 500G GTX850M 2G DDR5 背光键盘 全高清屏）黑">雷神（ThundeRobot）911-E1 15.6英寸游戏本（i7-4710H...</a></div>
                        <div class="pPrice">￥6499</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=53" target="_blank" title="联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）"><img width="100" height="100" alt="联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）" src="images/201407/thumb_img/53_thumb_G_1406501874150.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=53" target="_blank" title="联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G 1T 2G独显 摄像头 DVD刻 Win8）">联想（Lenovo） Y400N 14.0英寸笔记本电脑（i5-3230M 4G...</a></div>
                        <div class="pPrice">￥4899</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                </div>
    </div>
</div><div class="w catGoodsBox catGoodsSlide">
	<div class="mt">
    	<h2><i></i><span></span><font>服饰内衣、珠宝首饰</font></h2>
        <div class="hd_box">
        	<ul>
            	<!--<li><a href="javascript:;">热门<i></i></a></li>-->
            	                            	<li><a href="javascript:;">女装<i></i></a></li>
                                                                                                                                                                            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:24:"分类下商品左广告";}554fcae493e564ee0dc75bdf2ebf94ca<i></i></div>
            <div class="themes Category">
            	<ul>
                                                            <!--<li class="fore1"><a href="category.php?id=711"><i></i><span>女装</span></a></li>-->
                                                                                <!--<li class="fore2"><a href="category.php?id=712"><i></i><span>男装</span></a></li>-->
                                                                                <!--<li class="fore3"><a href="category.php?id=713"><i></i><span>内衣</span></a></li>-->
                                                                                <!--<li class="fore4"><a href="category.php?id=714"><i></i><span>服饰配件</span></a></li>-->
                                                                                <!--<li class="fore5"><a href="category.php?id=715"><i></i><span>珠宝首饰</span></a></li>-->
                                                        </ul>
            </div>
            <div class="words">
            	<ul>
                	
                    <div class="text"></div>
                    
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<!--<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:31:"分类下商品右侧小广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:31:"分类下商品右侧小广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:25:"分类下商品右广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:25:"分类下商品右广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:25:"分类下商品右广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:31:"分类下商品右侧小广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:31:"分类下商品右侧小广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore3">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:25:"分类下商品右广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                </div>
                <div class="bdSlider">
                	<div class="hd_Slider">
                    	<ul>
                        	<li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd_Slider">
                    	<ul>
                        	<li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:37:"分类下商品右侧幻灯片广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:37:"分类下商品右侧幻灯片广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:37:"分类下商品右侧幻灯片广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:27:"服饰内衣、珠宝首饰";s:4:"type";s:37:"分类下商品右侧幻灯片广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
            -->
        	                    	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=68" target="_blank" title="莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M"><img width="100" height="100" alt="莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M" src="images/201407/thumb_img/68_thumb_G_1406503025139.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=68" target="_blank" title="莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M">莱雪曼2014夏装上新蕾丝镂空拼接修身连衣裙两件套8272 黑色 M</a></div>
                        <div class="pPrice">￥138</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=67" target="_blank" title="誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M"><img width="100" height="100" alt="誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M" src="images/201407/thumb_img/67_thumb_G_1406502995304.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=67" target="_blank" title="誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M">誉彩 2014夏季新款无袖碎花长裙 大码女装裙子 韩版修身大摆连衣裙 兰花 M</a></div>
                        <div class="pPrice">￥179</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=66" target="_blank" title="时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M"><img width="100" height="100" alt="时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M" src="images/201407/thumb_img/66_thumb_G_1406502944980.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=66" target="_blank" title="时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D8618 白配大红 M">时竟 2014夏季女装新款时尚气质OL显瘦一字领套装两件套套裙 修身连衣裙D86...</a></div>
                        <div class="pPrice">￥169</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=65" target="_blank" title="琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M"><img width="100" height="100" alt="琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M" src="images/201407/thumb_img/65_thumb_G_1406502906479.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=65" target="_blank" title="琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 M">琼瑛女装2014夏季新款 韩版修身圆领雪纺连衣裙短袖纯色提花裙子3368 黄色 ...</a></div>
                        <div class="pPrice">￥138</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=64" target="_blank" title="俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M"><img width="100" height="100" alt="俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M" src="images/201407/thumb_img/64_thumb_G_1406502869209.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=64" target="_blank" title="俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖打底连衣裙 白色 M">俏妮妃 2014夏装新款时尚韩版女装 雪纺连衣裙圆领气质修身显瘦休闲OL淑女短袖...</a></div>
                        <div class="pPrice">￥145</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=63" target="_blank" title="丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M"><img width="100" height="100" alt="丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M" src="images/201407/thumb_img/63_thumb_G_1406502822723.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=63" target="_blank" title="丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M">丝露怡语 2014夏雪纺撞色青花瓷修身连衣裙女 661 9919蓝色 M</a></div>
                        <div class="pPrice">￥139</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=62" target="_blank" title="HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M"><img width="100" height="100" alt="HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M" src="images/201407/thumb_img/62_thumb_G_1406502731512.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=62" target="_blank" title="HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ109 水蓝 M">HARMARYCIAGA2014女装夏新款修身气质甜美糖果色假两件无袖连衣裙QZ...</a></div>
                        <div class="pPrice">￥128</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=61" target="_blank" title="刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M"><img width="100" height="100" alt="刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M" src="images/201407/thumb_img/61_thumb_G_1406502691863.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=61" target="_blank" title="刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 M">刊菲(kanfei) 2014夏季新款修身中袖韩国金线蕾丝连衣裙9068 金色 ...</a></div>
                        <div class="pPrice">￥168</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                </div>
    </div>
</div><div class="w catGoodsBox catGoodsSlide">
	<div class="mt">
    	<h2><i></i><span></span><font>家居、家具、家装、厨具</font></h2>
        <div class="hd_box">
        	<ul>
            	<!--<li><a href="javascript:;">热门<i></i></a></li>-->
            	                            	<li><a href="javascript:;">家纺<i></i></a></li>
                                                                                                                                                                                                                                            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:24:"分类下商品左广告";}554fcae493e564ee0dc75bdf2ebf94ca<i></i></div>
            <div class="themes Category">
            	<ul>
                                                            <!--<li class="fore1"><a href="category.php?id=330"><i></i><span>家纺</span></a></li>-->
                                                                                <!--<li class="fore2"><a href="category.php?id=328"><i></i><span>厨具</span></a></li>-->
                                                                                <!--<li class="fore3"><a href="category.php?id=329"><i></i><span>家装建材</span></a></li>-->
                                                                                <!--<li class="fore4"><a href="category.php?id=331"><i></i><span>家具</span></a></li>-->
                                                                                <!--<li class="fore5"><a href="category.php?id=332"><i></i><span>灯具</span></a></li>-->
                                                                                <!--<li class="fore6"><a href="category.php?id=333"><i></i><span>生活日用</span></a></li>-->
                                                                                                </ul>
            </div>
            <div class="words">
            	<ul>
                	
                    <div class="text"></div>
                    
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<!--<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:31:"分类下商品右侧小广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:31:"分类下商品右侧小广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:25:"分类下商品右广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:25:"分类下商品右广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:25:"分类下商品右广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:31:"分类下商品右侧小广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:31:"分类下商品右侧小广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore3">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:25:"分类下商品右广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                </div>
                <div class="bdSlider">
                	<div class="hd_Slider">
                    	<ul>
                        	<li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd_Slider">
                    	<ul>
                        	<li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:37:"分类下商品右侧幻灯片广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:37:"分类下商品右侧幻灯片广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:37:"分类下商品右侧幻灯片广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:33:"家居、家具、家装、厨具";s:4:"type";s:37:"分类下商品右侧幻灯片广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
            -->
        	                    	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=83" target="_blank" title="九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床"><img width="100" height="100" alt="九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床" src="images/201407/thumb_img/83_thumb_G_1406503766514.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=83" target="_blank" title="九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床">九洲鹿全工艺100%全棉超耐磨转移印花四件套 北京遇上西雅图 1.8米床</a></div>
                        <div class="pPrice">￥159</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=82" target="_blank" title="么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床"><img width="100" height="100" alt="么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床" src="images/201407/thumb_img/82_thumb_G_1406503733665.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=82" target="_blank" title="么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1.8米床">么小毛家纺 床上用品欧式经典 莫代尔全棉大提花 床单式婚庆四件套 加州记忆 1....</a></div>
                        <div class="pPrice">￥488</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=81" target="_blank" title="爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米"><img width="100" height="100" alt="爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米" src="images/201407/thumb_img/81_thumb_G_1406503698389.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=81" target="_blank" title="爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米">爱斯基摩人 四件套 纯棉床上用品 斜纹家纺 双人 丽人风尚 1.5米/1.8米</a></div>
                        <div class="pPrice">￥169</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=80" target="_blank" title="绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用"><img width="100" height="100" alt="绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用" src="images/201407/thumb_img/80_thumb_G_1406503667991.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=80" target="_blank" title="绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 1.5-1.8米床适用">绿野仙踪床上用品 全棉斜纹印花套件纯棉四件套 1.5/1.8米床 醉花樱-玫红 ...</a></div>
                        <div class="pPrice">￥139</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=79" target="_blank" title="九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床"><img width="100" height="100" alt="九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床" src="images/201407/thumb_img/79_thumb_G_1406503627548.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=79" target="_blank" title="九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 1.5米床">九洲鹿 100%全棉斜纹印花套件纯棉四件套 1.5米1.8米床 北京遇上西雅图 ...</a></div>
                        <div class="pPrice">￥129</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=78" target="_blank" title="巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套"><img width="100" height="100" alt="巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套" src="images/201407/thumb_img/78_thumb_G_1406503592733.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=78" target="_blank" title="巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 1.8m床四件套">巧布万棉家纺 床品件套 贡缎提花绣花1.5/1.8米婚庆四件套 舞动时尚-米白 ...</a></div>
                        <div class="pPrice">￥249</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=77" target="_blank" title="富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床"><img width="100" height="100" alt="富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床" src="images/201407/thumb_img/77_thumb_G_1406503551340.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=77" target="_blank" title="富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1.8m(6英尺)床">富安娜家纺 圣之花床品套件 全棉清新田园 纯棉印花双人四件套 淑姿丰盈 蓝色 1...</a></div>
                        <div class="pPrice">￥398</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=76" target="_blank" title="胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床"><img width="100" height="100" alt="胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床" src="images/201407/thumb_img/76_thumb_G_1406503516258.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=76" target="_blank" title="胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床">胜伟 高支棉斜纹四件套裸婚时代100%棉1.5/1.8米床</a></div>
                        <div class="pPrice">￥149</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                </div>
    </div>
</div><div class="w catGoodsBox catGoodsSlide">
	<div class="mt">
    	<h2><i></i><span></span><font>母婴、玩具乐器</font></h2>
        <div class="hd_box">
        	<ul>
            	<!--<li><a href="javascript:;">热门<i></i></a></li>-->
            	                            	<li><a href="javascript:;">奶粉<i></i></a></li>
                                                                                                                                                                                                                                                                            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:24:"分类下商品左广告";}554fcae493e564ee0dc75bdf2ebf94ca<i></i></div>
            <div class="themes Category">
            	<ul>
                                                            <!--<li class="fore1"><a href="category.php?id=688"><i></i><span>奶粉</span></a></li>-->
                                                                                <!--<li class="fore2"><a href="category.php?id=689"><i></i><span>营养辅食</span></a></li>-->
                                                                                <!--<li class="fore3"><a href="category.php?id=690"><i></i><span>尿裤湿巾</span></a></li>-->
                                                                                <!--<li class="fore4"><a href="category.php?id=691"><i></i><span>洗护用品</span></a></li>-->
                                                                                <!--<li class="fore5"><a href="category.php?id=692"><i></i><span>喂养用品</span></a></li>-->
                                                                                <!--<li class="fore6"><a href="category.php?id=693"><i></i><span>童车童床</span></a></li>-->
                                                                                                                                        </ul>
            </div>
            <div class="words">
            	<ul>
                	
                    <div class="text"></div>
                    
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<!--<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:31:"分类下商品右侧小广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:31:"分类下商品右侧小广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:25:"分类下商品右广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:25:"分类下商品右广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:25:"分类下商品右广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:31:"分类下商品右侧小广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore2">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:31:"分类下商品右侧小广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        <li class="fore3">554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:25:"分类下商品右广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                    </ul>
                </div>
                <div class="bdSlider">
                	<div class="hd_Slider">
                    	<ul>
                        	<li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ul>
                    </div>
                    <div class="bd_Slider">
                    	<ul>
                        	<li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:37:"分类下商品右侧幻灯片广告1";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:37:"分类下商品右侧幻灯片广告2";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:37:"分类下商品右侧幻灯片广告3";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                            <li>554fcae493e564ee0dc75bdf2ebf94caads_pro|a:3:{s:4:"name";s:7:"ads_pro";s:8:"cat_name";s:21:"母婴、玩具乐器";s:4:"type";s:37:"分类下商品右侧幻灯片广告4";}554fcae493e564ee0dc75bdf2ebf94ca</li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
            -->
        	                    	<div class="bdBox bdBoxPro">
            	<ul>
                	                	<li>
                    	<div class="pImg"><a href="goods.php?id=91" target="_blank" title="惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克"><img width="100" height="100" alt="惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克" src="images/201407/thumb_img/91_thumb_G_1406504177983.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=91" target="_blank" title="惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁幼儿适用) 900克">惠氏 Wyeth 启赋 illuma 亲和人体配方 幼儿配方奶粉 3段(1-3岁...</a></div>
                        <div class="pPrice">￥368</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=90" target="_blank" title="雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！"><img width="100" height="100" alt="雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！" src="images/201407/thumb_img/90_thumb_G_1406504148671.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=90" target="_blank" title="雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900克 购雅培亲体新品，Mini Pad、万元大奖等你赢！点此查看！">雅培 Abbott 金装喜康宝 婴儿配方奶粉 1段（0-12个月婴儿适用）900...</a></div>
                        <div class="pPrice">￥198</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=89" target="_blank" title="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐"><img width="100" height="100" alt="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐" src="images/201407/thumb_img/89_thumb_G_1406504107463.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=89" target="_blank" title="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克*6罐">Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适...</a></div>
                        <div class="pPrice">￥1140</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=88" target="_blank" title="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克"><img width="100" height="100" alt="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克" src="images/201407/thumb_img/88_thumb_G_1406504077741.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=88" target="_blank" title="Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适用）900克">Karicare 可瑞康 新西兰原装进口 金装幼儿配方奶粉 3段（1-3岁幼儿适...</a></div>
                        <div class="pPrice">￥190</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=87" target="_blank" title="Nestle 雀巢 能恩 幼儿配方奶粉 3段（1-3岁幼儿适用） 900克（新老包装随机发货）"><img width="100" height="100" alt="Nestle 雀巢 能恩 幼儿配方奶粉 3段（1-3岁幼儿适用） 900克（新老包装随机发货）" src="images/201407/thumb_img/87_thumb_G_1406504046697.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=87" target="_blank" title="Nestle 雀巢 能恩 幼儿配方奶粉 3段（1-3岁幼儿适用） 900克（新老包装随机发货）">Nestle 雀巢 能恩 幼儿配方奶粉 3段（1-3岁幼儿适用） 900克（新老...</a></div>
                        <div class="pPrice">￥168</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=86" target="_blank" title="美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克"><img width="100" height="100" alt="美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克" src="images/201407/thumb_img/86_thumb_G_1406504012770.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=86" target="_blank" title="美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3岁幼儿适用） 1200克">美赞臣 MeadJohnson 进口奶源 安儿宝A+ 幼儿配方奶粉 3段（1-3...</a></div>
                        <div class="pPrice">￥194</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=85" target="_blank" title="雅培 Similac 美国雅培Similac Go&Grow 较大婴儿和幼儿配方奶粉 2段（9-24个月以上婴儿适用）624克"><img width="100" height="100" alt="雅培 Similac 美国雅培Similac Go&Grow 较大婴儿和幼儿配方奶粉 2段（9-24个月以上婴儿适用）624克" src="images/201407/thumb_img/85_thumb_G_1406503933218.jpg"></a></div>
                        <div class="pName"><a href="goods.php?id=85" target="_blank" title="雅培 Similac 美国雅培Similac Go&Grow 较大婴儿和幼儿配方奶粉 2段（9-24个月以上婴儿适用）624克">雅培 Similac 美国雅培Similac Go&Grow 较大婴儿和幼儿配方...</a></div>
                        <div class="pPrice">￥199</div>
                    </li>
                                    	<li>
                    	<div class="pImg"><a href="goods.php?id=84" target="_blank" title="美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克"><img width="100" height="100" alt="美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克" src=""></a></div>
                        <div class="pName"><a href="goods.php?id=84" target="_blank" title="美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适用） 900克">美素力 Frisolac 荷兰原装进口 金装婴儿配方奶粉 1段（0-6个月婴儿适...</a></div>
                        <div class="pPrice">￥239</div>
                    </li>
                                    </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                            	<div class="bdBox bdBoxPro">
            	<ul>
                	                </ul>
            </div>
                                </div>
    </div>
</div>
</div>
<div class="w">
	<div id="special">
        <div class="mt"><h2>天天低价</h2></div>
        <div class="mc">
            <ul>
                                <li class="cur">
                    <div class="pImg"><a href="goods.php?id=2" title="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）" target="_blank"><img src="images/201407/thumb_img/2_thumb_G_1406490449936.jpg" alt="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=2" target="_blank">海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（...</a></h2>
                        <p>￥2199</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=120" title="华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜" target="_blank"><img src="images/201408/thumb_img/120_thumb_G_1408036989163.jpg" alt="华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=120" target="_blank">华帝(VATTI) ZTD110-i13001 嵌入式 消毒柜</a></h2>
                        <p>￥1699</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=141" title="海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色" target="_blank"><img src="images/201408/thumb_img/141_thumb_G_1408400311748.jpg" alt="海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G HD4400+GT745M 2G独显）黑色"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=141" target="_blank">海尔（Haier） S400 14英寸游戏本（i7-4500U 4G 500G ...</a></h2>
                        <p>￥3999</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=3" title="科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调" target="_blank"><img src="images/201407/thumb_img/3_thumb_G_1406490512409.jpg" alt="科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=3" target="_blank">科龙（Kelon） KFR-72LW/EFVDN2 3匹 立柜式定速家用冷暖空调</a></h2>
                        <p>￥5399</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=1" title="创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）" target="_blank"><img src="images/201407/thumb_img/1_thumb_G_1406490380141.jpg" alt="创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=1" target="_blank">创维（Skyworth） 40E5CHR 40英寸 LED液晶电视（银色）</a></h2>
                        <p>￥1799</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=43" title="春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）" target="_blank"><img src="images/201407/thumb_img/43_thumb_G_1406499764367.jpg" alt="春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=43" target="_blank">春花（CHUNHUA ） JC621-160J 旋风锥尘杯 真空吸尘器（黑色）</a></h2>
                        <p>￥339</p>
                    </div>
                </li>
                                <li >
                    <div class="pImg"><a href="goods.php?id=44" title="科沃斯（Ecovacs）WRN60WI 擦窗机器人窗宝" target="_blank"><img src="images/201407/thumb_img/44_thumb_G_1406500347516.jpg" alt="科沃斯（Ecovacs）WRN60WI 擦窗机器人窗宝"></a></div>
                    <div class="pInfo">
                        <h2><a href="goods.php?id=44" target="_blank">科沃斯（Ecovacs）WRN60WI 擦窗机器人窗宝</a></h2>
                        <p>￥1680</p>
                    </div>
                </li>
                            </ul>
        </div>
    </div>
    <div id="share2">
    	<div class="mt"><h2>热门评价</h2></div>
        <div class="mc">
        	<div class="sw picScrollTop">
            	<div class="bd">
                    <ul>
                                                                        <li>
                            <div class="pImg"><a href="goods.php?id=106" title="Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） " target="_blank"><img src="images/201407/thumb_img/106_thumb_G_1406506885979.jpg" alt="Android开发秘籍进阶篇：Android 4编程入门经典+Android 4高级编程（第3版　套装共2册） "></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=106" target="_blank" title="1111"><span class="text">1111</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                <li>
                            <div class="pImg"><a href="goods.php?id=24" title="美的（Midea） FS406C 4L 电脑版电饭煲" target="_blank"><img src="images/201407/thumb_img/24_thumb_G_1406497130539.jpg" alt="美的（Midea） FS406C 4L 电脑版电饭煲"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=24" target="_blank" title="ssssssssssss"><span class="text">ssssssssssss</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                <li>
                            <div class="pImg"><a href="goods.php?id=2" title="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）" target="_blank"><img src="images/201407/thumb_img/2_thumb_G_1406490449936.jpg" alt="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=2" target="_blank" title="11113V"><span class="text">11113V</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                <li>
                            <div class="pImg"><a href="goods.php?id=2" title="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）" target="_blank"><img src="images/201407/thumb_img/2_thumb_G_1406490449936.jpg" alt="海尔统帅（Leader） D48MF7000 48英寸 安卓智能LED平板电视（黑色）"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=2" target="_blank" title="深深深"><span class="text">深深深</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                <li>
                            <div class="pImg"><a href="goods.php?id=5" title="海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调" target="_blank"><img src="images/201407/thumb_img/5_thumb_G_1406490659032.jpg" alt="海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=5" target="_blank" title="全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4"><span class="text">全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价4</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                <li>
                            <div class="pImg"><a href="goods.php?id=5" title="海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调" target="_blank"><img src="images/201407/thumb_img/5_thumb_G_1406490659032.jpg" alt="海尔（Haier） KFR-35GW/05GDC23A 1.5匹壁挂式冷暖变频空调"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="goods.php?id=5" target="_blank" title="全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3"><span class="text">全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3全棉色织格子花边舒适女式长袖衬衫蕾丝深灰格的测试评价3</span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<span class="clr"></span>
</div>
<div class="service2015">
	<div class="service2015Box">
        <div class="slogen">
            <ul>
                <li class="item fore1"><i></i></li>
                <li class="item fore2"><i></i></li>
                <li class="item fore3"><i></i></li>
                <li class="item fore4"><i></i></li>
            </ul>
        </div>
    </div>
</div>
<div id="elevator" class="elevator">
    <ul>
        <li><span class="lou">1F</span><span class="text">家用</span></li>
        <li><span class="lou">2F</span><span class="text">电脑</span></li>
        <li><span class="lou">3F</span><span class="text">服饰</span></li>
        <li><span class="lou">4F</span><span class="text">家居</span></li>
        <li><span class="lou">5F</span><span class="text">母婴</span></li>
    </ul>
</div>
<div class="w">
    <div id="service2015">
                        <dl class="fore1">
            <dt>新手上路 </dt>
            <dd>
                                <p><a href="article.php?id=9" target="_blank" title="售后流程">售后流程</a></p>
                                <p><a href="article.php?id=10" target="_blank" title="购物流程">购物流程</a></p>
                                <p><a href="article.php?id=11" target="_blank" title="订购方式">订购方式</a></p>
                            </dd>
        </dl>
                                <dl class="fore2">
            <dt>手机常识 </dt>
            <dd>
                                <p><a href="article.php?id=12" target="_blank" title="如何分辨原装电池">如何分辨原装电池</a></p>
                                <p><a href="article.php?id=13" target="_blank" title="如何分辨水货手机 ">如何分辨水货手机</a></p>
                                <p><a href="article.php?id=14" target="_blank" title="如何享受全国联保">如何享受全国联保</a></p>
                            </dd>
        </dl>
                                <dl class="fore3">
            <dt>配送与支付 </dt>
            <dd>
                                <p><a href="article.php?id=15" target="_blank" title="货到付款区域">货到付款区域</a></p>
                                <p><a href="article.php?id=16" target="_blank" title="配送支付智能查询 ">配送支付智能查询</a></p>
                                <p><a href="article.php?id=17" target="_blank" title="支付方式说明">支付方式说明</a></p>
                            </dd>
        </dl>
                                <dl class="fore4">
            <dt>会员中心</dt>
            <dd>
                                <p><a href="article.php?id=18" target="_blank" title="资金管理">资金管理</a></p>
                                <p><a href="article.php?id=19" target="_blank" title="我的收藏">我的收藏</a></p>
                                <p><a href="article.php?id=20" target="_blank" title="我的订单">我的订单</a></p>
                            </dd>
        </dl>
                                <dl class="fore5">
            <dt>服务保证 </dt>
            <dd>
                                <p><a href="article.php?id=21" target="_blank" title="退换货原则">退换货原则</a></p>
                                <p><a href="article.php?id=22" target="_blank" title="售后服务保证 ">售后服务保证</a></p>
                                <p><a href="article.php?id=23" target="_blank" title="产品质量保证 ">产品质量保证</a></p>
                            </dd>
        </dl>
                                        <dl class="coverage">
        	<dt>众联自营覆盖区县</dt>
            <dd>
            	<div class="text">众联已向全国1964个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</div>
                <a href="#" class="more">查看详情 ></a>
            </dd>
        </dl>
    </div>
</div>
 
<div class="w">
  <div id="footer-2013"> 
        <div class="links"> 
       
      <a href="article.php?id=1" >免责条款</a> 
       |  
       
      <a href="article.php?id=2" >隐私保护</a> 
       |  
       
      <a href="article.php?id=3" >咨询热点</a> 
       |  
       
      <a href="article.php?id=4" >联系我们</a> 
       |  
       
      <a href="article.php?id=5" >公司简介</a> 
       |  
       
      <a href="wholesale.php" >批发方案</a> 
       |  
       
      <a href="myship.php" >配送方式</a> 
       
       
    </div>
        
    <div class="copyright"> 
     copyright2015 银河众联版权所有<br />
      
       
       
       
       
       
      <a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=729797175&amp;Site=京东&amp;Menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:729797175:4" height="16" border="0" alt="QQ" /> 729797175</a> 
       
       
       
      <a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=707570803&amp;Site=京东&amp;Menu=yes" target="_blank"><img src="http://wpa.qq.com/pa?p=1:707570803:4" height="16" border="0" alt="QQ" /> 707570803</a> 
       
       
       
       
       
       
       
       
       
       
       
       
       
      <br />
      
       
      ICP备案证书号:<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备15030430号</a> 
       
      
    </div>
    <div align="center"><a href=" http://www.ecmoban.com" target="_blank"><img src="themes/jingdong2015/images/ecmoban.gif" alt="ECShop模板" /></a></div><br />
    
    <div class="authentication">
     <a href="javascript:void(0);" target="_blank"><img width="103" height="32" alt="经营性网站备案中心" src="themes/jingdong2015/images/108_40_zZOKnl.gif"></a> 
     <a href="javascript:void(0);" target="_blank"> <img width="103" height="32" alt="可信网站" src="themes/jingdong2015/images/rBEHaFCFC5QIAAAAAAASVQX9RAYAACb2wHUV1kAABJt760.gif"></a> 
     <a href="javascript:void(0);" target="_blank"><img width="103" height="32" alt="朝阳网络警察" src="themes/jingdong2015/images/rBEIDE_nzcIIAAAAAAB30mYXo5QAACrhACj22IAAHfq378.png"></a> 
     <a href="javascript:void(0);" target="_blank"><img width="103" height="32" src="themes/jingdong2015/images/112_40_WvArIl.png"></a></div>    
  </div>
</div>
<div class="w backpanel hide" id="backpanel0708" style="display: none; ">
	<div class="backpanel-inner">
        <div class=" bp-item bp-item-survey"><a href="message.php" class="survey" target="_blank">反馈</a><s></s></div>
        <div class=" bp-item bp-item-backtop" data-top="0"><a href="#none" class="backtop" target="_self">顶部</a><s></s></div>
    </div>
</div>
<div id="cart_show" class="m">
	<div class="cart_show_wrap">
			<div class="success">
                <div class="success-b">
                    <h3>商品已成功加入购物车！</h3>
                 
                </div>
                	<div class="clr"></div>
            <div id="initCart_next_go"><a class="btn-pay " href="./flow.php" id="GotoShoppingCart">去结算</a><a class="btn-continue " href="javascript:void(0)" onclick="easyDialog.close();">继续购物</a>
            	<div class="clr"></div>
            </div></div>
			</div>
		</div>
<script>
$(function(){
	$(window).scroll(function(){
		if ($(window).scrollTop() > 300){
			$(".backpanel").fadeIn(500);
		}
		else
		{
			$(".backpanel").fadeOut(500);
		}
		
	});
	
	$(".backtop").click(function(){
		$('body,html').animate({scrollTop:0},500);
		return false;
	});
})
</script>
<script>
var bodyH=$(window).height(),scTop=$("#floors-list").offset().top-bodyH;
if($(window).scrollTop() >= scTop ){
	$("#elevator").show()
}else{
	$("#elevator").hide()
}
$(window).scroll(function(){
	if($(window).scrollTop() >= scTop ){
			$("#elevator").show()
	}else{
		$("#elevator").hide()
	}
});
//
var slide_move=function(o){
	var a=$(o.menu).find(o.li),arr=[];
	
	$(o.floors).each(function(i){
		arr[i]=$(this).offset().top-($(window).height()/2);
		$(this).find(".mt h2 span").text((i+1)+"F");
		$(this).find(".words li").eq(1).nextAll().remove();
	});
	a.click(function(){
		var index=a.index(this);
		$("body,html").stop(true,false).animate({scrollTop:arr[index]},1000);
	});
	
	$(window).scroll(function(){
		var t=$(document).scrollTop();
		o.callBack && o.callBack();
		$.each(arr,function(k,v){
			if(t>=v){
				a.removeClass(o.active);
				a.eq(k).addClass(o.active);
				$(o.floors).removeClass(o.active).eq(k).addClass(o.active);
			}
		});
	});	
}
slide_move({
	menu:".elevator",
	li:"li",
	active:"on",
	floors:".catGoodsSlide"
});
//
var bodyW=$(window).width(),wW=$(".w").width(),elevatorML=((bodyW-wW)/2-30-5),elevatorMT=$(".elevator").height()/2;
$(".elevator").css({left:elevatorML,marginTop:-elevatorMT});
</script>
</body>
</html>
