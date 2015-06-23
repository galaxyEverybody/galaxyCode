<?php /* Smarty version 2.6.9, created on 2015-06-10 23:07:07
         compiled from ../install/step_03.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', '../install/step_03.tpl', 22, false),)), $this); ?>
<div style="margin-left:auto;margin-right:auto;width:400px;">

<?php if ($this->_tpl_vars['errors']): ?>
<table>
<?php $_from = $this->_tpl_vars['errors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['error']):
?>
    <tr>
        <td style="vertical-align:top;"><img src="images/error.png" alt="Error" /></td>
        <td style="vertical-align:top;"><?php echo $this->_tpl_vars['error']; ?>
</td>
    </tr>
<?php endforeach; endif; unset($_from); ?>
</table>
<?php endif; ?>

<form action="index.php" method="post" name="wizard"><input type="hidden" name="step" value="1" />
<table cellpadding="6" cellspacing="0">
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['webroot_path']; ?>
</td>
        <td><input name="webrootpath" value="<?php echo $this->_tpl_vars['formvars']->webroot_path; ?>
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
        <td><input name="dbhost" value="<?php echo $this->_tpl_vars['formvars']->dbhost; ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbname']; ?>
</td>
        <td><input name="dbname" value="<?php echo $this->_tpl_vars['formvars']->dbname; ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbuser']; ?>
</td>
        <td><input name="dbuser" value="<?php echo $this->_tpl_vars['formvars']->dbuser; ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbpassword']; ?>
</td>
        <td><input name="dbpassword" value="<?php echo $this->_tpl_vars['formvars']->dbpassword; ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['dbsuffix']; ?>
</td>
        <td><input name="dbprefix" value="<?php echo $this->_tpl_vars['formvars']->dbprefix; ?>
" style="width:150px;" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['defaultlanguage']; ?>
</td>
        <td><select name="defaultlanguage" style="width:150px;" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->languages_array,'selected' => $this->_tpl_vars['formvars']->default_language), $this);?>
</select></td>
    </tr>
</table>
<table style="width:100%">
<tr>
<td style="text-align:left;"><button onclick="sendform(2)"><?php echo $this->_tpl_vars['dict']['backward']; ?>
</button></td>
<td style="text-align:right;"><button onclick="sendform(4)"><?php echo $this->_tpl_vars['dict']['forward']; ?>
</button></td>
</tr>
</table>
</form>
</div>