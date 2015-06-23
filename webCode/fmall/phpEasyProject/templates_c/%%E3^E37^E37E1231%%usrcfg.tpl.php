<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:55
         compiled from usrcfg.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_options', 'usrcfg.tpl', 36, false),)), $this); ?>
<?php echo '
<script type="text/javascript">
function addForm()
{
    document.rsform.submit();
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
        <img src="images/_savesmall.png"
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
             onclick="addForm()" /></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['workdayfrom']; ?>
</td>
        <td><select name="starthour" id="starthour" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->dhoursArr,'selected' => $this->_tpl_vars['formvars']->starthour), $this);?>
</select> : <select name="startmin" id="startmin" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->minArr,'selected' => $this->_tpl_vars['formvars']->startmin), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['activityduration']; ?>
</td>
        <td><select name="durhour" id="durhour" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->dhoursArr,'selected' => $this->_tpl_vars['formvars']->durhour), $this);?>
</select> : <select name="durmin" id="durmin" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->minArr,'selected' => $this->_tpl_vars['formvars']->durmin), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['workdayunto']; ?>
</td>
        <td><select name="finishhour" id="finishhour" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->hoursArr,'selected' => $this->_tpl_vars['formvars']->finishhour), $this);?>
</select> : <select name="finishmin" id="finishmin" class="timeselect"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->t->minArr,'selected' => $this->_tpl_vars['formvars']->finishmin), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['language']; ?>
</td>
        <td><select name="userlanguage" style="width:110px;" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->languages_array,'selected' => $this->_tpl_vars['formvars']->language), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['showmistep']; ?>
</td>
        <td><select name="minstep" ><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->taetminstep_array,'selected' => $this->_tpl_vars['formvars']->minstep), $this);?>
</select></td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['password']; ?>
</td>
        <td><input style="width:110px;"
                   type="password"
                   name="employeepassword"
                   id="employeepassword" />
        </td>
    </tr>
    <tr>
        <td><?php echo $this->_tpl_vars['dict']['password_retry']; ?>
</td>
        <td><input style="width:110px;"
                   type="password"
                   name="employeepasswordretry"
                   id="employeepasswordretry" />
        </td>
    </tr>
</table>
</form>