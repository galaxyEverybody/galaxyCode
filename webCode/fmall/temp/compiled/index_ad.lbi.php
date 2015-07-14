<div id="slide" class="m indexAd">
	<ul class="slide-items slide-items-w">
    	<?php $_from = $this->_var['index_ad_w']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'index_ad_0_84740800_1436871667');if (count($_from)):
    foreach ($_from AS $this->_var['index_ad_0_84740800_1436871667']):
?>
        <li> <a href="<?php echo $this->_var['index_ad_0_84740800_1436871667']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['index_ad_0_84740800_1436871667']['src']; ?>" width="730" height="454"></a> </li>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
    <ul class="slide-items slide-items-s">
    	<?php $_from = $this->_var['index_ad_s']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'index_ad_0_84748900_1436871667');if (count($_from)):
    foreach ($_from AS $this->_var['index_ad_0_84748900_1436871667']):
?>
        <li> <a href="<?php echo $this->_var['index_ad_0_84748900_1436871667']['url']; ?>" target="_blank"><img src="<?php echo $this->_var['index_ad_0_84748900_1436871667']['src']; ?>" width="510" height="454"></a> </li>
        <?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?>
    </ul>
    <div class="slide-controls slide-controls-w">
    	<div class="slideLiseCon"><?php $_from = $this->_var['index_ad_w']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'index_ad_0_84755400_1436871667');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['index_ad_0_84755400_1436871667']):
        $this->_foreach['foo']['iteration']++;
?><span <?php if (($this->_foreach['foo']['iteration'] <= 1)): ?>class="curr"<?php endif; ?>><?php echo $this->_foreach['foo']['iteration']; ?></span><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>
    </div>
    <div class="slide-controls slide-controls-s">
    	<div class="slideLiseCon"><?php $_from = $this->_var['index_ad_s']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }; $this->push_vars('', 'index_ad_0_84765900_1436871667');$this->_foreach['foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['foo']['total'] > 0):
    foreach ($_from AS $this->_var['index_ad_0_84765900_1436871667']):
        $this->_foreach['foo']['iteration']++;
?><span <?php if (($this->_foreach['foo']['iteration'] <= 1)): ?>class="curr"<?php endif; ?>><?php echo $this->_foreach['foo']['iteration']; ?></span><?php endforeach; endif; unset($_from); ?><?php $this->pop_vars();; ?></div>
    </div>
    <a class="indexAd_qh prev" href="javascript:void(0)"><</a>
    <a class="indexAd_qh next" href="javascript:void(0)">></a>
</div>
