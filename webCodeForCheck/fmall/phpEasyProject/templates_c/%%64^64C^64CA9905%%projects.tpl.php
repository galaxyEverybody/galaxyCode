<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:53
         compiled from projects.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'popup_init', 'projects.tpl', 1, false),array('function', 'html_options', 'projects.tpl', 211, false),array('function', 'popup', 'projects.tpl', 251, false),array('modifier', 'escape', 'projects.tpl', 209, false),array('modifier', 'clearcomment', 'projects.tpl', 234, false),)), $this); ?>
<?php echo smarty_function_popup_init(array('src' => "./scripts/overlib.js"), $this);?>

<?php echo '

<script type="text/javascript">
function sortTable(sortfieldvalue,sortordervalue)
{
    document.tableform.psortfield.value = sortfieldvalue;
    document.tableform.psortorder.value = sortordervalue;
    document.tableform.submit();
}

function clearForm()
{
    document.rsform.projectid.value = \'\';
    document.rsform.projectname.value = \'\';
    document.rsform.projectstatus.checked = true;
    document.rsform.projectcomment.value = \'\';

    document.getElementById(\'removeprojectdata\').style.display = \'none\';
    document.getElementById(\'copyimage\').style.display = \'none\';

    document.getElementById(\'formtitel\').firstChild.nodeValue = \'';  echo $this->_tpl_vars['dict']['projectadd'];  echo '\';
    x_setNewMemberList();
    while (document.getElementById(\'projectcreated\').hasChildNodes())
        document.getElementById(\'projectcreated\').removeChild(document.getElementById(\'projectcreated\').firstChild);
    while (document.getElementById(\'projectchanged\').hasChildNodes())
        document.getElementById(\'projectchanged\').removeChild(document.getElementById(\'projectchanged\').firstChild);
    if (document.getElementById(\'errdiv\'))
    {
        while (document.getElementById(\'errdiv\').hasChildNodes())
            document.getElementById(\'errdiv\').removeChild(document.getElementById(\'errdiv\').firstChild);
    }
    unmarkAll(0);
}

function setFormNewStatus(pr_id,status)
{
    if (document.rsform.projectid.value == pr_id)
    {
        if (status == 0)
            document.rsform.projectstatus.checked = false;
        else
            document.rsform.projectstatus.checked = true;
    }
}

function setFormTitle(titleValue) {
    document.getElementById(\'formtitel\').firstChild.nodeValue = titleValue;
}

function addForm()
{
    selectAllMembers();
    document.rsform.submit();
}

function getPrPositions(projectid)
{
    var projectNumberTag = document.createElement("input");

    var projectNumberTagName = document.createAttribute("name");
    projectNumberTagName.nodeValue = \'projectnr\';
    projectNumberTag.setAttributeNode(projectNumberTagName);

    var projectNumberTagValue = document.createAttribute("value");
    projectNumberTagValue.nodeValue = projectid;
    projectNumberTag.setAttributeNode(projectNumberTagValue);

    var projectNumberTagType = document.createAttribute("type");
    projectNumberTagType.nodeValue = \'hidden\';
    projectNumberTag.setAttributeNode(projectNumberTagType);

    document.getElementById(\'actionscontrol\').appendChild(projectNumberTag);

    submitActionForm(\'projectposition\');
}

function removeprojectData()
{
    document.rsform.deleteprojectdata.value = 1;
    document.rsform.submit();
}

function copyprojectData()
{
    document.rsform.copyprojectdata.value = 1;
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
                if (listName==\'list2\' && document.getElementById(\'projectid\').value > 0)
                {
                    x_getOpenTodos(document.getElementById(\'projectid\').value, thisobj.childNodes[i].value);
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

function mark(todo, field)
{
    for (var i = 0; i < document.getElementById(field).childNodes.length; i++)
    {
        if (todo == \'on\' && document.getElementById(field).childNodes[i].nodeType == 1)
        {
            document.getElementById(field).childNodes[i].selected = true;
        }
        else if(document.getElementById(field).childNodes[i].nodeType == 1)
        {
            document.getElementById(field).childNodes[i].selected = false;
        }
    }
}
</script>
'; ?>


<?php if ($this->_tpl_vars['psortorder'] == 'DESC'): ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'ASC');  else: ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'DESC');  endif;  $this->assign('blankimage', '<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />');  $this->assign('s_active', $this->_tpl_vars['blankimage']);  $this->assign('o_active', 'ASC');  $this->assign('s_name', $this->_tpl_vars['blankimage']);  $this->assign('o_name', 'ASC'); ?>

<?php if ($this->_tpl_vars['psortfield'] == 'active'): ?>
    <?php $this->assign('s_active', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_active', $this->_tpl_vars['newOrderValue']);  else: ?>
    <?php $this->assign('s_name', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_name', $this->_tpl_vars['newOrderValue']);  endif; ?>

<div style="width:660px;float:left;margin-right:20px;">
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="psortfield" value="<?php echo $this->_tpl_vars['psortfield']; ?>
" type="hidden" />
<input name="psortorder" value="<?php echo $this->_tpl_vars['psortorder']; ?>
" type="hidden" />
<table cellpadding="4" cellspacing="0">
    <tr>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['search']; ?>
</td>
        <td style="width:200px;text-align:left;"><input type="text" name="psearchstring" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['psearchstring'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:180px;" /></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['show']; ?>
</td>
        <td><select name="pstatus" style="width:200px;"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['status_options'],'selected' => $this->_tpl_vars['pstatus']), $this);?>
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
        <td class="tablehead" style="width:63px;" onclick="sortTable('active','<?php echo $this->_tpl_vars['o_active']; ?>
')"><?php echo $this->_tpl_vars['s_active']; ?>
 <?php echo $this->_tpl_vars['dict']['activ']; ?>
</td>
        <td class="tablehead" onclick="sortTable('projects','<?php echo $this->_tpl_vars['o_name']; ?>
')"><?php echo $this->_tpl_vars['s_name']; ?>
 <?php echo $this->_tpl_vars['dict']['projectname']; ?>
</td>
        <td class="tablehead" style="width:20px;">&nbsp;</td>
    </tr>
</thead>
<tbody>
<?php unset($this->_sections['project']);
$this->_sections['project']['name'] = 'project';
$this->_sections['project']['loop'] = is_array($_loop=$this->_tpl_vars['projectlist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['project']['show'] = true;
$this->_sections['project']['max'] = $this->_sections['project']['loop'];
$this->_sections['project']['step'] = 1;
$this->_sections['project']['start'] = $this->_sections['project']['step'] > 0 ? 0 : $this->_sections['project']['loop']-1;
if ($this->_sections['project']['show']) {
    $this->_sections['project']['total'] = $this->_sections['project']['loop'];
    if ($this->_sections['project']['total'] == 0)
        $this->_sections['project']['show'] = false;
} else
    $this->_sections['project']['total'] = 0;
if ($this->_sections['project']['show']):

            for ($this->_sections['project']['index'] = $this->_sections['project']['start'], $this->_sections['project']['iteration'] = 1;
                 $this->_sections['project']['iteration'] <= $this->_sections['project']['total'];
                 $this->_sections['project']['index'] += $this->_sections['project']['step'], $this->_sections['project']['iteration']++):
$this->_sections['project']['rownum'] = $this->_sections['project']['iteration'];
$this->_sections['project']['index_prev'] = $this->_sections['project']['index'] - $this->_sections['project']['step'];
$this->_sections['project']['index_next'] = $this->_sections['project']['index'] + $this->_sections['project']['step'];
$this->_sections['project']['first']      = ($this->_sections['project']['iteration'] == 1);
$this->_sections['project']['last']       = ($this->_sections['project']['iteration'] == $this->_sections['project']['total']);
?>

<?php if ($this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_status == 0): ?>
    <?php $this->assign('class', 'completed');  else: ?>
    <?php $this->assign('class', "");  endif; ?>

<?php $this->assign('comment', ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('clearcomment', true, $_tmp) : smarty_modifier_clearcomment($_tmp))); ?>
    <tr id="tr<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
"
        onmouseover="setHover(<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
)"
        onmouseout="setNormal(<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
)" >
        <td style="cursor:default;text-align:center" class="standard<?php echo $this->_tpl_vars['class']; ?>
">
        <?php if ($this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_status != 0): ?>
            <?php $this->assign('checkedcompl', ' checked="checked"'); ?>
        <?php else: ?>
            <?php $this->assign('checkedcompl', ''); ?>
        <?php endif; ?>
            <input type="checkbox"
                   id="chkbox<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
"
                   name="chkbox<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
"
                   value="<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_status; ?>
"
                   onclick="x_changeProjectStatus(<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)"<?php echo $this->_tpl_vars['checkedcompl']; ?>
 />
        </td>
        <td style="cursor:pointer;" onclick="x_getProjectData(<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
)"
         <?php if ($this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_comment):  echo smarty_function_popup(array('text' => ($this->_tpl_vars['comment']),'caption' => $this->_tpl_vars['dict']['commentar'],'fgcolor' => "#fafafa",'width' => '400','offsety' => -70,'offsetx' => -10,'captionsize' => '2','textsize' => '2'), $this); endif; ?> class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="cursor:pointer;text-align:center;width:20px;" class="standard<?php echo $this->_tpl_vars['class']; ?>
">
            <img src="images/activity.png"
                 height="16"
                 width="16"
                 alt="<?php echo $this->_tpl_vars['dict']['projectpositions']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['projectpositions']; ?>
"
                 style="cursor:pointer"
                 onclick="getPrPositions(<?php echo $this->_tpl_vars['projectlist'][$this->_sections['project']['index']]->pr_id; ?>
)" /></td>
    </tr>
<?php endfor; endif;  if ($this->_tpl_vars['projectlist']):  else: ?><tr><td colspan="3" class="standard" style="text-align:center"><?php echo $this->_tpl_vars['dict']['emptylist']; ?>
</td></tr><?php endif; ?>
</tbody>
</table>
</div>

<div style="width:490px;float:left">
    <form action="index.php" method="post" name="rsform">
    <input name="projectid" id="projectid" value="<?php echo $this->_tpl_vars['pr_formvars']->pr_id; ?>
" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    <input name="deleteprojectdata" id="deleteprojectdata" value="0" type="hidden" />
    <input name="copyprojectdata" id="copyprojectdata" value="0" type="hidden" />
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
    <?php if ($this->_tpl_vars['pr_formvars']->pr_id):  $this->assign('legend', $this->_tpl_vars['dict']['projectedit']); ?>
    <?php else:  $this->assign('legend', $this->_tpl_vars['dict']['projectadd']);  endif; ?>
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel"><?php echo $this->_tpl_vars['legend']; ?>
</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="projectcreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="projectchanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="removeprojectdata"
         width="24"
         height="24"
         alt="<?php echo $this->_tpl_vars['dict']['remove']; ?>
"
         title="<?php echo $this->_tpl_vars['dict']['remove']; ?>
"
         style="cursor:pointer;padding:0 8px 0 8px;display:<?php echo $this->_tpl_vars['archivestyle']; ?>
"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="removeprojectData()" />
    <img src="images/_copy.png"
         id="copyimage"
         width="24"
         height="24"
         alt="<?php echo $this->_tpl_vars['dict']['copy']; ?>
"
         title="<?php echo $this->_tpl_vars['dict']['copy']; ?>
"
         style="cursor:pointer;padding:0 8px 0 8px;display:<?php echo $this->_tpl_vars['copystyle']; ?>
"
         onmouseover="this.src='images/copy.png'"
         onmouseout="this.src='images/_copy.png'"
         onclick="copyprojectData()" />
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
         style="cursor:pointer;padding:0 8px 0 8px;"
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
         style="cursor:pointer;padding:0 0 0 8px;"
         onclick="addForm()" /></td>
            </tr>
        </table>

            <table style="width:100%;background-color:#f0f0f0;border:0;-moz-border-radius:8px;" cellspacing="4" cellpadding="1">
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['projectname']; ?>
</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="projectname"
                               id="projectname"
                               value="<?php echo ((is_array($_tmp=$this->_tpl_vars['pr_formvars']->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr><?php if ($this->_tpl_vars['pr_formvars']->pr_status != 0): ?>
    <?php $this->assign('agreechecked', ' checked="checked"');  else: ?>
    <?php $this->assign('agreechecked', '');  endif; ?>
                    <td>&nbsp;</td><td><div style="border:1px solid red; padding:2px;width:200px;text-align:center"><label for="projectstatus"><?php echo $this->_tpl_vars['dict']['projectisactive']; ?>
: </label><input type="checkbox" id="projectstatus" name="projectstatus" value="1" style="vertical-align:middle"<?php echo $this->_tpl_vars['agreechecked']; ?>
 /></div></td>
                </tr>
                <tr>
                    <td colspan="2"><?php echo $this->_tpl_vars['dict']['commentar']; ?>
<br /><textarea rows="6" cols="50"  name="projectcomment" id="projectcomment" style="width:450px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['pr_formvars']->pr_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width:100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><?php echo $this->_tpl_vars['dict']['projectmembers']; ?>
<br />
                                    <select name="MembersInProject[]" id="list1" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list2');" multiple="multiple"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pr_formvars']->membersInProjectArray), $this);?>
</select></td>
                                <td>&nbsp;</td>
                                <td><?php echo $this->_tpl_vars['dict']['employeeslist']; ?>
<br />
                                    <select name="ProjectList" id="list2" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list1');" multiple="multiple"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pr_formvars']->membersArray), $this);?>
</select></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
    </form>

<div style="width:490px;float:left">
    <form action="export.php" method="post" name="exportform">
    <input name="formsend" value="1" type="hidden" />
    <?php if ($this->_tpl_vars['exp_errors']): ?>
    <span style="color:red;font-weight:bold"><?php echo $this->_tpl_vars['dict']['error']; ?>
</span>
        <ul style="color:red">
        <?php $_from = $this->_tpl_vars['exp_errors']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['error']):
?>
            <li><?php echo $this->_tpl_vars['error']; ?>
</li>
        <?php endforeach; endif; unset($_from); ?>
        </ul>
    <?php endif; ?>
        <fieldset style="-moz-border-radius:8px;"><legend><?php echo $this->_tpl_vars['dict']['export']; ?>
</legend>
            <table cellspacing="1" cellpadding="4" style="width:100%">
                <tr>
                    <td style="vertical-align:top;"><?php echo $this->_tpl_vars['dict']['startdate']; ?>
<br />
                    <input type="text"
                           style="width:80px;color:darkblue;"
                           name="expstart"
                           id="expstart"
                           value="<?php echo $this->_tpl_vars['formvars']->expstart; ?>
" /> <img
                    src="./jscalendar/img.gif"
                    id="f_expstart"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="<?php echo $this->_tpl_vars['dict']['dateselector']; ?>
"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" /><br /><br />
                    <?php echo $this->_tpl_vars['dict']['finishdate']; ?>
<br />
                    <input type="text"
                           style="width:80px;color:darkblue;"
                           name="expfinish"
                           id="expfinish"
                           value="<?php echo $this->_tpl_vars['formvars']->expfinish; ?>
" /> <img
                    src="./jscalendar/img.gif"
                    id="f_expfinish"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="<?php echo $this->_tpl_vars['dict']['dateselector']; ?>
"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" />
                    <br /><br />
                    <input type="hidden" name="taetexport" value="1" />
                    <?php echo $this->_tpl_vars['dict']['groupby']; ?>
:<br />

                    <input type="radio" name="groupby" value="userprojects" id="groupbyusrpr" checked="checked" /> <label for="groupbyusrpr" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['employees']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="projects" id="usrpr" checked="checked" disabled="disabled" /> <?php echo $this->_tpl_vars['dict']['projects']; ?>
<br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="prpos" id="usrprpos" checked="checked" /> <label for="usrprpos" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['projectpositions']; ?>
</label><br /><br />

                    <input type="radio" name="groupby" value="time" id="groupbytime" /> <label for="groupbytime" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['employees']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="month" id="timescalamonth" checked="checked" /> <label for="timescalamonth" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['months']; ?>
</label><br />                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="day" id="timescaladay" checked="checked" /> <label for="timescaladay" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['days']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="activity" id="activity" checked="checked" /> <label for="activity" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['activity']; ?>
</label><br /><br />

                    <input type="radio" name="groupby" value="projects" id="groupbyprojects" /> <label for="groupbyprojects" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['projects']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options3[]" value="prpos" id="prpos" checked="checked" /> <label for="prpos" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['projectpositions']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options3[]" value="users" id="prusers" checked="checked" /> <label for="prusers" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['employees']; ?>
</label>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top;"><?php echo $this->_tpl_vars['dict']['employees']; ?>
<br />
<select name="users[]" id="empllist" multiple="multiple" size="7" style="width:280px;"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['pr_formvars']->membersArray), $this);?>
</select><br />
<a href="javascript:mark('on','empllist')"><?php echo $this->_tpl_vars['dict']['markon']; ?>
</a> / <a href="javascript:mark('off','empllist')"><?php echo $this->_tpl_vars['dict']['markoff']; ?>
</a><br /><br />
<?php echo $this->_tpl_vars['dict']['projects']; ?>
<br />
<select name="expprojectid[]" id="expprojectid" multiple="multiple" size="7" style="width:280px;">
<?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->projectsArray), $this);?>

</select><br />
<a href="javascript:mark('on','expprojectid')"><?php echo $this->_tpl_vars['dict']['markon']; ?>
</a> / <a href="javascript:mark('off','expprojectid')"><?php echo $this->_tpl_vars['dict']['markoff']; ?>
</a><br /><br />
<input type="radio" name="exptype" value="xml" id="typexml" checked="checked" /> <label for="typexml" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['xmlformat']; ?>
</label><br />
                    <input type="radio" name="exptype" value="html" id="typehtml" /> <label for="typehtml" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['htmlformat']; ?>
</label><br />
                    <br /><input type="submit" name="exportdata" value="<?php echo $this->_tpl_vars['dict']['makeexport']; ?>
" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</div>

<div style="clear:both">&nbsp;</div>
<?php echo '
<script type="text/javascript" language="JavaScript">
mark(\'on\',\'empllist\');
mark(\'on\',\'expprojectid\');
    Calendar.setup({
        inputField     :    "expstart",     // id of the input field
        button         :    "f_expstart",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        singleClick    :    true
    });
    Calendar.setup({
        inputField     :    "expfinish",     // id of the input field
        button         :    "f_expfinish",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        singleClick    :    true
});
    </script>
'; ?>