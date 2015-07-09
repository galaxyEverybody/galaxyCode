<?php /* Smarty version 2.6.9, created on 2015-06-10 23:06:55
         compiled from ../install/step_01.tpl */ ?>
<div style="margin-left:auto;margin-right:auto;width:600px;"><?php echo $this->_tpl_vars['dict']['readlicense']; ?>
</div>
<br />
<div style="margin-left:auto;margin-right:auto;width:600px;height:420px;overflow:scroll;border:1px solid gray;padding:10px;">
<pre><?php echo $this->_tpl_vars['license']; ?>
</pre>
</div>

<div style="margin-left:auto;margin-right:auto;width:600px;text-align:center;">
<form action="index.php" method="post" name="wizard"><input type="hidden" name="step" value="1" />
<table style="width:100%">
<tr>
<td><input type="radio" name="licenseaccept" value="no" checked="checked" id="radiono" /><label for="radiono"><?php echo $this->_tpl_vars['dict']['idontaccept']; ?>
</label></td>
<td><input type="radio" name="licenseaccept" value="yes" id="radioyes" /><label for="radioyes"><?php echo $this->_tpl_vars['dict']['iaccept']; ?>
</label></td>
</tr>
<tr>
<td>&nbsp;</td>
<td style="text-align:right;"><button onclick="sendform(2)"><?php echo $this->_tpl_vars['dict']['forward']; ?>
</button></td>
</tr>
</table>
</form>
</div>