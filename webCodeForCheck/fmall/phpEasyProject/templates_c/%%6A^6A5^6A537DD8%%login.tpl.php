<?php /* Smarty version 2.6.9, created on 2015-06-10 23:10:46
         compiled from login.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'login.tpl', 1, false),array('modifier', 'escape', 'login.tpl', 21, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['HeaderTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "header.xhtml.strict.tpl") : smarty_modifier_default($_tmp, "header.xhtml.strict.tpl")), 'smarty_include_vars' => array('name' => 'header')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div style="background-color:white;padding:0 16px 0 16px;">
<div style="font-size:18px;padding-top:16px;padding-bottom:16px;position:relative;z-index:5;"><span style="font-weight:bold;color:darkblue">php</span><span style="color:#E68B2C">Easy<strong>Projects</strong></span></div>
<div class="maintabdiv">
    <div class="tabrow">
        <span class="tab selected"><?php echo $this->_tpl_vars['dict']['loginform']; ?>
</span>
    </div>
    <div class="tabpage" style="display:block;">
<form method="post" action="index.php">
<input type="hidden" name="action" value="login" />
<table style="width:100%; height:600px; text-align:center;">
  <tr>
  <td align="center">
    <table cellpadding="6" cellspacing="0" style="width:300px; background-color:#F1F3F5; border: 1px solid #ADBBCA;">
      <tbody>
        <tr>
          <td rowspan="3"><img src="images/security.png" width="64" height="64" alt="" /></td>
        </tr>
        <tr>
          <td><?php echo $this->_tpl_vars['dict']['login']; ?>
:</td>
          <td><input type="text" name="username" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['logindata']['username'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" /></td>
        </tr>
        <tr>
          <td><?php echo $this->_tpl_vars['dict']['password']; ?>
:</td>
          <td><input type="password" name="password" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><label for="chck"><?php echo $this->_tpl_vars['dict']['autologin']; ?>
</label><input type="checkbox" id="chck" value="1" name="autologin"<?php echo $this->_tpl_vars['logindata']['checked']; ?>
 /></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td><input type="submit" /></td>
        </tr>
        <tr>
          <td colspan="3"><?php if ($this->_tpl_vars['errors']): ?><ul id="errors"><?php unset($this->_sections['err']);
$this->_sections['err']['name'] = 'err';
$this->_sections['err']['loop'] = is_array($_loop=$this->_tpl_vars['errors']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['err']['show'] = true;
$this->_sections['err']['max'] = $this->_sections['err']['loop'];
$this->_sections['err']['step'] = 1;
$this->_sections['err']['start'] = $this->_sections['err']['step'] > 0 ? 0 : $this->_sections['err']['loop']-1;
if ($this->_sections['err']['show']) {
    $this->_sections['err']['total'] = $this->_sections['err']['loop'];
    if ($this->_sections['err']['total'] == 0)
        $this->_sections['err']['show'] = false;
} else
    $this->_sections['err']['total'] = 0;
if ($this->_sections['err']['show']):

            for ($this->_sections['err']['index'] = $this->_sections['err']['start'], $this->_sections['err']['iteration'] = 1;
                 $this->_sections['err']['iteration'] <= $this->_sections['err']['total'];
                 $this->_sections['err']['index'] += $this->_sections['err']['step'], $this->_sections['err']['iteration']++):
$this->_sections['err']['rownum'] = $this->_sections['err']['iteration'];
$this->_sections['err']['index_prev'] = $this->_sections['err']['index'] - $this->_sections['err']['step'];
$this->_sections['err']['index_next'] = $this->_sections['err']['index'] + $this->_sections['err']['step'];
$this->_sections['err']['first']      = ($this->_sections['err']['iteration'] == 1);
$this->_sections['err']['last']       = ($this->_sections['err']['iteration'] == $this->_sections['err']['total']);
?><li><?php echo $this->_tpl_vars['errors'][$this->_sections['err']['index']]; ?>
</li><?php endfor; endif; ?></ul><?php endif; ?></td>
        </tr>
      </tbody>
    </table>
  </td>
 </tr>
</table>
</form>

<div style="clear:both">&nbsp;</div>    </div>
</div>
<div style="background-color:white;width:100%;height:40px;text-align:center;padding:20px 0 0 0;"><a class="copyright" href="http://www.easyWebSolutions.de" title="More info about updates, patches and new other products...">Powered by phpEasyProjects</a></div></div>
<form action="index.php" method="post" name="actionscontrol">
<input type="hidden" name="action" value="show todo list" />
</form>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['FooterTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "footer.tpl") : smarty_modifier_default($_tmp, "footer.tpl")), 'smarty_include_vars' => array('name' => 'footer')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
