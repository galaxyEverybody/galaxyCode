<?php if ($this->_var['best_goods']): ?>
<?php if ($this->_var['script_name'] == "category"): ?>
<div class="j_box">
  <div class="j_logo">商品精选</div>
  <div class="j_boxcontent">
    <div class="j_skulist" id="cont">
      <div class="j_skulist_inner">
        <ul class="clearfix" id="list1">
          <?php $_from = $this->_var['best_goods']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'goods_0_32291700_1435014491');if (count($_from)):
    foreach ($_from AS $this->_var['goods_0_32291700_1435014491']):
?>
          <li>
            <div class="p_img"><a href="<?php echo $this->_var['goods_0_32291700_1435014491']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['goods_0_32291700_1435014491']['thumb']; ?>" width="190" height="190"></a></div>
            <div class="p_name"><a href="<?php echo $this->_var['goods_0_32291700_1435014491']['url']; ?>" target="_blank"><?php echo $this->_var['goods_0_32291700_1435014491']['short_style_name']; ?></a></div>
            <div class="p_price"> 
              <?php if ($this->_var['goods_0_32291700_1435014491']['promote_price'] != ""): ?> 
              <span class="tag_content"><?php echo $this->_var['goods_0_32291700_1435014491']['promote_price']; ?></span> 
              <?php else: ?> 
              <span class="tag_content"><?php echo $this->_var['goods_0_32291700_1435014491']['shop_price']; ?></span> 
              <?php endif; ?> 
            </div>
            <div class="clr"></div>
          </li>
          <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
          
        </ul>
      </div>
    </div>
  </div>
  <div class="clr"> </div>
</div>
 <div class="blank10"></div>
<?php endif; ?> 
<?php endif; ?> 
