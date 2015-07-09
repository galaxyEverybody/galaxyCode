<?php /* Smarty version 2.6.9, created on 2015-06-10 23:10:10
         compiled from ../install/step_04.tpl */ ?>
<div style="margin-left:auto;margin-right:auto;width:400px;">
<?php if ($this->_tpl_vars['formvars']->successful): ?>
<table>
<?php $_from = $this->_tpl_vars['formvars']->successful; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['it']):
?>
    <tr>
        <td style="vertical-align:top;"><img src="images/ok.png" alt="Ok" /></td>
        <td style="vertical-align:top;"><?php echo $this->_tpl_vars['it']; ?>
</td>
    </tr>
<?php endforeach; endif; unset($_from); ?>
</table>
<?php endif;  if ($this->_tpl_vars['errors']): ?>
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
<table style="width:100%">
<tr>
    <td style="width:260px;"><?php echo $this->_tpl_vars['dict']['login']; ?>
</td>
    <td><input style="width:150px;"
                type="text"
                name="employeelogin"
                id="employeelogin"
                value="<?php echo $this->_tpl_vars['formvars']->empl_login; ?>
" />
    </td>
</tr>
<tr>
    <td><?php echo $this->_tpl_vars['dict']['firstname']; ?>
</td>
    <td><input style="width:150px;"
                type="text"
                name="employeefirstname"
                id="employeefirstname"
                value="<?php echo $this->_tpl_vars['formvars']->empl_firstname; ?>
" />
    </td>
</tr>
<tr>
    <td><?php echo $this->_tpl_vars['dict']['surname']; ?>
</td>
    <td><input style="width:150px;"
                type="text"
                name="employeesurname"
                id="employeesurname"
                value="<?php echo $this->_tpl_vars['formvars']->empl_surname; ?>
" />
    </td>
</tr>
<tr>
    <td><?php echo $this->_tpl_vars['dict']['password']; ?>
</td>
    <td><input style="width:150px;"
                type="password"
                name="employeepassword"
                id="employeepassword" />
    </td>
</tr>
<tr>
    <td><?php echo $this->_tpl_vars['dict']['password_retry']; ?>
</td>
    <td><input style="width:150px;"
                type="password"
                name="employeepasswordretry"
                id="employeepasswordretry" />
    </td>
</tr>
<tr>
    <td style="text-align:left;"><button onclick="sendform(3)"><?php echo $this->_tpl_vars['dict']['backward']; ?>
</button></td>
    <td style="text-align:right;"><button onclick="sendform(5)"><?php echo $this->_tpl_vars['dict']['forward']; ?>
</button></td>
</tr>
</table>
</form>
</div>