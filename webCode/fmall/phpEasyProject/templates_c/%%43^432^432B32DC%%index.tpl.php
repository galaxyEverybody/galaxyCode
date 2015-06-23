<?php /* Smarty version 2.6.9, created on 2015-06-10 23:06:55
         compiled from ../install/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', '../install/index.tpl', 1, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['HeaderTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "header.xhtml.strict.tpl") : smarty_modifier_default($_tmp, "header.xhtml.strict.tpl")), 'smarty_include_vars' => array('name' => 'header')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
  echo '

<script type="text/javascript">
function sendform(step)
{
    document.wizard.step.value = step;
    document.wizard.submit();
}
</script>
'; ?>


<div style="background-color:white;padding:0 16px 0 16px;">
<div style="font-size:18px;padding-top:16px;padding-bottom:16px;position:relative;z-index:5;"><a href="http://www.phpeasyproject.de" title="phpEasyProject"><img src="../images/phpEasyProject.png" width="281" height="48" style="border:0" alt="phpEasyProject" /></a></div>
<img src="images/<?php echo $this->_tpl_vars['img']['i1']; ?>
" style="margin-left:10px;margin-right:4px;" alt="1" /><img src="images/<?php echo $this->_tpl_vars['img']['i2']; ?>
" style="margin-right:4px;" alt="2" /><img style="margin-right:4px;" src="images/<?php echo $this->_tpl_vars['img']['i3']; ?>
" alt="3" /><img style="margin-right:4px;" src="images/<?php echo $this->_tpl_vars['img']['i4']; ?>
" alt="4" /><img src="images/<?php echo $this->_tpl_vars['img']['i5']; ?>
" alt="5" />
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['ContentTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "step_01.tpl") : smarty_modifier_default($_tmp, "step_01.tpl")), 'smarty_include_vars' => array('name' => 'content')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div style="background-color:white;width:100%;height:60px;text-align:center;padding:20px 0 0 0;"><a class="copyright" href="http://www.phpeasyproject.de" title="phpEasyProject - The Open Source Project">Powered by phpEasyProject</a><br /><p class="build">Version: <?php echo $this->_tpl_vars['version']; ?>
<br />Build: <?php echo $this->_tpl_vars['build']; ?>
</p></div></div>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['FooterTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "footer.tpl") : smarty_modifier_default($_tmp, "footer.tpl")), 'smarty_include_vars' => array('name' => 'footer')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>