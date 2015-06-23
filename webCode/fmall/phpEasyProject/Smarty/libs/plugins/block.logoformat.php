<?php
/*
* Smarty plugin
*/
function smarty_block_logoformat($params, $content, &$smarty)
{
    if ($content) {
        return preg_replace('/phpEasyShop/','<div style="padding:10px;font:32px/32px Arial, Helvetica, sans-serif; color:#ECA929"><em><strong>php</strong>Easy<strong>Shop</strong></em></div>',$content);
    }
}
?> 