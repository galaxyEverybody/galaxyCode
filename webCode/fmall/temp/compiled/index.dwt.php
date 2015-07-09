<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="Generator" content="ECSHOP v2.7.3" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="Keywords" content="<?php echo $this->_var['keywords']; ?>" />
<meta name="Description" content="<?php echo $this->_var['description']; ?>" />

<title><?php echo $this->_var['page_title']; ?></title>



<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="<?php echo $this->_var['ecs_css_path']; ?>" rel="stylesheet" type="text/css" />
<link rel="alternate" type="application/rss+xml" title="RSS|<?php echo $this->_var['page_title']; ?>" href="<?php echo $this->_var['feed_url']; ?>" />

<?php echo $this->smarty_insert_scripts(array('files'=>'common.js,index.js')); ?>
</head>
<body>
<?php echo $this->fetch('library/page_header_index.lbi'); ?> <?php echo $this->smarty_insert_scripts(array('files'=>'jquery.SuperSlide.js,jd_index.js')); ?>
<div class="w">
	<div id="o-slide"> <?php echo $this->fetch('library/index_ad.lbi'); ?></div>
  
  <div id="jdnews" class="m m1"> 
<?php $this->assign('articles',$this->_var['articles_12']); ?><?php $this->assign('articles_cat',$this->_var['articles_cat_12']); ?><?php echo $this->fetch('library/cat_articles.lbi'); ?>
 </div>
  
  
  <div class="m _520_a_lifeandjourney_1 hover" id="virtuals-2014">
    <div class="mt">
    	<h2>其它服务</h2>
        <ul class="fore1 lh">
        	<li class="fore1 abtest_huafei current"><a href="javascript:void(0);"><s></s>活动<i></i></a></li>
            <!--<li class="fore2 abtest_lvxing"><a href="javascript:void(0);"><s></s>发货单<i></i></a></li>
            <li class="fore3 abtest_caipiao"><a href="javascript:void(0);"><s></s>订单<i></i></a></li>
            <li class="fore4 abtest_youxi"><a href="javascript:void(0);"><s></s>投票<i></i></a></li>-->
        </ul>
    </div>
    <div class="mc" style="position:absolute;">
      <div class="virtuals-iframes">
        <div class="virtuals-w"> 
<?php $this->assign('ads_id','3'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
 </div>
        <div class="virtuals-s"> 
<?php $this->assign('ads_id','6'); ?><?php $this->assign('ads_num','1'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>
 </div>
      </div>
      <div class="virtuals-iframes" id="txtMarquee-top"> 
<?php echo $this->fetch('library/invoice_query.lbi'); ?>
 </div>
      <div class="virtuals-iframes"> 
<?php echo $this->fetch('library/order_query.lbi'); ?>
 </div>
      <div class="virtuals-iframes"> 
<?php echo $this->fetch('library/vote_list.lbi'); ?>
 </div>
    </div>
  </div>
  
   
</div>
<Div class="clear"></Div>

<div class="w todayRest" style="display:none;">
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
    
    <div class="jscroll" id="mscroll" >
        <div class="ctrl" id="mscroll-ctrl-prev"><</div>
        <div class="ctrl" id="mscroll-ctrl-next">></div>
        <div class="o-list">
            <div class="list" id="mscroll-list">
                <ul class="mscroll-ul" >
                
<?php $this->assign('ads_id','2'); ?><?php $this->assign('ads_num','9'); ?><?php echo $this->fetch('library/ad_position.lbi'); ?>

                </ul>
            </div>
        </div>
    </div>
    
</div>

<div class="blank20"></div>
<div id="showcase" class="w advanced">
	<div class="m">
    	<div class="mt"><h2>为您推荐</h2></div>
        <div class="mc">
        	<div class="sc-list clearfix">
            	<div class="item fore1"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore2"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore3"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore4"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore5"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色5',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore6"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色6',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore7"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色7',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
                <div class="item fore8"> <?php 
$k = array (
  'name' => 'ads_pro',
  'type' => '特色8',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?> </div>
            </div>
            <div class="blank10"></div>
        </div>
    </div>
</div>
<div id="floors-list">
   
<?php $this->assign('cat_goods',$this->_var['cat_goods_2']); ?><?php $this->assign('goods_cat',$this->_var['goods_cat_2']); ?><?php echo $this->fetch('library/cat_goods.lbi'); ?>


<div class="w catGoodsBox catGoodsSlide" style="display:none;">
	<div class="mt">
    	<h2><i></i><span><?php echo $this->_var['goods_cat']['sort_order']; ?>F</span><?php echo $this->_var['goods_cat']['name']; ?></h2>
        <div class="hd_box">
        	<ul>
            	<li><a href="javascript:;">热门<i></i></a></li>
            	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
                <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
            	<li><a href="javascript:;"><?php echo $this->_var['goods_level2']['name']; ?><i></i></a></li>
                <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品左广告',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?><i></i></div>
            <div class="themes Category">
            	<ul>
                    <?php $_from = $this->_var['goods_cat']['cat_clild']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['foo']['iteration']++;
?>
                    <?php if ($this->_foreach['foo']['iteration'] < 7): ?>
                    <li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a href="<?php echo $this->_var['cat']['url']; ?>"><i></i><span><?php echo $this->_var['cat']['name']; ?></span></a></li>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <div class="words">
            	<ul>
                	<li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                    <li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore3"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
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
                        	<li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
        	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
        	<div class="bdBox bdBoxPro">
            	<ul>
                	<?php $_from = $this->_var['goods_level2']['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['foo2'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo2']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['foo2']['iteration']++;
?>
                	<li>
                    	<div class="pImg"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><img width="100" height="100" alt="<?php echo $this->_var['goods']['goods_name']; ?>" src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></a></div>
                        <div class="pName"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><?php echo $this->_var['goods']['short_name']; ?></a></div>
                        <div class="pPrice"><?php if ($this->_var['goods']['promote_price'] > 0): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></div>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
    <div class="cat_brands">
    	<ul>
        	<?php $_from = $this->_var['goods_cat']['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brands');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['brands']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 11): ?>
        	<li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a target="_blank" href="<?php echo $this->_var['brands']['url']; ?>"><?php if ($this->_var['brands']['logo'] != "data/brandlogo/"): ?><img height="40" width="100" src="<?php echo $this->_var['brands']['logo']; ?>"><?php else: ?><?php echo $this->_var['brands']['brand_name']; ?><?php endif; ?></a></li>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>
 


<div class="w catGoodsBox catGoodsSlide" style="display:none;">
	<div class="mt">
    	<h2><i></i><span><?php echo $this->_var['goods_cat']['sort_order']; ?>F</span><?php echo $this->_var['goods_cat']['name']; ?></h2>
        <div class="hd_box">
        	<ul>
            	<li><a href="javascript:;">热门<i></i></a></li>
            	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
                <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
            	<li><a href="javascript:;"><?php echo $this->_var['goods_level2']['name']; ?><i></i></a></li>
                <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品左广告',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?><i></i></div>
            <div class="themes Category">
            	<ul>
                    <?php $_from = $this->_var['goods_cat']['cat_clild']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['foo']['iteration']++;
?>
                    <?php if ($this->_foreach['foo']['iteration'] < 7): ?>
                    <li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a href="<?php echo $this->_var['cat']['url']; ?>"><i></i><span><?php echo $this->_var['cat']['name']; ?></span></a></li>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <div class="words">
            	<ul>
                	<li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                    <li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore3"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
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
                        	<li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
        	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
        	<div class="bdBox bdBoxPro">
            	<ul>
                	<?php $_from = $this->_var['goods_level2']['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['foo2'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo2']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['foo2']['iteration']++;
?>
                	<li>
                    	<div class="pImg"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><img width="100" height="100" alt="<?php echo $this->_var['goods']['goods_name']; ?>" src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></a></div>
                        <div class="pName"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><?php echo $this->_var['goods']['short_name']; ?></a></div>
                        <div class="pPrice"><?php if ($this->_var['goods']['promote_price'] > 0): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></div>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
    <div class="cat_brands">
    	<ul>
        	<?php $_from = $this->_var['goods_cat']['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brands');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['brands']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 11): ?>
        	<li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a target="_blank" href="<?php echo $this->_var['brands']['url']; ?>"><?php if ($this->_var['brands']['logo'] != "data/brandlogo/"): ?><img height="40" width="100" src="<?php echo $this->_var['brands']['logo']; ?>"><?php else: ?><?php echo $this->_var['brands']['brand_name']; ?><?php endif; ?></a></li>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>
 



<div class="w catGoodsBox catGoodsSlide" style="display:none;">
	<div class="mt">
    	<h2><i></i><span><?php echo $this->_var['goods_cat']['sort_order']; ?>F</span><?php echo $this->_var['goods_cat']['name']; ?></h2>
        <div class="hd_box">
        	<ul>
            	<li><a href="javascript:;">热门<i></i></a></li>
            	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
                <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
            	<li><a href="javascript:;"><?php echo $this->_var['goods_level2']['name']; ?><i></i></a></li>
                <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品左广告',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?><i></i></div>
            <div class="themes Category">
            	<ul>
                    <?php $_from = $this->_var['goods_cat']['cat_clild']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['foo']['iteration']++;
?>
                    <?php if ($this->_foreach['foo']['iteration'] < 7): ?>
                    <li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a href="<?php echo $this->_var['cat']['url']; ?>"><i></i><span><?php echo $this->_var['cat']['name']; ?></span></a></li>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <div class="words">
            	<ul>
                	<li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                    <li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore3"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
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
                        	<li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
        	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
        	<div class="bdBox bdBoxPro">
            	<ul>
                	<?php $_from = $this->_var['goods_level2']['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['foo2'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo2']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['foo2']['iteration']++;
?>
                	<li>
                    	<div class="pImg"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><img width="100" height="100" alt="<?php echo $this->_var['goods']['goods_name']; ?>" src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></a></div>
                        <div class="pName"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><?php echo $this->_var['goods']['short_name']; ?></a></div>
                        <div class="pPrice"><?php if ($this->_var['goods']['promote_price'] > 0): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></div>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
    <div class="cat_brands">
    	<ul>
        	<?php $_from = $this->_var['goods_cat']['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brands');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['brands']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 11): ?>
        	<li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a target="_blank" href="<?php echo $this->_var['brands']['url']; ?>"><?php if ($this->_var['brands']['logo'] != "data/brandlogo/"): ?><img height="40" width="100" src="<?php echo $this->_var['brands']['logo']; ?>"><?php else: ?><?php echo $this->_var['brands']['brand_name']; ?><?php endif; ?></a></li>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>
 


<div class="w catGoodsBox catGoodsSlide" style="display:none;">
	<div class="mt">
    	<h2><i></i><span><?php echo $this->_var['goods_cat']['sort_order']; ?>F</span><?php echo $this->_var['goods_cat']['name']; ?></h2>
        <div class="hd_box">
        	<ul>
            	<li><a href="javascript:;">热门<i></i></a></li>
            	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
                <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
            	<li><a href="javascript:;"><?php echo $this->_var['goods_level2']['name']; ?><i></i></a></li>
                <?php endif; ?>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
        </div>
    </div>
    <div class="mc">
    	<div class="side">
        	<div class="banner"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品左广告',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?><i></i></div>
            <div class="themes Category">
            	<ul>
                    <?php $_from = $this->_var['goods_cat']['cat_clild']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'cat');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['cat']):
        $this->_foreach['foo']['iteration']++;
?>
                    <?php if ($this->_foreach['foo']['iteration'] < 7): ?>
                    <li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a href="<?php echo $this->_var['cat']['url']; ?>"><i></i><span><?php echo $this->_var['cat']['name']; ?></span></a></li>
                    <?php endif; ?>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <div class="words">
            	<ul>
                	<li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                    <li>
                    	<span><a href="">服装城</a></span>
                        <span><a href="">上新钜惠</a></span>
                        <span><a href="">时尚女装</a></span>
                        <span><a href="">品质男装</a></span>
                        <span><a href="">时尚男鞋</a></span>
                        <span><a href="">臻品女鞋</a></span>
                        <span><a href="">舒适内衣</a></span>
                        <span><a href="">太阳镜</a></span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bd_box">
        	<div class="bdBox bdBox01">
            	<div class="mainInner">
                	<ul class="mainBody">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                    </ul>
                    <ul class="mainExtra">
                    	<li class="fore1"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore2"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧小广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        <li class="fore3"><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
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
                        	<li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告1',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告2',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告3',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                            <li><?php 
$k = array (
  'name' => 'ads_pro',
  'cat_name' => $this->_var['goods_cat']['name'],
  'type' => '分类下商品右侧幻灯片广告4',
);
echo $this->_echash . $k['name'] . '|' . serialize($k) . $this->_echash;
?></li>
                        </ul>
                    </div>
                    <a class="bdSliderQh prev_bd" href="javascript:void(0)"><</a>
                    <a class="bdSliderQh next_bd" href="javascript:void(0)">></a>
                </div>
            </div>
        	<?php $_from = $this->_var['goods_cat']['goods_level2']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_level2');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['goods_level2']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 9): ?>
        	<div class="bdBox bdBoxPro">
            	<ul>
                	<?php $_from = $this->_var['goods_level2']['goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['foo2'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo2']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['foo2']['iteration']++;
?>
                	<li>
                    	<div class="pImg"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><img width="100" height="100" alt="<?php echo $this->_var['goods']['goods_name']; ?>" src="<?php echo $this->_var['goods']['goods_thumb']; ?>"></a></div>
                        <div class="pName"><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank" title="<?php echo $this->_var['goods']['goods_name']; ?>"><?php echo $this->_var['goods']['short_name']; ?></a></div>
                        <div class="pPrice"><?php if ($this->_var['goods']['promote_price'] > 0): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></div>
                    </li>
                    <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
                </ul>
            </div>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </div>
    </div>
    <div class="cat_brands">
    	<ul>
        	<?php $_from = $this->_var['goods_cat']['brands']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'brands');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['brands']):
        $this->_foreach['foo']['iteration']++;
?>
            <?php if ($this->_foreach['foo']['iteration'] < 11): ?>
        	<li class="fore<?php echo $this->_foreach['foo']['iteration']; ?>"><a target="_blank" href="<?php echo $this->_var['brands']['url']; ?>"><?php if ($this->_var['brands']['logo'] != "data/brandlogo/"): ?><img height="40" width="100" src="<?php echo $this->_var['brands']['logo']; ?>"><?php else: ?><?php echo $this->_var['brands']['brand_name']; ?><?php endif; ?></a></li>
            <?php endif; ?>
            <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
        </ul>
    </div>
</div>
 

</div>

<div class="w">
	<div id="special">
        <div class="mt"><h2>天天狂赚</h2></div>
        <div class="mc">
            <ul>
                <?php $_from = $this->_var['hot_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['goods']):
        $this->_foreach['no']['iteration']++;
?>
                <li <?php if ($this->_foreach['no']['iteration'] == 1): ?>class="cur"<?php endif; ?>>
                    <div class="pImg"><a href="<?php echo $this->_var['goods']['url']; ?>" title="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>" target="_blank"><img src="<?php echo $this->_var['goods']['thumb']; ?>" alt="<?php echo htmlspecialchars($this->_var['goods']['name']); ?>"></a></div>
                    <div class="pInfo">
                        <h2><a href="<?php echo $this->_var['goods']['url']; ?>" target="_blank"><?php echo $this->_var['goods']['short_style_name']; ?></a></h2>
                        <p><?php if ($this->_var['goods']['promote_price'] != ""): ?><?php echo $this->_var['goods']['promote_price']; ?><?php else: ?><?php echo $this->_var['goods']['shop_price']; ?><?php endif; ?></p>
                    </div>
                </li>
                <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
            </ul>
        </div>
    </div>
    <div id="share2">
    	<div class="mt"><h2>热门评价</h2></div>
        <div class="mc">
        	<div class="sw picScrollTop">
            	<div class="bd">
                    <ul>
                        <?php $_from = $this->_var['index_comments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'comments');$this->_foreach['no'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['no']['total'] > 0):
    foreach ($_from AS $this->_var['comments']):
        $this->_foreach['no']['iteration']++;
?>
                        <?php if ($this->_foreach['no']['iteration'] < 7): ?>
                        <li>
                            <div class="pImg"><a href="<?php echo $this->_var['comments']['url']; ?>" title="<?php echo $this->_var['comments']['goods_name']; ?>" target="_blank"><img src="<?php echo $this->_var['comments']['goods_thumb']; ?>" alt="<?php echo $this->_var['comments']['goods_name']; ?>"></a></div>
                            <div class="pInfo">
                                <div class="authorInfo">
                                    <img title="a2d3g42011" src="http://img10.360buyimg.com/vclist/jfs/t499/282/910193630/1286/3c1f5272/552326deN5e96a96c.jpg" alt="a2d3g42011" width="28" height="28">
                                    <span>a2d3g42011</span>
                                </div>
                                <div class="pDetail">
                                    <a href="<?php echo $this->_var['comments']['url']; ?>" target="_blank" title="<?php echo $this->_var['comments']['content']; ?>"><span class="text"><?php echo $this->_var['comments']['content']; ?></span><span class="iconR">”</span></a>
                                    <span class="detailArrow">◆</span>
                                    <span class="iconL">“</span>
                                </div>
                            </div>
                        </li>
                        <?php endif; ?>
                        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
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


<div id="elevator" class="elevator" >
    <ul>
        <li ><span class="lou">1F</span><span class="text">基金</span></li>
        <li ><span class="lou">2F</span><span class="text">保险</span></li>
        <li ><span class="lou">3F</span><span class="text">股票</span></li>
        <li ><span class="lou">4F</span><span class="text">债券</span></li>
        <li ><span class="lou">5F</span><span class="text">信贷</span></li>
    </ul>
</div>

<?php echo $this->fetch('library/help_index.lbi'); ?>
<?php echo $this->fetch('library/page_footer.lbi'); ?>


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
