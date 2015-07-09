<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:54
         compiled from employees.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'popup_init', 'employees.tpl', 1, false),array('function', 'html_options', 'employees.tpl', 192, false),array('function', 'popup', 'employees.tpl', 235, false),array('modifier', 'escape', 'employees.tpl', 190, false),array('modifier', 'clearcomment', 'employees.tpl', 216, false),)), $this); ?>
<?php echo smarty_function_popup_init(array('src' => "./scripts/overlib.js"), $this);?>

<?php echo '

<script type="text/javascript">
function sortTable(sortfieldvalue,sortordervalue)
{
    document.tableform.esortfield.value = sortfieldvalue;
    document.tableform.esortorder.value = sortordervalue;
    document.tableform.submit();
}

function clearForm()
{
    document.rsform.employeeid.value = \'\';
    document.rsform.employeelogin.value = \'\';
    document.rsform.employeesurname.value = \'\';
    document.rsform.employeefirstname.value = \'\';

    document.rsform.employeeaktive.checked = true;

    document.rsform.employeecomment.value = \'\';
    document.getElementById(\'removeemployeedata\').style.display = \'none\';

    document.getElementById(\'formtitel\').firstChild.nodeValue = \'';  echo $this->_tpl_vars['dict']['employeeadd'];  echo '\';
    x_setNewProjectList();
    while (document.getElementById(\'employeecreated\').hasChildNodes())
        document.getElementById(\'employeecreated\').removeChild(document.getElementById(\'employeecreated\').firstChild);
    while (document.getElementById(\'employeechanged\').hasChildNodes())
        document.getElementById(\'employeechanged\').removeChild(document.getElementById(\'employeechanged\').firstChild);
    if (document.getElementById(\'errdiv\'))
    {
        while (document.getElementById(\'errdiv\').hasChildNodes())
            document.getElementById(\'errdiv\').removeChild(document.getElementById(\'errdiv\').firstChild);
    }
    unmarkAll(0);
}

function setFormNewStatus(empl_id,status)
{
    if (document.rsform.employeeid.value == empl_id)
    {
        if (status == 0)
            document.rsform.employeeaktive.checked = false;
        else
            document.rsform.employeeaktive.checked = true;
    }
}

function setFormTitle(titleValue) {
    document.getElementById(\'formtitel\').firstChild.nodeValue = titleValue;
}

function setPositionSelected(position)
{
    for( var i = 0; i < document.rsform.employeeposition.options.length; i++ )
    {
        if (document.rsform.employeeposition.options[i].value == position)
            document.rsform.employeeposition.options[i].selected = true;
        else
            document.rsform.employeeposition.options[i].selected = false;
    }
}

function addForm()
{
    selectAllMembers();
    document.rsform.submit();
}

function removeemployeeData()
{
    document.rsform.deleteemployeedata.value = 1;
    document.rsform.submit();
}

function xMovie(opentodos,$alertstring)
{
    if (opentodos > 0)
    {
       alert($alertstring);
       return false;
    }
    else
    {
        for (var i = 0; i < document.getElementById(\'list1\').childNodes.length; i++)
        {
            if (document.getElementById(\'list1\').childNodes[i].selected == true)
            {
                var newChild = document.getElementById(\'list1\').childNodes[i].cloneNode(true);
                document.getElementById(\'list2\').appendChild(newChild);
                document.getElementById(\'list1\').removeChild(document.getElementById(\'list1\').childNodes[i]);
            }
        }
    }
    return true;
}

function MovieToAnotherList(thisobj,listName)
{
    if (thisobj.hasChildNodes())
    {
        for (var i = 0; i < thisobj.childNodes.length; i++)
        {
            if (thisobj.childNodes[i].selected == true)
            {
                if (listName==\'list2\' && document.getElementById(\'employeeid\').value > 0)
                {
                    x_getOpenTodos(thisobj.childNodes[i].value,document.getElementById(\'employeeid\').value);
                    return true;
                }

                var newChild = thisobj.childNodes[i].cloneNode(true);
                document.getElementById(listName).appendChild(newChild);
                thisobj.removeChild(thisobj.childNodes[i]);
            }
        }
        return true;
    }
    else
    {
        return false;
    }
}

function selectAllMembers()
{
    if (document.getElementById(\'list1\').hasChildNodes())
    {
        for (var i = 0; i < document.getElementById(\'list1\').childNodes.length; i++)
        {
            document.getElementById(\'list1\').childNodes[i].selected = true;
        }
    }
}

function clearSelection(selectId)
{
    while(document.getElementById(selectId).options.length > 0)
        document.getElementById(selectId).removeChild(document.getElementById(selectId).firstChild);
}

function addOption(selectId,txt,val)
{
    var objOption = new Option(txt,val);
	document.getElementById(selectId).options[document.getElementById(selectId).options.length] = objOption;
}
</script>
'; ?>


<?php if ($this->_tpl_vars['esortorder'] == 'DESC'): ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'ASC');  else: ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'DESC');  endif;  $this->assign('blankimage', '<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />');  $this->assign('s_login', $this->_tpl_vars['blankimage']);  $this->assign('o_login', 'ASC');  $this->assign('s_active', $this->_tpl_vars['blankimage']);  $this->assign('o_active', 'ASC');  $this->assign('s_name', $this->_tpl_vars['blankimage']);  $this->assign('o_name', 'ASC');  $this->assign('s_position', $this->_tpl_vars['blankimage']);  $this->assign('o_position', 'ASC'); ?>

<?php if ($this->_tpl_vars['esortfield'] == 'name'): ?>
    <?php $this->assign('s_name', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_name', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['esortfield'] == 'active'): ?>
    <?php $this->assign('s_active', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_active', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['esortfield'] == 'position'): ?>
    <?php $this->assign('s_position', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_position', $this->_tpl_vars['newOrderValue']);  else: ?>
    <?php $this->assign('s_login', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_login', $this->_tpl_vars['newOrderValue']);  endif; ?>

<div style="width:660px;float:left;margin-right:20px;">
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="esortfield" value="<?php echo $this->_tpl_vars['esortfield']; ?>
" type="hidden" />
<input name="esortorder" value="<?php echo $this->_tpl_vars['esortorder']; ?>
" type="hidden" />
<table cellpadding="4" cellspacing="0">
    <tr>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['search']; ?>
</td>
        <td style="width:140px;text-align:left;"><input type="text" name="esearchstring" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['esearchstring'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:120px;" /></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['show']; ?>
</td>
        <td><select name="estatus" style="width:120px;"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['status_options'],'selected' => $this->_tpl_vars['estatus']), $this);?>
</select></td>
        <td><img src="images/reload.png" alt="<?php echo $this->_tpl_vars['dict']['reload']; ?>
" title="<?php echo $this->_tpl_vars['dict']['reload']; ?>
" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:120px;" onclick="sortTable('login','<?php echo $this->_tpl_vars['o_login']; ?>
')"><?php echo $this->_tpl_vars['s_login']; ?>
 <?php echo $this->_tpl_vars['dict']['login']; ?>
</td>
        <td class="tablehead" style="width:63px;" onclick="sortTable('active','<?php echo $this->_tpl_vars['o_active']; ?>
')"><?php echo $this->_tpl_vars['s_active']; ?>
 <?php echo $this->_tpl_vars['dict']['activ']; ?>
</td>
        <td class="tablehead" onclick="sortTable('name','<?php echo $this->_tpl_vars['o_name']; ?>
')"><?php echo $this->_tpl_vars['s_name']; ?>
 <?php echo $this->_tpl_vars['dict']['emplname']; ?>
</td>
        <td class="tablehead" style="width:80px;" onclick="sortTable('position','<?php echo $this->_tpl_vars['o_position']; ?>
')"><?php echo $this->_tpl_vars['s_position']; ?>
 <?php echo $this->_tpl_vars['dict']['position']; ?>
</td>
    </tr>
</thead>
<tbody>
<?php unset($this->_sections['employee']);
$this->_sections['employee']['name'] = 'employee';
$this->_sections['employee']['loop'] = is_array($_loop=$this->_tpl_vars['employeelist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['employee']['show'] = true;
$this->_sections['employee']['max'] = $this->_sections['employee']['loop'];
$this->_sections['employee']['step'] = 1;
$this->_sections['employee']['start'] = $this->_sections['employee']['step'] > 0 ? 0 : $this->_sections['employee']['loop']-1;
if ($this->_sections['employee']['show']) {
    $this->_sections['employee']['total'] = $this->_sections['employee']['loop'];
    if ($this->_sections['employee']['total'] == 0)
        $this->_sections['employee']['show'] = false;
} else
    $this->_sections['employee']['total'] = 0;
if ($this->_sections['employee']['show']):

            for ($this->_sections['employee']['index'] = $this->_sections['employee']['start'], $this->_sections['employee']['iteration'] = 1;
                 $this->_sections['employee']['iteration'] <= $this->_sections['employee']['total'];
                 $this->_sections['employee']['index'] += $this->_sections['employee']['step'], $this->_sections['employee']['iteration']++):
$this->_sections['employee']['rownum'] = $this->_sections['employee']['iteration'];
$this->_sections['employee']['index_prev'] = $this->_sections['employee']['index'] - $this->_sections['employee']['step'];
$this->_sections['employee']['index_next'] = $this->_sections['employee']['index'] + $this->_sections['employee']['step'];
$this->_sections['employee']['first']      = ($this->_sections['employee']['iteration'] == 1);
$this->_sections['employee']['last']       = ($this->_sections['employee']['iteration'] == $this->_sections['employee']['total']);
?>

<?php if ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_status == 0): ?>
    <?php $this->assign('class', 'completed');  else: ?>
    <?php $this->assign('class', "");  endif; ?>

<?php $this->assign('comment', ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('clearcomment', true, $_tmp) : smarty_modifier_clearcomment($_tmp))); ?>
    <tr id="tr<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
"
        onmouseover="setHover(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
)"
        onmouseout="setNormal(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
)" >

        <td style="cursor:pointer;padding-left:4px;" class="standard<?php echo $this->_tpl_vars['class']; ?>
" onclick="x_getEmplData(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
)" ><?php echo ((is_array($_tmp=$this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_login)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="cursor:default;text-align:center" class="standard<?php echo $this->_tpl_vars['class']; ?>
">
        <?php if ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_status != 0): ?>
            <?php $this->assign('checkedcompl', ' checked="checked"'); ?>
        <?php else: ?>
            <?php $this->assign('checkedcompl', ''); ?>
        <?php endif; ?>
            <input type="checkbox"
                   id="chkbox<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
"
                   name="chkbox<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
"
                   value="<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_status; ?>
"
                   onclick="x_changeEmplStatus(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)"<?php echo $this->_tpl_vars['checkedcompl']; ?>
 />
        </td>
        <td style="cursor:pointer;" onclick="x_getEmplData(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
)"
         <?php if ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_comment):  echo smarty_function_popup(array('text' => ($this->_tpl_vars['comment']),'caption' => $this->_tpl_vars['dict']['commentar'],'fgcolor' => "#fafafa",'width' => '400','offsety' => -70,'offsetx' => -10,'captionsize' => '2','textsize' => '2'), $this); endif; ?> class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_surname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
, <?php echo ((is_array($_tmp=$this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
<?php if ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_position == 5): ?>
    <?php $this->assign('position', $this->_tpl_vars['dict']['trainee_short']);  elseif ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_position == 10): ?>
    <?php $this->assign('position', $this->_tpl_vars['dict']['empl_short']);  elseif ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_position == 50): ?>
    <?php $this->assign('position', $this->_tpl_vars['dict']['PM']);  elseif ($this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_position == 100): ?>
    <?php $this->assign('position', $this->_tpl_vars['dict']['SM']);  else: ?>
    <?php $this->assign('position', $this->_tpl_vars['dict']['noPosition']);  endif; ?>
        <td style="cursor:pointer;text-align:center;padding-right:4px;" class="standard<?php echo $this->_tpl_vars['class']; ?>
" onclick="x_getEmplData(<?php echo $this->_tpl_vars['employeelist'][$this->_sections['employee']['index']]->empl_id; ?>
)" ><?php echo $this->_tpl_vars['position']; ?>
</td>
    </tr>
<?php endfor; endif; ?>
</tbody>
</table>
</div>

<div style="width:490px;float:left">
    <form action="index.php" method="post" name="rsform">
    <input name="employeeid" id="employeeid" value="<?php echo $this->_tpl_vars['empl_formvars']->empl_id; ?>
" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    <input name="deleteemployeedata" id="deleteemployeedata" value="0" type="hidden" />
    <?php if ($this->_tpl_vars['errors']): ?><div id="errdiv">
    <span style="color:red;font-weight:bold"><?php echo $this->_tpl_vars['dict']['error']; ?>
</span>
        <ul style="color:red">
        <?php $_from = $this->_tpl_vars['errors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['error']):
?>
            <li><?php echo $this->_tpl_vars['error']; ?>
</li>
        <?php endforeach; endif; unset($_from); ?>
        </ul></div>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['empl_formvars']->empl_id):  $this->assign('legend', $this->_tpl_vars['dict']['employeeedit']); ?>
    <?php else:  $this->assign('legend', $this->_tpl_vars['dict']['employeeadd']);  endif; ?>
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel"><?php echo $this->_tpl_vars['legend']; ?>
</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="employeecreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="employeechanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="removeemployeedata"
         width="24"
         height="24"
         alt="<?php echo $this->_tpl_vars['dict']['remove']; ?>
"
         title="<?php echo $this->_tpl_vars['dict']['remove']; ?>
"
         style="cursor:pointer;padding:0 10px 0 10px;display:<?php echo $this->_tpl_vars['archivestyle']; ?>
"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="removeemployeeData()" />
    <img src="images/_add.png"
         id="addrecord"
         width="24"
         height="24"
         alt="<?php echo $this->_tpl_vars['dict']['newrecord']; ?>
"
         title="<?php echo $this->_tpl_vars['dict']['newrecord']; ?>
"
         onmouseover="this.src='images/add.png'"
         onmouseout="this.src='images/_add.png'"
         style="cursor:pointer;padding:0 10px 0 10px;"
         onclick="clearForm()" />
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
         style="cursor:pointer;padding:0 0 0 10px;"
         onclick="addForm()" /></td>
            </tr>
        </table>

            <table style="width:100%;background-color:#f0f0f0;border:0;-moz-border-radius:8px;" cellspacing="4" cellpadding="1">
                <tr>
                    <td style="width:260px;"><?php echo $this->_tpl_vars['dict']['login']; ?>
</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeelogin"
                               id="employeelogin"
                               value="<?php echo ((is_array($_tmp=$this->_tpl_vars['empl_formvars']->empl_login)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['firstname']; ?>
</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeefirstname"
                               id="employeefirstname"
                               value="<?php echo ((is_array($_tmp=$this->_tpl_vars['empl_formvars']->empl_firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['surname']; ?>
</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeesurname"
                               id="employeesurname"
                               value="<?php echo ((is_array($_tmp=$this->_tpl_vars['empl_formvars']->empl_surname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['password']; ?>
</td>
                    <td><input style="width:280px;"
                               type="password"
                               name="employeepassword"
                               id="employeepassword" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['password_retry']; ?>
</td>
                    <td><input style="width:280px;"
                               type="password"
                               name="employeepasswordretry"
                               id="employeepasswordretry" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['position']; ?>
</td>
                    <td><select name="employeeposition" id="employeeposition" style="width:280px;">
<?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['empl_formvars']->position_options,'selected' => $this->_tpl_vars['empl_formvars']->empl_position), $this);?>

</select></td>
                </tr>
                <tr><?php if ($this->_tpl_vars['empl_formvars']->empl_status != 0): ?>
    <?php $this->assign('agreechecked', ' checked="checked"');  else: ?>
    <?php $this->assign('agreechecked', '');  endif; ?>
                    <td>&nbsp;</td><td><div style="border:1px solid red; padding:2px;width:200px;text-align:center"><label for="employeeaktive"><?php echo $this->_tpl_vars['dict']['empl_active']; ?>
: </label><input type="checkbox" id="employeeaktive" name="employeeaktive" value="1" style="vertical-align:middle"<?php echo $this->_tpl_vars['agreechecked']; ?>
 /></div></td>
                </tr>
                <tr>
                    <td colspan="2"><?php echo $this->_tpl_vars['dict']['commentar']; ?>
<br /><textarea rows="6" cols="50"  name="employeecomment" id="employeecomment" style="width:450px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['empl_formvars']->empl_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width:100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><?php echo $this->_tpl_vars['dict']['memberinprojects']; ?>
<br />
                                    <select name="MemberInProjects[]" id="list1" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list2');" multiple="multiple"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['empl_formvars']->memberProjectListArray), $this);?>
</select></td>
                                <td>&nbsp;</td>
                                <td><?php echo $this->_tpl_vars['dict']['projectlist']; ?>
<br />
                                    <select name="ProjectList" id="list2" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list1');" multiple="multiple"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['empl_formvars']->projectListArray), $this);?>
</select></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>

<div style="clear:both">&nbsp;</div>