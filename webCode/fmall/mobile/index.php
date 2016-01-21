<?php

/**
 * ECSHOP mobile首页
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liuhui $
 * $Id: index.php 15013 2010-03-25 09:31:42Z liuhui $
*/

define('IN_ECS', true);
define('ECS_ADMIN', true);

require(dirname(__FILE__) . '/includes/init.php');

$sql = 'SELECT cat_id FROM '.$GLOBALS['ecs']->table('category').
	' WHERE is_show=1 AND is_standalone>0' ;
	$row = $GLOBALS['db']->getALL($sql);
	
	/* 查询分类产品*/
	foreach($row as $key=>$res){
		$sql = 'SELECT goods_id,goods_name,goods_number,goods_weight,market_price,' .
		'shop_price,surplus_price,good_status FROM '.$GLOBALS['ecs']->table('goods').
		' WHERE cat_id='.$res['cat_id'].' AND is_on_sale=1 ORDER BY goods_id DESC limit 1';
		$info[$key] = $GLOBALS['db']->getRow($sql);
		
		$info[$key]['good_weight_day'] = ceil(($info[$key]['goods_number']-$info[$key]['goods_weight'])/(60*60*24));
		$info[$key]['url'] = 'goods.php?id='.$info[$key]['goods_id'];
		
		if(gmtime()>$info[$key]['goods_weight'] && gmtime()<$info[$key]['goods_number']){
    		$info[$key]['good_status'] = 3;
    	}elseif(gmtime()>$info[$key]['goods_number']){
    		$info[$key]['good_status'] = 4;
    	}else{
    		$info[$key]['good_status'] = 0;
    	}
	}
	//print_r($info);exit;

$smarty->assign('infoone',$info[0]);
$smarty->assign('infotwo',$info[1]);
$smarty->assign('infothree',$info[3]);
$smarty->assign('infofour',$info[2]);
$smarty->display("index.html");

?>
