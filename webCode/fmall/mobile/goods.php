<?php

/**
 * ECSHOP 商品页
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: testyang $
 * $Id: goods.php 15013 2008-10-23 09:31:42Z testyang $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

$goods_id = !empty($_GET['id']) ? intval($_GET['id']) : '';

$smarty->assign('goods_id', $goods_id);
$goods_info = get_goods_info($goods_id);

if(gmtime()>$goods_info['goods_weight'] && gmtime()<$goods_info['goods_number']){
	$goods_info['good_status'] = 3;
}elseif(gmtime()>$info[$key]['goods_number']){
	$goods_info['good_status'] = 4;
}else{
	$goods_info['good_status'] = 0;
}
//print_r($goods_info);exit;
if ($goods_info === false)
{
   /* 如果没有找到任何记录则跳回到首页 */
   ecs_header("Location: ./\n");
   exit;
}

$smarty->assign('goods_info', $goods_info);

$smarty->display('goods.html');

?>