<?php /* Smarty version 2.6.9, created on 2015-06-10 23:07:02
         compiled from ../install/step_02.tpl */ ?>
<div style="margin-left:auto;margin-right:auto;margin-top:150px;height:340px;width:600px;">
<table>
    <tr>
        <td style="vertical-align:top;"><?php $this->assign('nextstep', 3); ?>
        <?php if ($this->_tpl_vars['env_settings']->phpversisok == true): ?><img src="images/ok.png" alt="Ok" /><?php else: ?><img src="images/error.png" alt="Error" /><?php $this->assign('nextstep', 2);  endif; ?>
        </td>
        <td style="vertical-align:top;"><?php echo $this->_tpl_vars['dict']['phpversion']; ?>
: <strong><?php echo $this->_tpl_vars['env_settings']->phpversion; ?>
</strong>
        <?php if ($this->_tpl_vars['env_settings']->phpversisok == false): ?><br /><?php echo $this->_tpl_vars['dict']['rightversion'];  endif; ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align:top;"><?php $this->assign('nextstep', 3); ?>
        <?php if ($this->_tpl_vars['env_settings']->mysqlcompatible == true): ?><img src="images/ok.png" alt="Ok" /><?php else: ?><img src="images/error.png" alt="Error" /><?php $this->assign('nextstep', 2);  endif; ?>
        </td>
        <td style="vertical-align:top;"><?php if ($this->_tpl_vars['env_settings']->mysqlcompatible == true):  echo $this->_tpl_vars['dict']['mysqlcompatible'];  else:  echo $this->_tpl_vars['dict']['notmysqlcompatible'];  endif; ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align:top;">
        <?php if ($this->_tpl_vars['env_settings']->domdocument == true || $this->_tpl_vars['env_settings']->xslt_functions == true): ?><img src="images/ok.png" alt="Ok" /><?php else: ?><img src="images/warning.png" alt="Warning" /><?php endif; ?>
        </td>
        <td style="vertical-align:top;">
        <?php if ($this->_tpl_vars['env_settings']->domdocument == false && $this->_tpl_vars['env_settings']->xslt_functions == false):  echo $this->_tpl_vars['dict']['emptydomdocument'];  else:  echo $this->_tpl_vars['dict']['DOMDocument'];  endif; ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align:top;">
        <?php if ($this->_tpl_vars['env_settings']->templ_dir_writable == true): ?><img src="images/ok.png" alt="Ok" /><?php else: ?><img src="images/error.png" alt="Error" /><?php $this->assign('nextstep', 2);  endif; ?>
        </td>
        <td style="vertical-align:top;"><?php if ($this->_tpl_vars['env_settings']->templ_dir_writable == true):  echo $this->_tpl_vars['dict']['templ_dir_writable'];  else:  echo $this->_tpl_vars['dict']['templ_n_writable'];  endif; ?>
        </td>
    </tr>
    <tr>
        <td style="vertical-align:top;">
        <?php if ($this->_tpl_vars['env_settings']->conf_writable == true): ?><img src="images/ok.png" alt="Ok" /><?php else: ?><img src="images/error.png" alt="Error" /><?php $this->assign('nextstep', 2);  endif; ?>
        </td>
        <td style="vertical-align:top;"><?php if ($this->_tpl_vars['env_settings']->conf_writable == true):  echo $this->_tpl_vars['dict']['conf_writable'];  else:  echo $this->_tpl_vars['dict']['conf_n_writable'];  endif; ?>
        </td>
    </tr>
</table>
</div>

<div style="margin-left:auto;margin-right:auto;width:600px;text-align:center;">
<form action="index.php" method="post" name="wizard"><input type="hidden" name="step" value="1" />
<table style="width:100%">
<tr>
<td style="text-align:left;"><button onclick="sendform(1)"><?php echo $this->_tpl_vars['dict']['backward']; ?>
</button></td>
<td style="text-align:right;"><button onclick="sendform(<?php echo $this->_tpl_vars['nextstep']; ?>
)"><?php echo $this->_tpl_vars['dict']['forward']; ?>
</button></td>
</tr>
</table>
</form>
</div>