<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:44
         compiled from todolist.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'popup_init', 'todolist.tpl', 8, false),array('function', 'html_options', 'todolist.tpl', 223, false),array('function', 'popup', 'todolist.tpl', 278, false),array('modifier', 'escape', 'todolist.tpl', 219, false),array('modifier', 'clearcomment', 'todolist.tpl', 258, false),)), $this); ?>
<div style="height:1px;width:10px;margin:0;padding:0;line-height:0;font-size:0px"><!--Fehler in MS IE//-->;</div>
<div class="undertabdiv">
    <div class="tabrow">
        <span class="tab<?php echo $this->_tpl_vars['sel_2_1']; ?>
"><?php echo $this->_tpl_vars['dict']['active']; ?>
</span>
        <span class="tab"<?php echo $this->_tpl_vars['mouseevents_2_2'];  echo $this->_tpl_vars['link_2_2']; ?>
><?php echo $this->_tpl_vars['dict']['archive']; ?>
</span>
    </div>
    <div class="tabpage" style="display:block;">
<?php echo smarty_function_popup_init(array('src' => "./scripts/overlib.js"), $this);?>

<?php echo '

<script type="text/javascript">
function sortTable(sortfieldvalue,sortordervalue)
{
    document.tableform.sortfield.value = sortfieldvalue;
    document.tableform.sortorder.value = sortordervalue;
    document.tableform.submit();
}

function getNextPage(page)
{
    document.nextpage.page.value = page;
    document.nextpage.submit();
}

function clearForm()
{
    x_clear_todo_id();
    document.rsform.todotitle.value = \'\';
    document.rsform.todostart.value = getFullDate();
    document.rsform.todofinish.value = \'\';

    document.rsform.tododof[0].checked = true;
    document.rsform.todoagreed.checked = false;
    document.getElementById(\'divprivat\').style.display = \'inline\';
    document.rsform.todoprivat.checked = false;

    setDifference(';  echo $this->_tpl_vars['todo_formvars']->todo_warndiff;  echo ');

    document.rsform.todocomment.value = \'\';
    document.getElementById(\'moveintoarchive\').style.display = \'none\';

    document.getElementById(\'formtitel\').firstChild.nodeValue = \'';  echo $this->_tpl_vars['dict']['todoadd'];  echo '\';
    while (document.getElementById(\'todocreated\').hasChildNodes())
        document.getElementById(\'todocreated\').removeChild(document.getElementById(\'todocreated\').firstChild);
    while (document.getElementById(\'todochanged\').hasChildNodes())
        document.getElementById(\'todochanged\').removeChild(document.getElementById(\'todochanged\').firstChild);
    if (document.getElementById(\'errdiv\'))
    {
        while (document.getElementById(\'errdiv\').hasChildNodes())
            document.getElementById(\'errdiv\').removeChild(document.getElementById(\'errdiv\').firstChild);
    }
    unmarkAll(0);
}

function setFormNewDoC(todo_id,valDoF)
{
    if (document.rsform.todoid.value == todo_id)
        setDegreeOfComplete(valDoF)
}

function setDegreeOfComplete(valDoF)
{
    for (var i = 0; i < document.rsform.tododof.length; i++)
    {
        if (document.rsform.tododof[i].value == valDoF)
        {
            document.rsform.tododof[i].checked = true;
        }
    }
}

function setDifference(valDiff)
{
    for (var i = 1; i < document.rsform.todowarndiff.options.length; i++)
    {
        if (document.rsform.todowarndiff.options[i].value == valDiff)
            document.rsform.todowarndiff.options[i].selected = true;
        else
            document.rsform.todowarndiff.options[i].selected = false;
    }

}

function setFormTitle(titleValue) {
    document.getElementById(\'formtitel\').firstChild.nodeValue = titleValue;
}

function setProjectSelected(pr_id)
{
    for( var i = 0; i < document.rsform.todoproject.options.length; i++ )
    {
        if (document.rsform.todoproject.options[i].value == pr_id)
            document.rsform.todoproject.options[i].selected = true;
        else
            document.rsform.todoproject.options[i].selected = false;
    }
}

function addForm()
{
    document.rsform.submit();
}

function moveIntoArchive()
{
    document.rsform.movefield.value = 1;
    document.rsform.submit();
}

function getFullDate()
{
    var jetzt = new Date();
    var Tag = jetzt.getDate();
    var Monat = jetzt.getMonth()+1;
    var Jahr = jetzt.getFullYear();
    if (Tag < 10)
        var TagString = \'0\'+ Tag;
    else
        var TagString = \'\' + Tag;

    if (Monat < 10)
        var MonatString = \'0\'+ Monat;
    else
        var MonatString = \'\' + Monat;

    return TagString + \'.\' + MonatString + \'.\' + Jahr;
}

function clearSelection(selectId)
{
    while(document.getElementById(selectId).options.length > 0)
        document.getElementById(selectId).removeChild(document.getElementById(selectId).firstChild);
}

function addOption(selectId,txt,val,selected,disabled)
{
    if (val == selected)
        var defSelected = true;
    else
        var defSelected = false;
    var textlength = txt.length;
    var Ergebnis = txt.replace(/¤/g,\'\');
    var Ergebnislength = (textlength - Ergebnis.length)*4;
    var zusatz = \'\';
    if (Ergebnislength > 0)
    {
        for (var i = 0; i < Ergebnislength; i++)
            zusatz = zusatz + String.fromCharCode(160);
    }
    var objOption = new Option(zusatz+\'\'+Ergebnis,val,defSelected);
	document.getElementById(selectId).options[document.getElementById(selectId).options.length] = objOption;
	if (disabled == 0)
	{
	    document.getElementById(selectId).options[document.getElementById(selectId).options.length-1].className=\'strike\';
	}
}
</script>
'; ?>


<?php if ($this->_tpl_vars['sortorder'] == 'DESC'): ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'ASC');  else: ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'DESC');  endif;  $this->assign('blankimage', '<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />');  $this->assign('s_number', $this->_tpl_vars['blankimage']);  $this->assign('o_number', 'ASC');  $this->assign('s_agreed', $this->_tpl_vars['blankimage']);  $this->assign('o_agreed', 'ASC');  $this->assign('s_prio', $this->_tpl_vars['blankimage']);  $this->assign('o_prio', 'ASC');  $this->assign('s_todo', $this->_tpl_vars['blankimage']);  $this->assign('o_todo', 'ASC');  $this->assign('s_project', $this->_tpl_vars['blankimage']);  $this->assign('o_project', 'ASC');  $this->assign('s_status', $this->_tpl_vars['blankimage']);  $this->assign('o_status', 'ASC');  $this->assign('s_DoC', $this->_tpl_vars['blankimage']);  $this->assign('o_DoC', 'ASC'); ?>

<?php if ($this->_tpl_vars['sortfield'] == 'agreed'): ?>
    <?php $this->assign('s_agreed', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_agreed', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'prio'): ?>
    <?php $this->assign('s_prio', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_prio', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'todo'): ?>
    <?php $this->assign('s_todo', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_todo', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'projects'): ?>
    <?php $this->assign('s_project', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_project', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'status'): ?>
    <?php $this->assign('s_status', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_status', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'doc'): ?>
    <?php $this->assign('s_DoC', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_DoC', $this->_tpl_vars['newOrderValue']);  else: ?>
    <?php $this->assign('s_number', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_number', $this->_tpl_vars['newOrderValue']);  endif; ?>

<div style="width:710px;float:left;margin-right:20px;">
<form name="nextpage" action="index.php" method="post" style="margin:0;">
<input name="page" value="<?php echo $this->_tpl_vars['activepage']; ?>
" type="hidden" />
</form>
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="sortfield" value="<?php echo $this->_tpl_vars['sortfield']; ?>
" type="hidden" />
<input name="sortorder" value="<?php echo $this->_tpl_vars['sortorder']; ?>
" type="hidden" />
<input name="page" value="1" type="hidden" />
<table cellpadding="4" cellspacing="0" style="width:100%">
    <tr>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['search']; ?>
</td>
        <td><input type="text" name="searchstring" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['searchstring'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:120px;" /></td>
        <td><?php echo $this->_tpl_vars['dict']['prio']; ?>
</td>
        <td><input name="prio" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['prio'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" style="width:20px;" /></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['show']; ?>
</td>
        <td><select name="status" style="width:120px;"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['todo_formvars']->status_list,'selected' => $this->_tpl_vars['status']), $this);?>
</select></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['projects']; ?>
</td>
        <td>
            <select name="projectnumber" style="margin-right:20px;width:120px;">
<?php $_from = $this->_tpl_vars['todo_formvars']->projects_options_with_all; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['project']):
 if ($this->_tpl_vars['pr_id'] == $this->_tpl_vars['project']->pr_id):  $this->assign('option_selected', ' selected="selected"');  else:  $this->assign('option_selected', '');  endif;  if ($this->_tpl_vars['project']->pr_status == 0):  $this->assign('option_class', ' class="strike"');  else:  $this->assign('option_class', '');  endif; ?>
            <option value="<?php echo $this->_tpl_vars['project']->pr_id; ?>
"<?php echo $this->_tpl_vars['option_class'];  echo $this->_tpl_vars['option_selected']; ?>
><?php echo ((is_array($_tmp=$this->_tpl_vars['project']->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</option>
    <?php endforeach; endif; unset($_from); ?>
            </select>
        </td>
        <td><img src="images/reload.png" alt="<?php echo $this->_tpl_vars['dict']['reload']; ?>
" title="<?php echo $this->_tpl_vars['dict']['reload']; ?>
" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:53px;" onclick="sortTable('id','<?php echo $this->_tpl_vars['o_number']; ?>
')"><?php echo $this->_tpl_vars['s_number']; ?>
 <?php echo $this->_tpl_vars['dict']['number_short']; ?>
</td>
        <td class="tablehead" style="width:70px;" onclick="sortTable('agreed','<?php echo $this->_tpl_vars['o_agreed']; ?>
')"><?php echo $this->_tpl_vars['s_agreed']; ?>
 <?php echo $this->_tpl_vars['dict']['agreed']; ?>
</td>
        <td class="tablehead" style="width:53px;" onclick="sortTable('prio','<?php echo $this->_tpl_vars['o_prio']; ?>
')"><?php echo $this->_tpl_vars['s_prio']; ?>
 <?php echo $this->_tpl_vars['dict']['prio']; ?>
</td>
        <td class="tablehead" onclick="sortTable('todo','<?php echo $this->_tpl_vars['o_todo']; ?>
')"><?php echo $this->_tpl_vars['s_todo']; ?>
 <?php echo $this->_tpl_vars['dict']['todo']; ?>
</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('projects','<?php echo $this->_tpl_vars['o_project']; ?>
')"><?php echo $this->_tpl_vars['s_project']; ?>
 <?php echo $this->_tpl_vars['dict']['project']; ?>
</td>
        <td class="tablehead" style="width:73px;" onclick="sortTable('status','<?php echo $this->_tpl_vars['o_status']; ?>
')"><?php echo $this->_tpl_vars['s_status']; ?>
 <?php echo $this->_tpl_vars['dict']['status']; ?>
</td>
        <td class="tablehead" style="width:73px;" onclick="sortTable('doc','<?php echo $this->_tpl_vars['o_DoC']; ?>
')"><?php echo $this->_tpl_vars['s_DoC']; ?>
 <?php echo $this->_tpl_vars['dict']['degree_of_completion']; ?>
</td>
    </tr>
</thead>
<tbody>
<?php unset($this->_sections['todo']);
$this->_sections['todo']['name'] = 'todo';
$this->_sections['todo']['loop'] = is_array($_loop=$this->_tpl_vars['todolist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['todo']['show'] = true;
$this->_sections['todo']['max'] = $this->_sections['todo']['loop'];
$this->_sections['todo']['step'] = 1;
$this->_sections['todo']['start'] = $this->_sections['todo']['step'] > 0 ? 0 : $this->_sections['todo']['loop']-1;
if ($this->_sections['todo']['show']) {
    $this->_sections['todo']['total'] = $this->_sections['todo']['loop'];
    if ($this->_sections['todo']['total'] == 0)
        $this->_sections['todo']['show'] = false;
} else
    $this->_sections['todo']['total'] = 0;
if ($this->_sections['todo']['show']):

            for ($this->_sections['todo']['index'] = $this->_sections['todo']['start'], $this->_sections['todo']['iteration'] = 1;
                 $this->_sections['todo']['iteration'] <= $this->_sections['todo']['total'];
                 $this->_sections['todo']['index'] += $this->_sections['todo']['step'], $this->_sections['todo']['iteration']++):
$this->_sections['todo']['rownum'] = $this->_sections['todo']['iteration'];
$this->_sections['todo']['index_prev'] = $this->_sections['todo']['index'] - $this->_sections['todo']['step'];
$this->_sections['todo']['index_next'] = $this->_sections['todo']['index'] + $this->_sections['todo']['step'];
$this->_sections['todo']['first']      = ($this->_sections['todo']['iteration'] == 1);
$this->_sections['todo']['last']       = ($this->_sections['todo']['iteration'] == $this->_sections['todo']['total']);
?>

<?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_status == 99): ?>
    <?php $this->assign('class', 'completed');  else: ?>
    <?php $this->assign('class', "");  endif; ?>

<?php $this->assign('comment', ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('clearcomment', true, $_tmp) : smarty_modifier_clearcomment($_tmp))); ?>
    <tr id="tr<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
        onmouseover="setHover(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
)"
        onmouseout="setNormal(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
)" >

        <td style="cursor:pointer;text-align:right;padding-right:4px;" class="number<?php echo $this->_tpl_vars['class']; ?>
" onclick="x_getFormData(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)" ><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
</td>
        <td style="cursor:default;text-align:center;" class="standard<?php echo $this->_tpl_vars['class']; ?>
">
        <?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_status > 0): ?>
            <?php $this->assign('checkedcompl', ' checked="checked"'); ?>
        <?php else: ?>
            <?php $this->assign('checkedcompl', ''); ?>
        <?php endif; ?>
            <input type="checkbox"
                   id="chkbox<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                   name="chkbox<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                   value="<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_status; ?>
"
                   onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,0)"<?php echo $this->_tpl_vars['checkedcompl']; ?>
 />
        </td>
        <td style="cursor:pointer; text-align:center;" onclick="x_getFormData(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_prio)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="cursor:pointer;" onclick="x_getFormData(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)"
         <?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_comment):  echo smarty_function_popup(array('text' => ($this->_tpl_vars['comment']),'caption' => $this->_tpl_vars['dict']['commentar'],'fgcolor' => "#fafafa",'width' => '400','offsety' => -70,'offsetx' => -10,'captionsize' => '2','textsize' => '2'), $this); endif; ?> class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_title)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="cursor:pointer;" onclick="x_getFormData(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="text-align:center" class="standard<?php echo $this->_tpl_vars['class']; ?>
">
<?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_status == 99): ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_gray.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['complete']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['complete']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_start > $this->_tpl_vars['today']): ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_blue.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['dontstartet']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['dontstartet']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_finish > 0 && $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_finish <= $this->_tpl_vars['today']): ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_red.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['expired']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['expired']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->warnflag == 1): ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_blink_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['expiredperiod']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['expiredperiod']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar == 0): ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['nonaktiv']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['nonaktiv']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php else: ?>
            <img id="status<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/status_green.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['dict']['activ']; ?>
"
                 title="<?php echo $this->_tpl_vars['dict']['activ']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_changeStatus(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
,1)" />
<?php endif; ?>
        </td>
<?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar == 1): ?>
    <?php $this->assign('alttext', "25%");  elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar == 2): ?>
    <?php $this->assign('alttext', "50%");  elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar == 3): ?>
    <?php $this->assign('alttext', "75%");  elseif ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar == 4): ?>
    <?php $this->assign('alttext', "100%");  else: ?>
    <?php $this->assign('alttext', "0%");  endif; ?>
        <td class="standard<?php echo $this->_tpl_vars['class']; ?>
" style="text-align:center;">
            <img id="statusbar<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
"
                 src="./images/s<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_statusbar; ?>
.png"
                 width="40"
                 height="16"
                 border="0"
                 alt="<?php echo $this->_tpl_vars['alttext']; ?>
"
                 title="<?php echo $this->_tpl_vars['alttext']; ?>
"
                 style="cursor:pointer;"
                 onclick="x_incStatusBar(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
,<?php echo $this->_tpl_vars['user']->empl_id; ?>
)" />
        </td>
    </tr>
<?php endfor; endif;  if ($this->_tpl_vars['todolist']):  else: ?><tr><td colspan="10" class="standard" style="text-align:center"><?php echo $this->_tpl_vars['dict']['emptylist']; ?>
</td></tr><?php endif; ?>
</tbody>
</table>
<br />
<?php echo $this->_tpl_vars['dict']['found']; ?>
: <?php echo $this->_tpl_vars['totalpages']; ?>
 <?php echo $this->_tpl_vars['dict']['todos']; ?>
<br />
<?php echo $this->_tpl_vars['dict']['pages']; ?>
: <?php unset($this->_sections['pages']);
$this->_sections['pages']['name'] = 'pages';
$this->_sections['pages']['loop'] = is_array($_loop=$this->_tpl_vars['pagesarray']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['pages']['show'] = true;
$this->_sections['pages']['max'] = $this->_sections['pages']['loop'];
$this->_sections['pages']['step'] = 1;
$this->_sections['pages']['start'] = $this->_sections['pages']['step'] > 0 ? 0 : $this->_sections['pages']['loop']-1;
if ($this->_sections['pages']['show']) {
    $this->_sections['pages']['total'] = $this->_sections['pages']['loop'];
    if ($this->_sections['pages']['total'] == 0)
        $this->_sections['pages']['show'] = false;
} else
    $this->_sections['pages']['total'] = 0;
if ($this->_sections['pages']['show']):

            for ($this->_sections['pages']['index'] = $this->_sections['pages']['start'], $this->_sections['pages']['iteration'] = 1;
                 $this->_sections['pages']['iteration'] <= $this->_sections['pages']['total'];
                 $this->_sections['pages']['index'] += $this->_sections['pages']['step'], $this->_sections['pages']['iteration']++):
$this->_sections['pages']['rownum'] = $this->_sections['pages']['iteration'];
$this->_sections['pages']['index_prev'] = $this->_sections['pages']['index'] - $this->_sections['pages']['step'];
$this->_sections['pages']['index_next'] = $this->_sections['pages']['index'] + $this->_sections['pages']['step'];
$this->_sections['pages']['first']      = ($this->_sections['pages']['iteration'] == 1);
$this->_sections['pages']['last']       = ($this->_sections['pages']['iteration'] == $this->_sections['pages']['total']);
 if ($this->_tpl_vars['activepage'] == $this->_tpl_vars['pagesarray'][$this->_sections['pages']['index']]):  echo $this->_tpl_vars['pagesarray'][$this->_sections['pages']['index']];  else: ?><a href="#" onclick="getNextPage(<?php echo $this->_tpl_vars['pagesarray'][$this->_sections['pages']['index']]; ?>
)"><?php echo $this->_tpl_vars['pagesarray'][$this->_sections['pages']['index']]; ?>
</a><?php endif; ?> <?php endfor; endif; ?>
</div>

<div style="width:450px;float:left;">
    <form action="index.php" method="post" name="rsform">
    <input name="movefield" id="movefield" value="" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
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
        </ul>
    </div>
    <?php endif; ?>
    <?php if ($this->_tpl_vars['todo_formvars']->todo_id):  $this->assign('legend', $this->_tpl_vars['dict']['todoedit']);  $this->assign('archivestyle', 'inline'); ?>
    <?php else:  $this->assign('legend', $this->_tpl_vars['dict']['todoadd']);  $this->assign('archivestyle', 'none');  endif; ?>
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel"><?php echo $this->_tpl_vars['legend']; ?>
</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="todocreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="todochanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_materialgroups.png"
         id="moveintoarchive"
         width="24"
         height="24"
         alt="<?php echo $this->_tpl_vars['dict']['moveintoarchive']; ?>
"
         title="<?php echo $this->_tpl_vars['dict']['moveintoarchive']; ?>
"
         style="cursor:pointer;padding:0 10px 0 10px;display:<?php echo $this->_tpl_vars['archivestyle']; ?>
"
         onmouseover="this.src='images/materialgroups.png'"
         onmouseout="this.src='images/_materialgroups.png'"
         onclick="moveIntoArchive()" />
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
                    <td colspan="2"><?php echo $this->_tpl_vars['dict']['todo']; ?>
<br /><input style="width:400px;"
                                                              type="text"
                                                              name="todotitle"
                                                              id="todotitle"
                                                              value="<?php echo ((is_array($_tmp=$this->_tpl_vars['todo_formvars']->todo_title)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><?php echo $this->_tpl_vars['dict']['project']; ?>
<br />
<select name="todoproject" id="todoproject" style="width:400px;" onchange="x_setNewPositionList(this.value,<?php echo $this->_tpl_vars['todo_formvars']->todo_prpos_id; ?>
)">
<?php $_from = $this->_tpl_vars['todo_formvars']->projects_options; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['project']):
 if ($this->_tpl_vars['todo_formvars']->todo_pr_id == $this->_tpl_vars['project']->pr_id):  $this->assign('option_selected', ' selected="selected"');  else:  $this->assign('option_selected', '');  endif;  if ($this->_tpl_vars['project']->pr_status == 0):  $this->assign('option_class', ' class="strike"');  else:  $this->assign('option_class', '');  endif; ?>
<option value="<?php echo $this->_tpl_vars['project']->pr_id; ?>
"<?php echo $this->_tpl_vars['option_class'];  echo $this->_tpl_vars['option_selected']; ?>
><?php echo ((is_array($_tmp=$this->_tpl_vars['project']->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</option>
<?php endforeach; endif; unset($_from); ?>
</select></td>
                </tr>
                <tr>
                    <td style="width:55%"><?php echo $this->_tpl_vars['dict']['startdate']; ?>
<br />
                    <input type="text" name="todostart" id="todostart" value="<?php echo $this->_tpl_vars['todo_formvars']->show_start; ?>
" /> <img
                    src="./jscalendar/img.gif"
                    alt=""
                    id="f_form_startdate"
                    style="border: 1px solid red;
                    cursor: pointer;"
                    title="<?php echo $this->_tpl_vars['dict']['dateselector']; ?>
"
                    onmouseover="this.style.background='red';"
                    onmouseout="this.style.background=''" /></td>
                    <td style="width:45%"><?php echo $this->_tpl_vars['dict']['finishdate']; ?>
<br />
                    <input type="text" name="todofinish" id="todofinish" value="<?php echo $this->_tpl_vars['todo_formvars']->show_finish; ?>
" /> <img
                    src="./jscalendar/img.gif"
                    id="f_form_finishdate"
                    style="border: 1px solid red;
                    cursor: pointer;"
                    alt=""
                    title="<?php echo $this->_tpl_vars['dict']['dateselector']; ?>
"
                    onmouseover="this.style.background='red';"
                    onmouseout="this.style.background=''" /></td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['priority']; ?>
:&nbsp;&nbsp;<input type="text" id="todoprio" name="todoprio" value="<?php echo $this->_tpl_vars['todo_formvars']->todo_prio; ?>
" style="width:40px;" /><?php if (! $this->_tpl_vars['todo_formvars']->todo_inserted_from):  $this->assign('styleprivat', 'inline');  elseif ($this->_tpl_vars['user']->empl_id == $this->_tpl_vars['todo_formvars']->todo_inserted_from):  $this->assign('styleprivat', 'inline');  else:  $this->assign('styleprivat', 'none');  endif; ?><div id="divprivat" style="display:<?php echo $this->_tpl_vars['styleprivat']; ?>
">&nbsp;&nbsp;&nbsp;&nbsp;<label style="cursor:pointer;" for="todoprivat"><?php echo $this->_tpl_vars['dict']['privat']; ?>
:&nbsp;&nbsp;</label><input type="checkbox" id="todoprivat" style="vertical-align:bottom;" name="todoprivat" value="1"<?php if ($this->_tpl_vars['todo_formvars']->todo_privat > 1):  $this->assign('privatchecked', ' checked="checked"');  else:  $this->assign('privatchecked', '');  endif;  echo $this->_tpl_vars['privatchecked']; ?>
/></div></td>
                    <td><div style="padding:2px;width:150px;"><?php echo $this->_tpl_vars['dict']['warning']; ?>
<br />
                    <select name="todowarndiff"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['todo_formvars']->warndiff_options,'selected' => $this->_tpl_vars['todo_formvars']->todo_warndiff), $this);?>
</select></div></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" style="width:100%">
                            <tr>
                                <td colspan="5"><?php echo $this->_tpl_vars['dict']['degree_of_completion_full']; ?>
:</td>
                            </tr>
                            <tr><?php $_from = $this->_tpl_vars['todo_formvars']->form_tododof; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
                                <?php if ($this->_tpl_vars['todo_formvars']->todo_statusbar == $this->_tpl_vars['item']): ?>
                                    <?php $this->assign('checked', ' checked="checked"'); ?>
                                <?php else: ?>
                                    <?php $this->assign('checked', ''); ?>
                                <?php endif; ?>
                                <td style="width:20%">
                                    <input type="radio" name="tododof" id="<?php echo $this->_tpl_vars['key']; ?>
" value="<?php echo $this->_tpl_vars['item']; ?>
"<?php echo $this->_tpl_vars['checked']; ?>
 />
                                </td><?php endforeach; endif; unset($_from); ?>
                            </tr>
                            <tr>
                            <?php $_from = $this->_tpl_vars['todo_formvars']->form_tododofval; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?><td><label for="<?php echo $this->_tpl_vars['key']; ?>
"><?php echo $this->_tpl_vars['item']; ?>
</label></td><?php endforeach; endif; unset($_from); ?>
                            </tr>
                        </table>
                    </td><?php if ($this->_tpl_vars['todo_formvars']->todo_status > 0): ?>
    <?php $this->assign('agreechecked', ' checked="checked"');  else: ?>
    <?php $this->assign('agreechecked', '');  endif; ?>
                    <td style="text-align:right;"><div style="border:1px solid red;padding:2px;width:100px;"><label style="cursor:pointer;" for="todoagreed"><?php echo $this->_tpl_vars['dict']['agreed']; ?>
: </label><input type="checkbox" id="todoagreed" name="todoagreed" value="99" style="vertical-align:middle"<?php echo $this->_tpl_vars['agreechecked']; ?>
 /></div></td>
                </tr>
                <tr>
                    <td colspan="2"><?php echo $this->_tpl_vars['dict']['commentar']; ?>
<br /><textarea rows="6" cols="50"  name="todocomment" id="todocomment" style="width:400px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['todo_formvars']->todo_comment)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</textarea></td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>

<div style="clear:both">&nbsp;</div>
<?php echo '
<script type="text/javascript" language="JavaScript">

Calendar.setup({
        inputField     :    "todostart",     // id of the input field
        button         :    "f_form_startdate",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        singleClick    :    true
});

Calendar.setup({
        inputField     :    "todofinish",     // id of the input field
        button         :    "f_form_finishdate",  // trigger for the calendar (button ID)
        align          :    "Tl",               // alignment (defaults to "Bl")
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        singleClick    :    true
});
</script>
'; ?>

    </div>
</div>