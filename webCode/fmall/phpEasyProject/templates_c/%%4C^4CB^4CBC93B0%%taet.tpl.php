<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:49
         compiled from taet.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'popup_init', 'taet.tpl', 1, false),array('function', 'math', 'taet.tpl', 322, false),array('function', 'popup', 'taet.tpl', 324, false),array('function', 'html_options', 'taet.tpl', 424, false),array('modifier', 'escape', 'taet.tpl', 321, false),array('modifier', 'clearcomment', 'taet.tpl', 321, false),array('modifier', 'indent', 'taet.tpl', 407, false),)), $this); ?>
<?php echo smarty_function_popup_init(array('src' => "./scripts/overlib.js"), $this);?>

<?php echo '

<script type="text/javascript">
function clearForm()
{
    document.rsform.taetdate.value = \'';  echo $this->_tpl_vars['formvars']->listDateShort;  echo '\';
    document.rsform.activitydescription.value = \'\';
    document.rsform.description.value = \'\';

    document.getElementById(\'remove\').style.display = \'none\';

    document.getElementById(\'formtitel\').firstChild.nodeValue = \'';  echo $this->_tpl_vars['dict']['activityadd'];  echo '\';

    if (document.rsform.taetid.value != \'\')
    {
      var shour = Number(document.getElementById(\'fhour\').value);
      var smin  = Number(document.getElementById(\'fmin\').value);
      var dhour = Number(document.getElementById(\'dhour\').value);
      var dmin  = Number(document.getElementById(\'dmin\').value);
    }
    else
    {
      var shour = Number(';  echo $this->_tpl_vars['formvars']->_shourActive;  echo ');
      var smin  = Number(';  echo $this->_tpl_vars['formvars']->_sminActive;  echo ');
      var dhour = Number(';  echo $this->_tpl_vars['formvars']->_dhourActive;  echo ');
      var dmin  = Number(';  echo $this->_tpl_vars['formvars']->_dminActive;  echo ');
    }

    setNewDefaultOption(\'dhour\',dhour);
    setNewDefaultOption(\'dmin\',dmin);

    setNewDefaultOption(\'shour\',shour);
    setNewDefaultOption(\'smin\',smin);

    setNewTime(\'start\');

    while (document.getElementById(\'created\').hasChildNodes())
        document.getElementById(\'created\').removeChild(document.getElementById(\'created\').firstChild);
    while (document.getElementById(\'changed\').hasChildNodes())
        document.getElementById(\'changed\').removeChild(document.getElementById(\'changed\').firstChild);

    if (document.getElementById(\'errdiv\'))
    {
        while (document.getElementById(\'errdiv\').hasChildNodes())
            document.getElementById(\'errdiv\').removeChild(document.getElementById(\'errdiv\').firstChild);
    }
    document.rsform.taetid.value = \'\';
    unmarkAllDivs(0);
}

function newActivityAtTime(startTime)
{
    clearForm();
    setNewTime(\'start\', startTime);
}

function setFormTitle(titleValue) {
    document.getElementById(\'formtitel\').firstChild.nodeValue = titleValue;
}

function addForm()
{
    document.rsform.submit();
}

function removeTaet()
{
    if (!confirm(\'';  echo $this->_tpl_vars['dict']['areyousure'];  echo '\'))
        return false;
    document.rsform.deletetaet.value = 1;
    document.rsform.submit();
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

function setNewTime(fromfields, time)
{
    var shour = Number(document.getElementById(\'shour\').value);
    var smin  = Number(document.getElementById(\'smin\').value);
    var dhour = Number(document.getElementById(\'dhour\').value);
    var dmin  = Number(document.getElementById(\'dmin\').value);
    var fhour = Number(document.getElementById(\'fhour\').value);
    var fmin  = Number(document.getElementById(\'fmin\').value);

    var startTimeDate = new Date(1971,5,14,shour,smin,0);
    var startTime = startTimeDate.getTime();

    var finishTimeDate = new Date(1971,5,14,fhour,fmin,0);
    var finishTime = finishTimeDate.getTime();

    var lastTimeToday = new Date(1971,5,15,0,0,0);
    var lastTime = lastTimeToday.getTime();

    var firstTimeToday = new Date(1971,5,14,0,0,0);
    var firstTime = firstTimeToday.getTime();

    if (fromfields == \'start\')
    {
    	if (\'_undefined\' != \'_\' + time) {
    		shour = Number(time.substr(0, 2));
    		smin  = Number(time.substr(2, 2));
			startTimeDate = new Date(1971,5,14,shour,smin,0);
    		startTime = startTimeDate.getTime();
            setNewDefaultOption(\'shour\',shour);
            setNewDefaultOption(\'smin\',smin);
    	}
        finishTime = startTime + dhour*60*60*1000 + dmin*60*1000;
        if (finishTime > lastTime)
        {
            finishTime = lastTime;
            var diffTime = finishTime - startTime + lastTime;
            var durationTimeDate = new Date(diffTime);
            dhour = durationTimeDate.getHours();
            dmin  = durationTimeDate.getMinutes();
            setNewDefaultOption(\'dhour\',dhour);
            setNewDefaultOption(\'dmin\',dmin);
        }
        finishTimeDate.setTime(finishTime);
        fhour = finishTimeDate.getHours();
        if (finishTime == lastTime) fhour = 24;
        fmin  = finishTimeDate.getMinutes();
        setNewDefaultOption(\'fhour\',fhour);
        setNewDefaultOption(\'fmin\',fmin);

        return true;
    }
    else if (fromfields == \'duration\')
    {
        finishTime = startTime + dhour*60*60*1000 + dmin*60*1000;
        if (finishTime > lastTime)
        {
            finishTime = lastTime;
            startTime = finishTime - dhour*60*60*1000 - dmin*60*1000;
            startTimeDate = new Date(startTime);
            shour = startTimeDate.getHours();
            smin  = startTimeDate.getMinutes();
            setNewDefaultOption(\'shour\',shour);
            setNewDefaultOption(\'smin\',smin);
        }
        finishTimeDate.setTime(finishTime);
        fhour = finishTimeDate.getHours();
        if (finishTime == lastTime) fhour = 24;
        fmin  = finishTimeDate.getMinutes();
        setNewDefaultOption(\'fhour\',fhour);
        setNewDefaultOption(\'fmin\',fmin);

        return true;
    }
    else if (fromfields == \'finish\')
    {
        if (finishTime < startTime)
        {
            startTime = finishTime - dhour*60*60*1000 - dmin*60*1000;
            if (startTime < firstTime)
            {
                startTime = firstTime;
                var diffTime = finishTime - startTime + lastTime;
                var durationTimeDate = new Date(diffTime);
                dhour = durationTimeDate.getHours();
                dmin  = durationTimeDate.getMinutes();
                setNewDefaultOption(\'dhour\',dhour);
                setNewDefaultOption(\'dmin\',dmin);
            }

            startTimeDate.setTime(startTime);
            shour = startTimeDate.getHours();
            smin  = startTimeDate.getMinutes();
            setNewDefaultOption(\'shour\',shour);
            setNewDefaultOption(\'smin\',smin);
        }
        else
        {
            var diffTime = finishTime - startTime + lastTime;
            var durationTimeDate = new Date(diffTime);
            dhour = durationTimeDate.getHours();
            dmin  = durationTimeDate.getMinutes();
            setNewDefaultOption(\'dhour\',dhour);
            setNewDefaultOption(\'dmin\',dmin);
        }

       return true;
    }
}

function setNewDefaultOption(field,val)
{
    for (var i = 0; i < document.getElementById(field).options.length; i++)
    {
        //alert(document.getElementById(field).options[i].value);
        if (document.getElementById(field).options[i].value == val)
        {
            document.getElementById(field).options[i].selected = true;
            break;
        }
    }
}

function getNextDay(datetime)
{
    var nextday = document.createElement("input");

    var nextdayTagName = document.createAttribute("name");
    nextdayTagName.nodeValue = \'nextday\';
    nextday.setAttributeNode(nextdayTagName);

    var nextdayTagValue = document.createAttribute("value");
    nextdayTagValue.nodeValue = datetime;
    nextday.setAttributeNode(nextdayTagValue);

    var nextdayTagType = document.createAttribute("type");
    nextdayTagType.nodeValue = \'hidden\';
    nextday.setAttributeNode(nextdayTagType);

    document.getElementById(\'actionscontrol\').appendChild(nextday);

    submitActionForm(\'activity_acquisition\');
}

function goNextDay(calendar)
{
    if (calendar.dateClicked) {
    var nextday = document.createElement("input");

    var nextdayTagName = document.createAttribute("name");
    nextdayTagName.nodeValue = \'nextday\';
    nextday.setAttributeNode(nextdayTagName);

    var nextdayTagValue = document.createAttribute("value");
    nextdayTagValue.nodeValue = calendar.date.getTime()/1000;
    nextday.setAttributeNode(nextdayTagValue);

    var nextdayTagType = document.createAttribute("type");
    nextdayTagType.nodeValue = \'hidden\';
    nextday.setAttributeNode(nextdayTagType);

    document.getElementById(\'actionscontrol\').appendChild(nextday);

    submitActionForm(\'activity_acquisition\');
     }
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

<div style="width:660px;float:left;margin-right:20px;">
    <table cellspacing="1" cellpadding="1" style="width:100%;background-color:#d0d0d0;margin:0;padding:0">
        <thead>
            <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
                <td class="tablehead" style="width:63px;"><?php echo $this->_tpl_vars['dict']['time']; ?>
</td>
                <td class="tablehead"><img src="images/arr-left.png"
                                       width="13"
                                       height="13"
                                       alt="<?php echo $this->_tpl_vars['dict']['dayback']; ?>
"
                                       title="<?php echo $this->_tpl_vars['dict']['dayback']; ?>
"
                                       style="vertical-align:middle;"
                                       onclick="getNextDay(<?php echo $this->_tpl_vars['formvars']->go_back; ?>
)" /> <span id="taettoday" onmouseover="this.style.color='blue'" onmouseout="this.style.color='black'"><?php echo $this->_tpl_vars['formvars']->listDateFull; ?>
</span> <img src="images/arr-right.png"
                                       width="13"
                                       height="13"
                                       alt="<?php echo $this->_tpl_vars['dict']['dayforward']; ?>
"
                                       title="<?php echo $this->_tpl_vars['dict']['dayforward']; ?>
"
                                       style="vertical-align:middle;"
                                       onclick="getNextDay(<?php echo $this->_tpl_vars['formvars']->go_forw; ?>
)" /></td>
            </tr>
        </thead>
        <tbody>
<?php unset($this->_sections['timelist']);
$this->_sections['timelist']['name'] = 'timelist';
$this->_sections['timelist']['loop'] = is_array($_loop=$this->_tpl_vars['timelist']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['timelist']['show'] = true;
$this->_sections['timelist']['max'] = $this->_sections['timelist']['loop'];
$this->_sections['timelist']['step'] = 1;
$this->_sections['timelist']['start'] = $this->_sections['timelist']['step'] > 0 ? 0 : $this->_sections['timelist']['loop']-1;
if ($this->_sections['timelist']['show']) {
    $this->_sections['timelist']['total'] = $this->_sections['timelist']['loop'];
    if ($this->_sections['timelist']['total'] == 0)
        $this->_sections['timelist']['show'] = false;
} else
    $this->_sections['timelist']['total'] = 0;
if ($this->_sections['timelist']['show']):

            for ($this->_sections['timelist']['index'] = $this->_sections['timelist']['start'], $this->_sections['timelist']['iteration'] = 1;
                 $this->_sections['timelist']['iteration'] <= $this->_sections['timelist']['total'];
                 $this->_sections['timelist']['index'] += $this->_sections['timelist']['step'], $this->_sections['timelist']['iteration']++):
$this->_sections['timelist']['rownum'] = $this->_sections['timelist']['iteration'];
$this->_sections['timelist']['index_prev'] = $this->_sections['timelist']['index'] - $this->_sections['timelist']['step'];
$this->_sections['timelist']['index_next'] = $this->_sections['timelist']['index'] + $this->_sections['timelist']['step'];
$this->_sections['timelist']['first']      = ($this->_sections['timelist']['iteration'] == 1);
$this->_sections['timelist']['last']       = ($this->_sections['timelist']['iteration'] == $this->_sections['timelist']['total']);
?>
            <tr>
                <td style="cursor:default;text-align:center;height:<?php echo $this->_tpl_vars['taet']->height-2; ?>
px;" class="standard"><img src="images/blank.png" alt="" width="5" height="<?php echo $this->_tpl_vars['taet']->height-2; ?>
" style="float:left;" />
    <?php if ($this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->isOccupied): ?>
                  <?php echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->hour; ?>
:<?php echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->min; ?>

    <?php else: ?>
                  <a class="activitylink" href="javascript:newActivityAtTime('<?php echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->hour;  echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->min; ?>
')"><?php echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->hour; ?>
:<?php echo $this->_tpl_vars['timelist'][$this->_sections['timelist']['index']]->min; ?>
</a>
    <?php endif; ?>            </td>
                <td class="standard">&nbsp;</td>
            </tr>
<?php endfor; endif; ?>
        </tbody>
    </table><div id="myDiv">
<?php unset($this->_sections['taetlist']);
$this->_sections['taetlist']['name'] = 'taetlist';
$this->_sections['taetlist']['loop'] = is_array($_loop=$this->_tpl_vars['taet']->taetObjList) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['taetlist']['show'] = true;
$this->_sections['taetlist']['max'] = $this->_sections['taetlist']['loop'];
$this->_sections['taetlist']['step'] = 1;
$this->_sections['taetlist']['start'] = $this->_sections['taetlist']['step'] > 0 ? 0 : $this->_sections['taetlist']['loop']-1;
if ($this->_sections['taetlist']['show']) {
    $this->_sections['taetlist']['total'] = $this->_sections['taetlist']['loop'];
    if ($this->_sections['taetlist']['total'] == 0)
        $this->_sections['taetlist']['show'] = false;
} else
    $this->_sections['taetlist']['total'] = 0;
if ($this->_sections['taetlist']['show']):

            for ($this->_sections['taetlist']['index'] = $this->_sections['taetlist']['start'], $this->_sections['taetlist']['iteration'] = 1;
                 $this->_sections['taetlist']['iteration'] <= $this->_sections['taetlist']['total'];
                 $this->_sections['taetlist']['index'] += $this->_sections['taetlist']['step'], $this->_sections['taetlist']['iteration']++):
$this->_sections['taetlist']['rownum'] = $this->_sections['taetlist']['iteration'];
$this->_sections['taetlist']['index_prev'] = $this->_sections['taetlist']['index'] - $this->_sections['taetlist']['step'];
$this->_sections['taetlist']['index_next'] = $this->_sections['taetlist']['index'] + $this->_sections['taetlist']['step'];
$this->_sections['taetlist']['first']      = ($this->_sections['taetlist']['iteration'] == 1);
$this->_sections['taetlist']['last']       = ($this->_sections['taetlist']['iteration'] == $this->_sections['taetlist']['total']);
 $this->assign('comment', ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_full_desc)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')))) ? $this->_run_mod_handler('clearcomment', true, $_tmp) : smarty_modifier_clearcomment($_tmp)));  echo smarty_function_math(array('equation' => "21*((timestart - KTA)/60)/15+31+(timestart - KTA)/60/STEP",'timestart' => $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_start,'KTA' => $this->_tpl_vars['taet']->KTA,'STEP' => $this->_tpl_vars['taet']->STEP,'assign' => 'divtop','format' => "%d"), $this);?>

<?php echo smarty_function_math(array('equation' => "21*((timefinish - timestart)/60)/15+(timefinish - timestart)/60/STEP-3",'timefinish' => $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_finish,'timestart' => $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_start,'STEP' => $this->_tpl_vars['taet']->STEP,'assign' => 'divheight','format' => "%d"), $this);?>

    <div id="div<?php echo $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_id; ?>
" onclick="x_getTaetData(<?php echo $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_id; ?>
)" style="position:absolute;width:592px;height:<?php echo $this->_tpl_vars['divheight']; ?>
px;border:1px solid #f0f0f0;top:<?php echo $this->_tpl_vars['divtop']; ?>
px;left:71px;cursor:pointer;" class="standarddiv" onmouseover="setHoverDiv(<?php echo $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_id; ?>
)" onmouseout="setNormalDiv(<?php echo $this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_id; ?>
)"><div <?php if ($this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_full_desc):  echo smarty_function_popup(array('text' => ($this->_tpl_vars['comment']),'caption' => $this->_tpl_vars['dict']['commentar'],'fgcolor' => "#fafafa",'width' => '400','offsety' => -70,'offsetx' => -10,'captionsize' => '2','textsize' => '2'), $this); endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['taet']->taetObjList[$this->_sections['taetlist']['index']]->taet_short_desc)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</div></div>
<?php endfor; endif; ?></div>
 <!--   <div style="position:absolute;width:592px;height:102px;background-color:#fafafa;border:1px solid #f0f0f0;top:157px;left:71px;cursor:pointer;">Tätigkeit 2</div> //-->
</div>

<div style="width:490px;float:left">
    <form action="index.php" method="post" name="rsform">
    <input name="formsend" value="1" type="hidden" />
    <input name="deletetaet" id="deletetaet" value="0" type="hidden" />
    <input name="taetid" id="taetid" value="<?php echo $this->_tpl_vars['formvars']->taet_id; ?>
" type="hidden" />
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
    <?php if ($this->_tpl_vars['pr_formvars']->pr_id):  $this->assign('legend', $this->_tpl_vars['dict']['activityedit']); ?>
    <?php else:  $this->assign('legend', $this->_tpl_vars['dict']['activityadd']);  endif; ?>
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel"><?php echo $this->_tpl_vars['legend']; ?>
</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="created" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="changed" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="remove"
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
         onclick="return removeTaet()" />
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
                    <td colspan="3"><?php echo $this->_tpl_vars['dict']['project']; ?>
<br />
<select name="projectid" id="projectid" style="width:280px;" onchange="x_setNewPositionList(this.value,<?php echo $this->_tpl_vars['formvars']->taet_prpos_id; ?>
)">
<?php $_from = $this->_tpl_vars['formvars']->projects_options; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['project']):
 if ($this->_tpl_vars['formvars']->projectActive == $this->_tpl_vars['project']->pr_id):  $this->assign('option_selected', ' selected="selected"');  else:  $this->assign('option_selected', '');  endif;  if ($this->_tpl_vars['project']->pr_status == 0):  $this->assign('option_class', ' class="strike"');  else:  $this->assign('option_class', '');  endif; ?>
<option value="<?php echo $this->_tpl_vars['project']->pr_id; ?>
"<?php echo $this->_tpl_vars['option_class'];  echo $this->_tpl_vars['option_selected']; ?>
><?php echo ((is_array($_tmp=$this->_tpl_vars['project']->pr_name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</option>
<?php endforeach; endif; unset($_from); ?>
</select></td>
                </tr>
                <tr>
                <td colspan="2"><?php echo $this->_tpl_vars['dict']['projectposition']; ?>
<br />
<select name="projectposid" id="projectposid" style="width:280px;">
<?php $_from = $this->_tpl_vars['formvars']->projectpos_options; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['projectposition_foo'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['projectposition_foo']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['projectposition_foo']):
        $this->_foreach['projectposition_foo']['iteration']++;
 $this->assign('indent', $this->_tpl_vars['projectposition_foo']->level*4);  if ($this->_tpl_vars['projectposition_foo']->prpos_id == $this->_tpl_vars['formvars']->taet_prpos_id):  $this->assign('selected', 'selected="selected"');  else:  $this->assign('selected', "");  endif;  if ($this->_tpl_vars['projectposition_foo']->prpos_status == 0):  $this->assign('option_class', ' class="strike"');  else:  $this->assign('option_class', '');  endif; ?>
  <option value="<?php echo $this->_tpl_vars['projectposition_foo']->prpos_id; ?>
"<?php echo $this->_tpl_vars['selected'];  echo $this->_tpl_vars['option_class']; ?>
><?php echo ((is_array($_tmp=$this->_tpl_vars['projectposition_foo']->prpos_name)) ? $this->_run_mod_handler('indent', true, $_tmp, $this->_tpl_vars['indent'], "&#160;") : smarty_modifier_indent($_tmp, $this->_tpl_vars['indent'], "&#160;")); ?>
</option>
<?php endforeach; endif; unset($_from); ?>
</select>
                    </td>
                     <td><?php echo $this->_tpl_vars['dict']['date']; ?>
<br /><input type="text" style="width:80px;color:darkblue;font-family:Verdana, Geneva, Arial, Helvetica, sans-serif;" name="taetdate" id="taetdate" value="<?php echo $this->_tpl_vars['formvars']->show_taetdate; ?>
" /> <img
                    src="./jscalendar/img.gif"
                    id="f_form_taetdate"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="<?php echo $this->_tpl_vars['dict']['dateselector']; ?>
"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" />
                    </td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['dict']['startdate']; ?>
<br />
                    <select name="shour" id="shour" class="timeselect" onchange="setNewTime('start');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->dhoursArr,'selected' => $this->_tpl_vars['formvars']->shourActive), $this);?>
</select> : <select name="smin" id="smin" class="timeselect" onchange="setNewTime('start');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->minArr,'selected' => $this->_tpl_vars['formvars']->sminActive), $this);?>
</select></td>
                    <td><?php echo $this->_tpl_vars['dict']['duration']; ?>
<br />
                    <select name="dhour" id="dhour" class="timeselect" onchange="setNewTime('duration');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->dhoursArr,'selected' => $this->_tpl_vars['formvars']->dhourActive), $this);?>
</select> : <select name="dmin" id="dmin" class="timeselect" onchange="setNewTime('duration');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->minArr,'selected' => $this->_tpl_vars['formvars']->dminActive), $this);?>
</select></td>
                    <td><?php echo $this->_tpl_vars['dict']['finishdate']; ?>
<br />
                    <select name="fhour" id="fhour" class="timeselect" onchange="setNewTime('finish');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->hoursArr,'selected' => $this->_tpl_vars['formvars']->fhourActive), $this);?>
</select> : <select name="fmin" id="fmin" class="timeselect" onchange="setNewTime('finish');"><?php echo smarty_function_html_options(array('options' => $this->_tpl_vars['formvars']->minArr,'selected' => $this->_tpl_vars['formvars']->fminActive), $this);?>
</select></td>
                </tr>
                <tr>
                    <td colspan="3"><?php echo $this->_tpl_vars['dict']['shortdescription']; ?>
<br />
                    <input style="width:450px;"
                               type="text"
                               name="activitydescription"
                               id="activitydescription"
                               value="<?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->taet_short_desc)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><?php echo $this->_tpl_vars['dict']['fulldescription']; ?>
<br /><textarea rows="4" cols="50"  name="description" id="description" style="width:450px;"><?php echo ((is_array($_tmp=$this->_tpl_vars['formvars']->taet_full_desc)) ? $this->_run_mod_handler('escape', true, $_tmp, 'html') : smarty_modifier_escape($_tmp, 'html')); ?>
</textarea></td>
                </tr>
            </table>
        </fieldset>
        <br />
    </form>
</div>

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
        <fieldset style="-moz-border-radius:8px;"><legend><?php echo $this->_tpl_vars['dict']['staistic']; ?>
</legend>
            <table cellspacing="1" cellpadding="4" style="width:100%">
                <tr>
                    <td colspan="2" style="background-color:#f0f0f0;color:#777;text-align:center;"><?php echo $this->_tpl_vars['dict']['selectedDate']; ?>
</td>
                    <td>&nbsp;</td>
                    <td colspan="2" style="background-color:#f0f0f0;color:#777;text-align:center;"><?php echo $this->_tpl_vars['dict']['actuellDate']; ?>
</td>
                </tr>
                <tr>
                    <td style="width:32%"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisDayName']; ?>
</td>
                    <td style="width:13%;white-space:nowrap;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisDay']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                    <td>&nbsp;</td>
                    <td style="width:32%"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisDayName']; ?>
</td>
                    <td style="width:13%;white-space:nowrap;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisDay']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                </tr>
                <tr>
                    <td style="background-color:#f7f7f7;"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisWeekName']; ?>
</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisWeek']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                    <td>&nbsp;</td>
                    <td style="background-color:#f7f7f7;"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisWeekName']; ?>
</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisWeek']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                </tr>
                <tr>
                    <td><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisMonthName']; ?>
</td>
                    <td style="white-space:nowrap;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisMonth']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                    <td>&nbsp;</td>
                    <td><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisMonthName']; ?>
</td>
                    <td style="white-space:nowrap;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisMonth']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                </tr>
                <tr>
                    <td style="background-color:#f7f7f7;"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisYearName']; ?>
</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForThisDay['thisYear']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                    <td>&nbsp;</td>
                    <td style="background-color:#f7f7f7;"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisYearName']; ?>
</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right"><?php echo $this->_tpl_vars['formvars']->statForActlDay['thisYear']; ?>
 <?php echo $this->_tpl_vars['dict']['hourshort']; ?>
</td>
                </tr>
            </table>
        </fieldset>
        <br />
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
                    <input type="radio" name="groupby" value="userprojects" id="groupbyprojects" checked="checked" /> <label for="groupbyprojects" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['projects']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="prpos" id="prpos" checked="checked" /> <label for="prpos" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['projectpositions']; ?>
</label><br /><br />
                    <input type="radio" name="groupby" value="time" id="groupbytime" /> <label for="groupbytime" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['groupbytime']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="month" id="timescalamonth" checked="checked" /> <label for="timescalamonth" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['months']; ?>
</label><br />                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="day" id="timescaladay" checked="checked" /> <label for="timescaladay" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['days']; ?>
</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="activity" id="activity" checked="checked" /> <label for="activity" style="cursor:pointer;"><?php echo $this->_tpl_vars['dict']['activity']; ?>
</label>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top;"><?php echo $this->_tpl_vars['dict']['projects']; ?>
<br />
<select name="expprojectid[]" id="expprojectid" multiple="multiple" size="11" style="width:280px;">
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

<form action="index.php" method="post" name="nexttaetday" id="nexttaetday">
<input name="nextdate" id="nextdate" type="hidden" value="" />
</form>
<div style="clear:both">&nbsp;</div>
<?php echo '
<script type="text/javascript" language="JavaScript">
mark(\'on\',\'expprojectid\');
    Calendar.setup({
        inputField     :    "nextdate",     // id of the input field
        displayArea    :    "taettoday",    // ID of the span where the date is to be shown
        align          :    "Tl",           // alignment (defaults to "Bl")
        singleClick    :    true,
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        onUpdate       :    goNextDay
    });
    Calendar.setup({
        inputField     :    "taetdate",     // id of the input field
        button         :    "f_form_taetdate",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "';  echo DATEFIELDCAL;  echo '",
        singleClick    :    true
    });
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