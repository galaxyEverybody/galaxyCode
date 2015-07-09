<?php /* Smarty version 2.6.9, created on 2015-06-10 23:15:36
         compiled from todoarchive.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'popup_init', 'todoarchive.tpl', 8, false),array('function', 'html_options', 'todoarchive.tpl', 111, false),array('function', 'popup', 'todoarchive.tpl', 158, false),array('modifier', 'escape', 'todoarchive.tpl', 115, false),array('modifier', 'clearcomment', 'todoarchive.tpl', 147, false),)), $this); ?>
<div style="height:1px;width:10px;margin:0;padding:0;line-height:0;font-size:0px"><!--Fehler in MS IE//-->;</div>
<div class="undertabdiv">
    <div class="tabrow">
        <span class="tab"<?php echo $this->_tpl_vars['mouseevents_2_1'];  echo $this->_tpl_vars['link_2_1']; ?>
><?php echo $this->_tpl_vars['dict']['active']; ?>
</span>
        <span class="tab<?php echo $this->_tpl_vars['sel_2_2']; ?>
"><?php echo $this->_tpl_vars['dict']['archive']; ?>
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

function deleteToDo(arch_id)
{
    if (confirm(\'';  echo $this->_tpl_vars['dict']['delete_confirm'];  echo '\'))
        x_deleteToDo(arch_id);
}
</script>
'; ?>


<?php if ($this->_tpl_vars['sortorder'] == 'DESC'): ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'ASC');  else: ?>
    <?php $this->assign('orderimage', '<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'); ?>
    <?php $this->assign('newOrderValue', 'DESC');  endif;  $this->assign('blankimage', '<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />');  $this->assign('s_number', $this->_tpl_vars['blankimage']);  $this->assign('o_number', 'DESC');  $this->assign('s_agreed', $this->_tpl_vars['blankimage']);  $this->assign('o_agreed', 'ASC');  $this->assign('s_prio', $this->_tpl_vars['blankimage']);  $this->assign('o_prio', 'ASC');  $this->assign('s_todo', $this->_tpl_vars['blankimage']);  $this->assign('o_todo', 'ASC');  $this->assign('s_project', $this->_tpl_vars['blankimage']);  $this->assign('o_project', 'ASC');  $this->assign('s_created', $this->_tpl_vars['blankimage']);  $this->assign('o_created', 'ASC');  $this->assign('s_startdate', $this->_tpl_vars['blankimage']);  $this->assign('o_startdate', 'ASC');  $this->assign('s_finishdate', $this->_tpl_vars['blankimage']);  $this->assign('o_finishdate', 'ASC');  $this->assign('s_status', $this->_tpl_vars['blankimage']);  $this->assign('o_status', 'ASC');  $this->assign('s_DoC', $this->_tpl_vars['blankimage']);  $this->assign('o_DoC', 'ASC'); ?>

<?php if ($this->_tpl_vars['sortfield'] == 'agreed'): ?>
    <?php $this->assign('s_agreed', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_agreed', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'prio'): ?>
    <?php $this->assign('s_prio', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_prio', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'todo'): ?>
    <?php $this->assign('s_todo', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_todo', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'projects'): ?>
    <?php $this->assign('s_project', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_project', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'created'): ?>
    <?php $this->assign('s_created', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_created', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'startdate'): ?>
    <?php $this->assign('s_startdate', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_startdate', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'finishdate'): ?>
    <?php $this->assign('s_finishdate', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_finishdate', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'status'): ?>
    <?php $this->assign('s_status', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_status', $this->_tpl_vars['newOrderValue']);  elseif ($this->_tpl_vars['sortfield'] == 'doc'): ?>
    <?php $this->assign('s_DoC', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_DoC', $this->_tpl_vars['newOrderValue']);  else: ?>
    <?php $this->assign('s_number', $this->_tpl_vars['orderimage']); ?>
    <?php $this->assign('o_number', $this->_tpl_vars['newOrderValue']);  endif; ?>

<div style="width:1186px">
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
<table cellpadding="4" cellspacing="0" style="width:700px">
    <tr>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['search']; ?>
</td>
        <td><input type="text" name="searchstring" value="<?php echo $this->_tpl_vars['searchstring']; ?>
" style="width:120px;" /></td>
        <td><?php echo $this->_tpl_vars['dict']['prio']; ?>
</td>
        <td><input name="prio" value="<?php echo $this->_tpl_vars['prio']; ?>
" style="width:20px;" /></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['show']; ?>
</td>
        <td><select name="status" style="width:120px;"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['todo_formvars']->status_list,'selected' => $this->_tpl_vars['status']), $this);?>
</select></td>
        <td style="text-align:right;"><?php echo $this->_tpl_vars['dict']['projects']; ?>
</td>
        <td><select name="projectnumber" style="margin:0;right:20px;width:120px;">
<?php $_from = $this->_tpl_vars['todo_formvars']->projects_options_with_all; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['project']):
 if ($this->_tpl_vars['pr_id'] == $this->_tpl_vars['project']->pr_id):  $this->assign('option_selected', ' selected="selected"');  else:  $this->assign('option_selected', '');  endif;  if ($this->_tpl_vars['project']->pr_status == 0):  $this->assign('option_class', ' class="strike"');  else:  $this->assign('option_class', '');  endif; ?>
            <option value="<?php echo $this->_tpl_vars['project']->pr_id; ?>
"<?php echo $this->_tpl_vars['option_class'];  echo $this->_tpl_vars['option_selected']; ?>
><?php echo ((is_array($_tmp=$this->_tpl_vars['project']->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</option>
<?php endforeach; endif; unset($_from); ?>
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
        <td class="tablehead" style="width:53px;" onclick="sortTable('id','<?php echo $this->_tpl_vars['o_number']; ?>
')"><?php echo $this->_tpl_vars['s_number']; ?>
 <?php echo $this->_tpl_vars['dict']['number_short']; ?>
</td>
        <td class="tablehead" style="width:73px;cursor:default;">&nbsp;</td>
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
        <td class="tablehead" style="width:140px;" onclick="sortTable('created','<?php echo $this->_tpl_vars['o_created']; ?>
')"><?php echo $this->_tpl_vars['s_created']; ?>
 <?php echo $this->_tpl_vars['dict']['created']; ?>
</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('startdate','<?php echo $this->_tpl_vars['o_startdate']; ?>
')"><?php echo $this->_tpl_vars['s_startdate']; ?>
 <?php echo $this->_tpl_vars['dict']['startdate']; ?>
</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('finishdate','<?php echo $this->_tpl_vars['o_finishdate']; ?>
')"><?php echo $this->_tpl_vars['s_finishdate']; ?>
 <?php echo $this->_tpl_vars['dict']['finishdate']; ?>
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

        <td style="cursor:default;text-align:right;padding-right:4px;" class="number<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
</td>
        <td style="cursor:default;text-align:center;" class="number<?php echo $this->_tpl_vars['class']; ?>
">
        <img src="images/restore.png" title="<?php echo $this->_tpl_vars['dict']['restore']; ?>
" alt="<?php echo $this->_tpl_vars['dict']['restore']; ?>
" style="cursor:pointer;" onclick="x_restoreToDo(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
)" />&nbsp;&nbsp;
        <img src="images/delete.png" title="<?php echo $this->_tpl_vars['dict']['delete']; ?>
" alt="<?php echo $this->_tpl_vars['dict']['delete']; ?>
" style="cursor:pointer;" onclick="deleteToDo(<?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_id; ?>
)" />
        </td>
        <td style="cursor:default;text-align:center;" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_prio; ?>
</td>
        <td style="cursor:default;" <?php if ($this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_comment):  echo smarty_function_popup(array('text' => ($this->_tpl_vars['comment']),'caption' => $this->_tpl_vars['dict']['commentar'],'fgcolor' => "#fafafa",'width' => '400','offsety' => -70,'offsetx' => -10,'captionsize' => '2','textsize' => '2'), $this); endif; ?> class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_title)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</td>
        <td style="cursor:default;" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->pr_name; ?>
</td>
        <td style="cursor:default;text-align:center;" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->todo_inserted_s; ?>
</td>
        <td style="cursor:default;text-align:center;" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->show_start; ?>
</td>
        <td style="cursor:default;text-align:center;" class="standard<?php echo $this->_tpl_vars['class']; ?>
"><?php echo $this->_tpl_vars['todolist'][$this->_sections['todo']['index']]->show_finish; ?>
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
" />
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
" />
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
" />
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
" />
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
" />
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
" />
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
" />
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

<div style="clear:both">&nbsp;</div>
    </div>
</div>