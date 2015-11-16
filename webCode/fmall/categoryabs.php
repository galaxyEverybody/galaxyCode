<?php

/**
 * ECSHOP 商品分类
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: liubo $
 * $Id: category.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}
$action = isset($_GET['act'])?$_GET['act']:'default';
/*------------------------------------------------------ */
//-- INPUT
/*------------------------------------------------------ */
if( $action == 'default'){
	assign_template();
	
	$position = assign_ur_here();
	$smarty->assign('page_title',      $position['title']);    // 页面标题
	$smarty->assign('ur_here',         $position['ur_here']);  // 当前位置
	$smarty->assign('helps',           get_shop_help());       // 网店帮助
	
	$sql = 'SELECT cat_id FROM ' . $GLOBALS["ecs"]->table("category").' WHERE is_standalone !=0 AND is_show =1' ;
	$res = $GLOBALS['db']->getAll($sql);
	
	$catabsone = assign_catabs_goods($res[0][cat_id], $num = 1, $from = 'web', $order_rule = '');
	$catabstwo = assign_catabs_goods($res[1][cat_id], $num = 2, $from = 'web', $order_rule = '');
	$catabsthree = assign_catabs_goods($res[2][cat_id], $num = 1, $from = 'web', $order_rule = '');
	
	$cat_goods = array_merge($catabsone,$catabstwo,$catabsthree);
	//print_r($cat_goods);exit;
	$smarty->assign('catabs_goods',$cat_goods);
	
	$smarty->display('categoryabs.dwt');
	
}
elseif($action == 'ajax_counter'){
	$num = intval($_POST['catnum']);
	$yearrate = 0.12;
	$sixmonth = 0.13;
	$threemonth = 0.15;
	$month = 0.17;
	
	$val = $num*$yearrate.','.$num*$sixmonth.','.$num*$threemonth.','.$num*$month;
	
	echo $val;
}

/**
 * 获得指定分类下的商品
 *
 * @access  public
 * @param   integer     $cat_id     分类ID
 * @param   integer     $num        数量
 * @param   string      $from       来自web/wap的调用
 * @param   string      $order_rule 指定商品排序规则
 * @return  array
 */
function assign_catabs_goods($cat_id, $num = 0, $from = 'web', $order_rule = '')
{
	$sql = 'SELECT sort_order FROM ' . $GLOBALS['ecs']->table('template') .
        " WHERE filename = 'index' AND type = 1 AND remarks ='' AND id = $cat_id ";
    $sort_order = $GLOBALS['db']->getOne($sql);
	$cat['sort_order'] = $sort_order;

    $children = get_children($cat_id);
	
    $sql = 'SELECT g.goods_id, g.goods_name, g.market_price, g.goods_number, g.goods_weight, g.surplus_price, g.shop_price AS org_price, ' .
                "IFNULL(mp.user_price, g.shop_price * '$_SESSION[discount]') AS shop_price, ".
               'g.promote_price, promote_start_date, promote_end_date, g.goods_brief, g.goods_thumb, g.goods_img ' .
            "FROM " . $GLOBALS['ecs']->table('goods') . ' AS g '.
            "LEFT JOIN " . $GLOBALS['ecs']->table('member_price') . " AS mp ".
                    "ON mp.goods_id = g.goods_id AND mp.user_rank = '$_SESSION[user_rank]' ".
            'WHERE g.is_on_sale = 1 AND g.is_alone_sale = 1 AND '.
                'g.is_delete = 0 AND (' . $children . 'OR ' . get_extension_goods($children) . ') ';

    $order_rule = empty($order_rule) ? 'ORDER BY g.sort_order, g.goods_id ASC' : $order_rule;
    $sql .= $order_rule;

    if ($num > 0)
    {
        $sql .= ' LIMIT ' . $num;
    }

    $res = $GLOBALS['db']->getAll($sql);
    $goods = array();
    foreach ($res AS $idx => $row)
    {
        if ($row['promote_price'] > 0)
        {
            $promote_price = bargain_price($row['promote_price'], $row['promote_start_date'], $row['promote_end_date']);
            $goods[$idx]['promote_price'] = $promote_price > 0 ? price_format($promote_price) : '';
        }
        else
        {
            $goods[$idx]['promote_price'] = '';
        }

        $goods[$idx]['id']           = $row['goods_id'];
        $goods[$idx]['name']         = $row['goods_name'];
        $goods[$idx]['brief']        = $row['goods_brief'];
        $goods[$idx]['market_price'] = market_format($row['market_price']);
        $goods[$idx]['short_name']   = $GLOBALS['_CFG']['goods_name_length'] > 0 ?
                                        sub_str($row['goods_name'], $GLOBALS['_CFG']['goods_name_length']) : $row['goods_name'];
        $goods[$idx]['shop_price']   = number_format($row['shop_price'], 2, '.', ',');
        $goods[$idx]['thumb']        = get_image_path($row['goods_id'], $row['goods_thumb'], true);
        $goods[$idx]['goods_img']    = get_image_path($row['goods_id'], $row['goods_img']);
        $goods[$idx]['url']          = build_uri('goods', array('gid' => $row['goods_id']), $row['goods_name']);
   		$goods[$idx]['advance']		 = ceil(($row['shop_price']-$row['surplus_price'])/$row['shop_price']*100);
   		$goods[$idx]['goods_weight_day']	 = ceil(($row['goods_number']-$row['goods_weight'])/(60*60*24));
    }
    $cat[$cat_id] = $goods;

    return $goods;
}

?>
