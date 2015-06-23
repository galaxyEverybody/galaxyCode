<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:57
         compiled from settings.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'settings.tpl', 39, false),array('function', 'html_options', 'settings.tpl', 43, false),)), $this); ?>
<?php echo '
<script type="text/javascript">
function addForm()
{
    if (!confirm(\'';  echo $this->_tpl_vars['dict']['areyousure'];  echo '\'))
        return false;
    document.rsform.submit();
    return true;
}

</script>
'; ?>


<form action="index.php" method="post" name="rsform">
<input name="formsend" value="1" type="hidden" />
<?php if ($this->_tpl_vars['errors']): ?><div id="errdiv">
<span style="color:red;font-weight:bold"><?php echo $this->_tpl_vars['dict']['error']; ?>
</span>
<ul style="color:red">
<?php $_from = $this->_tpl_vars['formvars']->errors; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['error']):
?>
    <li><?php echo $this->_tpl_vars['error']; ?>
</li>
<?php endforeach; endif; unset($_from); ?>
</ul></div><?php endif; ?>
<table cellpadding="6" cellspacing="0">
    <tr>
        <td style="text-align:right" colspan="2">
        <?php if ($this->_tpl_vars['formvars']->configWritable == true): ?><img src="images/_savesmall.png"
             id="saverecord"
             width="24"
             height="24"
             alt="<?php echo $this->_tpl_vars['dict']['saverecord']; ?>
"
             title="<?php echo $this->_tpl_vars['dict']['saverecord']; ?>
"
             onmouseover="this.src='images/savesmall.png'"
             onmouseout="this.src='images/_savesmall.png'"
             style="cursor:pointer;padding:0 0 0 8px;"
             onclick="return addForm()" /><?php else: ?>&nbsp;<?php endif; ?></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['webroot_path']; ?>
</td>
        <td><input name="webrootpath" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->webroot_path)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['databasetype']; ?>
</td>
        <td><select name="dbtype" style="width:150px;" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->dbtype_Array,'selected' => $this->_tpl_vars['formvars']->active_dbtype), $this);?>
</select>
        </td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['hostname']; ?>
</td>
        <td><input name="dbhost" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->dbhost)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbname']; ?>
</td>
        <td><input name="dbname" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->dbname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbuser']; ?>
</td>
        <td><input name="dbuser" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->dbuser)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbpassword']; ?>
</td>
        <td><input name="dbpassword" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->dbpassword)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbsuffix']; ?>
</td>
        <td><input name="dbprefix" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->dbprefix)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['defaultlanguage']; ?>
</td>
        <td><select name="defaultlanguage" style="width:150px;" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->languages_array,'selected' => $this->_tpl_vars['formvars']->default_language), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['taetmistep']; ?>
</td>
        <td><select name="taetminstep" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->taetminstep_array,'selected' => $this->_tpl_vars['formvars']->taetminstep), $this);?>
</select></td>
    </tr>
</table>
</form>