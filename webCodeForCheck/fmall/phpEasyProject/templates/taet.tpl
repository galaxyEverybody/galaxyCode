{popup_init src="./scripts/overlib.js"}
{literal}

<script type="text/javascript">
function clearForm()
{
    document.rsform.taetdate.value = '{/literal}{$formvars->listDateShort}{literal}';
    document.rsform.activitydescription.value = '';
    document.rsform.description.value = '';

    document.getElementById('remove').style.display = 'none';

    document.getElementById('formtitel').firstChild.nodeValue = '{/literal}{$dict.activityadd}{literal}';

    if (document.rsform.taetid.value != '')
    {
      var shour = Number(document.getElementById('fhour').value);
      var smin  = Number(document.getElementById('fmin').value);
      var dhour = Number(document.getElementById('dhour').value);
      var dmin  = Number(document.getElementById('dmin').value);
    }
    else
    {
      var shour = Number({/literal}{$formvars->_shourActive}{literal});
      var smin  = Number({/literal}{$formvars->_sminActive}{literal});
      var dhour = Number({/literal}{$formvars->_dhourActive}{literal});
      var dmin  = Number({/literal}{$formvars->_dminActive}{literal});
    }

    setNewDefaultOption('dhour',dhour);
    setNewDefaultOption('dmin',dmin);

    setNewDefaultOption('shour',shour);
    setNewDefaultOption('smin',smin);

    setNewTime('start');

    while (document.getElementById('created').hasChildNodes())
        document.getElementById('created').removeChild(document.getElementById('created').firstChild);
    while (document.getElementById('changed').hasChildNodes())
        document.getElementById('changed').removeChild(document.getElementById('changed').firstChild);

    if (document.getElementById('errdiv'))
    {
        while (document.getElementById('errdiv').hasChildNodes())
            document.getElementById('errdiv').removeChild(document.getElementById('errdiv').firstChild);
    }
    document.rsform.taetid.value = '';
    unmarkAllDivs(0);
}

function newActivityAtTime(startTime)
{
    clearForm();
    setNewTime('start', startTime);
}

function setFormTitle(titleValue) {
    document.getElementById('formtitel').firstChild.nodeValue = titleValue;
}

function addForm()
{
    document.rsform.submit();
}

function removeTaet()
{
    if (!confirm('{/literal}{$dict.areyousure}{literal}'))
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
    var Ergebnis = txt.replace(/¤/g,'');
    var Ergebnislength = (textlength - Ergebnis.length)*4;
    var zusatz = '';
    if (Ergebnislength > 0)
    {
        for (var i = 0; i < Ergebnislength; i++)
            zusatz = zusatz + String.fromCharCode(160);
    }
    var objOption = new Option(zusatz+''+Ergebnis,val,defSelected);
	document.getElementById(selectId).options[document.getElementById(selectId).options.length] = objOption;
	if (disabled == 0)
	{
	    document.getElementById(selectId).options[document.getElementById(selectId).options.length-1].className='strike';
	}
}

function setNewTime(fromfields, time)
{
    var shour = Number(document.getElementById('shour').value);
    var smin  = Number(document.getElementById('smin').value);
    var dhour = Number(document.getElementById('dhour').value);
    var dmin  = Number(document.getElementById('dmin').value);
    var fhour = Number(document.getElementById('fhour').value);
    var fmin  = Number(document.getElementById('fmin').value);

    var startTimeDate = new Date(1971,5,14,shour,smin,0);
    var startTime = startTimeDate.getTime();

    var finishTimeDate = new Date(1971,5,14,fhour,fmin,0);
    var finishTime = finishTimeDate.getTime();

    var lastTimeToday = new Date(1971,5,15,0,0,0);
    var lastTime = lastTimeToday.getTime();

    var firstTimeToday = new Date(1971,5,14,0,0,0);
    var firstTime = firstTimeToday.getTime();

    if (fromfields == 'start')
    {
    	if ('_undefined' != '_' + time) {
    		shour = Number(time.substr(0, 2));
    		smin  = Number(time.substr(2, 2));
			startTimeDate = new Date(1971,5,14,shour,smin,0);
    		startTime = startTimeDate.getTime();
            setNewDefaultOption('shour',shour);
            setNewDefaultOption('smin',smin);
    	}
        finishTime = startTime + dhour*60*60*1000 + dmin*60*1000;
        if (finishTime > lastTime)
        {
            finishTime = lastTime;
            var diffTime = finishTime - startTime + lastTime;
            var durationTimeDate = new Date(diffTime);
            dhour = durationTimeDate.getHours();
            dmin  = durationTimeDate.getMinutes();
            setNewDefaultOption('dhour',dhour);
            setNewDefaultOption('dmin',dmin);
        }
        finishTimeDate.setTime(finishTime);
        fhour = finishTimeDate.getHours();
        if (finishTime == lastTime) fhour = 24;
        fmin  = finishTimeDate.getMinutes();
        setNewDefaultOption('fhour',fhour);
        setNewDefaultOption('fmin',fmin);

        return true;
    }
    else if (fromfields == 'duration')
    {
        finishTime = startTime + dhour*60*60*1000 + dmin*60*1000;
        if (finishTime > lastTime)
        {
            finishTime = lastTime;
            startTime = finishTime - dhour*60*60*1000 - dmin*60*1000;
            startTimeDate = new Date(startTime);
            shour = startTimeDate.getHours();
            smin  = startTimeDate.getMinutes();
            setNewDefaultOption('shour',shour);
            setNewDefaultOption('smin',smin);
        }
        finishTimeDate.setTime(finishTime);
        fhour = finishTimeDate.getHours();
        if (finishTime == lastTime) fhour = 24;
        fmin  = finishTimeDate.getMinutes();
        setNewDefaultOption('fhour',fhour);
        setNewDefaultOption('fmin',fmin);

        return true;
    }
    else if (fromfields == 'finish')
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
                setNewDefaultOption('dhour',dhour);
                setNewDefaultOption('dmin',dmin);
            }

            startTimeDate.setTime(startTime);
            shour = startTimeDate.getHours();
            smin  = startTimeDate.getMinutes();
            setNewDefaultOption('shour',shour);
            setNewDefaultOption('smin',smin);
        }
        else
        {
            var diffTime = finishTime - startTime + lastTime;
            var durationTimeDate = new Date(diffTime);
            dhour = durationTimeDate.getHours();
            dmin  = durationTimeDate.getMinutes();
            setNewDefaultOption('dhour',dhour);
            setNewDefaultOption('dmin',dmin);
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
    nextdayTagName.nodeValue = 'nextday';
    nextday.setAttributeNode(nextdayTagName);

    var nextdayTagValue = document.createAttribute("value");
    nextdayTagValue.nodeValue = datetime;
    nextday.setAttributeNode(nextdayTagValue);

    var nextdayTagType = document.createAttribute("type");
    nextdayTagType.nodeValue = 'hidden';
    nextday.setAttributeNode(nextdayTagType);

    document.getElementById('actionscontrol').appendChild(nextday);

    submitActionForm('activity_acquisition');
}

function goNextDay(calendar)
{
    if (calendar.dateClicked) {
    var nextday = document.createElement("input");

    var nextdayTagName = document.createAttribute("name");
    nextdayTagName.nodeValue = 'nextday';
    nextday.setAttributeNode(nextdayTagName);

    var nextdayTagValue = document.createAttribute("value");
    nextdayTagValue.nodeValue = calendar.date.getTime()/1000;
    nextday.setAttributeNode(nextdayTagValue);

    var nextdayTagType = document.createAttribute("type");
    nextdayTagType.nodeValue = 'hidden';
    nextday.setAttributeNode(nextdayTagType);

    document.getElementById('actionscontrol').appendChild(nextday);

    submitActionForm('activity_acquisition');
     }
}

function mark(todo, field)
{
    for (var i = 0; i < document.getElementById(field).childNodes.length; i++)
    {
        if (todo == 'on' && document.getElementById(field).childNodes[i].nodeType == 1)
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
{/literal}
{* Tabelle mit project List --Anfang-- *}
<div style="width:660px;float:left;margin-right:20px;">
    <table cellspacing="1" cellpadding="1" style="width:100%;background-color:#d0d0d0;margin:0;padding:0">
        <thead>
            <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
                <td class="tablehead" style="width:63px;">{$dict.time}</td>
                <td class="tablehead"><img src="images/arr-left.png"
                                       width="13"
                                       height="13"
                                       alt="{$dict.dayback}"
                                       title="{$dict.dayback}"
                                       style="vertical-align:middle;"
                                       onclick="getNextDay({$formvars->go_back})" /> <span id="taettoday" onmouseover="this.style.color='blue'" onmouseout="this.style.color='black'">{$formvars->listDateFull}</span> <img src="images/arr-right.png"
                                       width="13"
                                       height="13"
                                       alt="{$dict.dayforward}"
                                       title="{$dict.dayforward}"
                                       style="vertical-align:middle;"
                                       onclick="getNextDay({$formvars->go_forw})" /></td>
            </tr>
        </thead>
        <tbody>
{section name=timelist loop=$timelist}
            <tr>
                <td style="cursor:default;text-align:center;height:{$taet->height-2}px;" class="standard"><img src="images/blank.png" alt="" width="5" height="{$taet->height-2}" style="float:left;" />
    {if $timelist[timelist]->isOccupied}
                  {$timelist[timelist]->hour}:{$timelist[timelist]->min}
    {else}
                  <a class="activitylink" href="javascript:newActivityAtTime('{$timelist[timelist]->hour}{$timelist[timelist]->min}')">{$timelist[timelist]->hour}:{$timelist[timelist]->min}</a>
    {/if}            </td>
                <td class="standard">&nbsp;</td>
            </tr>
{/section}
        </tbody>
    </table><div id="myDiv">
{section name=taetlist loop=$taet->taetObjList}{assign var="comment" value=$taet->taetObjList[taetlist]->taet_full_desc|escape:'html'|clearcomment}
{math equation="21*((timestart - KTA)/60)/15+31+(timestart - KTA)/60/STEP" timestart=$taet->taetObjList[taetlist]->taet_start KTA=$taet->KTA STEP=$taet->STEP assign="divtop" format="%d"}
{math equation="21*((timefinish - timestart)/60)/15+(timefinish - timestart)/60/STEP-3" timefinish=$taet->taetObjList[taetlist]->taet_finish timestart=$taet->taetObjList[taetlist]->taet_start STEP=$taet->STEP assign="divheight" format="%d"}
    <div id="div{$taet->taetObjList[taetlist]->taet_id}" onclick="x_getTaetData({$taet->taetObjList[taetlist]->taet_id})" style="position:absolute;width:592px;height:{$divheight}px;border:1px solid #f0f0f0;top:{$divtop}px;left:71px;cursor:pointer;" class="standarddiv" onmouseover="setHoverDiv({$taet->taetObjList[taetlist]->taet_id})" onmouseout="setNormalDiv({$taet->taetObjList[taetlist]->taet_id})"><div {if $taet->taetObjList[taetlist]->taet_full_desc}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if}>{$taet->taetObjList[taetlist]->taet_short_desc|escape:'html'}</div></div>
{/section}</div>
 <!--   <div style="position:absolute;width:592px;height:102px;background-color:#fafafa;border:1px solid #f0f0f0;top:157px;left:71px;cursor:pointer;">Tätigkeit 2</div> //-->
</div>
{* Tabelle mit project List --Ende-- *}

<div style="width:490px;float:left">
{* Formular für Eintragsbearbeitung *}
    <form action="index.php" method="post" name="rsform">
    <input name="formsend" value="1" type="hidden" />
    <input name="deletetaet" id="deletetaet" value="0" type="hidden" />
    <input name="taetid" id="taetid" value="{$formvars->taet_id}" type="hidden" />
    {if $errors}<div id="errdiv">
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul>
    </div>
    {/if}
    {if $pr_formvars->pr_id}{assign var="legend" value=$dict.activityedit}
    {else}{assign var="legend" value=$dict.activityadd}{/if}
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel">{$legend}</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="created" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="changed" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="remove"
         width="24"
         height="24"
         alt="{$dict.remove}"
         title="{$dict.remove}"
         style="cursor:pointer;padding:0 8px 0 8px;display:{$archivestyle}"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="return removeTaet()" />
    <img src="images/_add.png"
         id="addrecord"
         width="24"
         height="24"
         alt="{$dict.newrecord}"
         title="{$dict.newrecord}"
         onmouseover="this.src='images/add.png'"
         onmouseout="this.src='images/_add.png'"
         style="cursor:pointer;padding:0 8px 0 8px;"
         onclick="clearForm()" />
    <img src="images/_savesmall.png"
         id="saverecord"
         width="24"
         height="24"
         alt="{$dict.saverecord}"
         title="{$dict.saverecord}"
         onmouseover="this.src='images/savesmall.png'"
         onmouseout="this.src='images/_savesmall.png'"
         style="cursor:pointer;padding:0 0 0 8px;"
         onclick="addForm()" /></td>
            </tr>
        </table>

            <table style="width:100%;background-color:#f0f0f0;border:0;-moz-border-radius:8px;" cellspacing="4" cellpadding="1">
                <tr>
                    <td colspan="3">{$dict.project}<br />
<select name="projectid" id="projectid" style="width:280px;" onchange="x_setNewPositionList(this.value,{$formvars->taet_prpos_id})">
{foreach from=$formvars->projects_options item=project}
{if $formvars->projectActive eq $project->pr_id}{assign var=option_selected value=' selected="selected"'}{else}{assign var=option_selected value=''}{/if}{if $project->pr_status eq 0}{assign var=option_class value=' class="strike"'}{else}{assign var=option_class value=''}{/if}
<option value="{$project->pr_id}"{$option_class}{$option_selected}>{$project->pr_name|escape:'html'}</option>
{/foreach}
</select></td>
                </tr>
                <tr>
                <td colspan="2">{$dict.projectposition}<br />
<select name="projectposid" id="projectposid" style="width:280px;">
{foreach from=$formvars->projectpos_options item=projectposition_foo name=projectposition_foo}
{assign var=indent value=$projectposition_foo->level*4}
{if $projectposition_foo->prpos_id eq $formvars->taet_prpos_id}
{assign var=selected value='selected="selected"'}
{else}
{assign var=selected value=""}
{/if}{if $projectposition_foo->prpos_status eq 0}{assign var=option_class value=' class="strike"'}{else}{assign var=option_class value=''}{/if}
  <option value="{$projectposition_foo->prpos_id}"{$selected}{$option_class}>{$projectposition_foo->prpos_name|indent:$indent:"&#160;"}</option>
{/foreach}
</select>
                    </td>
                     <td>{$dict.date}<br /><input type="text" style="width:80px;color:darkblue;font-family:Verdana, Geneva, Arial, Helvetica, sans-serif;" name="taetdate" id="taetdate" value="{$formvars->show_taetdate}" /> <img
                    src="./jscalendar/img.gif"
                    id="f_form_taetdate"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="{$dict.dateselector}"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.startdate}<br />
                    <select name="shour" id="shour" class="timeselect" onchange="setNewTime('start');">{html_options options=$formvars->dhoursArr selected=$formvars->shourActive}</select> : <select name="smin" id="smin" class="timeselect" onchange="setNewTime('start');">{html_options options=$formvars->minArr selected=$formvars->sminActive}</select></td>
                    <td>{$dict.duration}<br />
                    <select name="dhour" id="dhour" class="timeselect" onchange="setNewTime('duration');">{html_options options=$formvars->dhoursArr selected=$formvars->dhourActive}</select> : <select name="dmin" id="dmin" class="timeselect" onchange="setNewTime('duration');">{html_options options=$formvars->minArr selected=$formvars->dminActive}</select></td>
                    <td>{$dict.finishdate}<br />
                    <select name="fhour" id="fhour" class="timeselect" onchange="setNewTime('finish');">{html_options options=$formvars->hoursArr selected=$formvars->fhourActive}</select> : <select name="fmin" id="fmin" class="timeselect" onchange="setNewTime('finish');">{html_options options=$formvars->minArr selected=$formvars->fminActive}</select></td>
                </tr>
                <tr>
                    <td colspan="3">{$dict.shortdescription}<br />
                    <input style="width:450px;"
                               type="text"
                               name="activitydescription"
                               id="activitydescription"
                               value="{$formvars->taet_short_desc|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">{$dict.fulldescription}<br /><textarea rows="4" cols="50"  name="description" id="description" style="width:450px;">{$formvars->taet_full_desc|escape:'html'}</textarea></td>
                </tr>
            </table>
        </fieldset>
        <br />
    </form>
{* Formular für Eintragsbearbeitung *}
</div>

<div style="width:490px;float:left">
{* Formular für Statistik und Export *}
    <form action="export.php" method="post" name="exportform">
    <input name="formsend" value="1" type="hidden" />
    {if $exp_errors}
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$exp_errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul>
    {/if}
        <fieldset style="-moz-border-radius:8px;"><legend>{$dict.staistic}</legend>
            <table cellspacing="1" cellpadding="4" style="width:100%">
                <tr>
                    <td colspan="2" style="background-color:#f0f0f0;color:#777;text-align:center;">{$dict.selectedDate}</td>
                    <td>&nbsp;</td>
                    <td colspan="2" style="background-color:#f0f0f0;color:#777;text-align:center;">{$dict.actuellDate}</td>
                </tr>
                <tr>
                    <td style="width:32%">{$formvars->statForThisDay.thisDayName}</td>
                    <td style="width:13%;white-space:nowrap;text-align:right">{$formvars->statForThisDay.thisDay} {$dict.hourshort}</td>
                    <td>&nbsp;</td>
                    <td style="width:32%">{$formvars->statForActlDay.thisDayName}</td>
                    <td style="width:13%;white-space:nowrap;text-align:right">{$formvars->statForActlDay.thisDay} {$dict.hourshort}</td>
                </tr>
                <tr>
                    <td style="background-color:#f7f7f7;">{$formvars->statForThisDay.thisWeekName}</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right">{$formvars->statForThisDay.thisWeek} {$dict.hourshort}</td>
                    <td>&nbsp;</td>
                    <td style="background-color:#f7f7f7;">{$formvars->statForActlDay.thisWeekName}</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right">{$formvars->statForActlDay.thisWeek} {$dict.hourshort}</td>
                </tr>
                <tr>
                    <td>{$formvars->statForThisDay.thisMonthName}</td>
                    <td style="white-space:nowrap;text-align:right">{$formvars->statForThisDay.thisMonth} {$dict.hourshort}</td>
                    <td>&nbsp;</td>
                    <td>{$formvars->statForActlDay.thisMonthName}</td>
                    <td style="white-space:nowrap;text-align:right">{$formvars->statForActlDay.thisMonth} {$dict.hourshort}</td>
                </tr>
                <tr>
                    <td style="background-color:#f7f7f7;">{$formvars->statForThisDay.thisYearName}</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right">{$formvars->statForThisDay.thisYear} {$dict.hourshort}</td>
                    <td>&nbsp;</td>
                    <td style="background-color:#f7f7f7;">{$formvars->statForActlDay.thisYearName}</td>
                    <td style="white-space:nowrap;background-color:#f7f7f7;text-align:right">{$formvars->statForActlDay.thisYear} {$dict.hourshort}</td>
                </tr>
            </table>
        </fieldset>
        <br />
        <fieldset style="-moz-border-radius:8px;"><legend>{$dict.export}</legend>
            <table cellspacing="1" cellpadding="4" style="width:100%">
                <tr>
                    <td style="vertical-align:top;">{$dict.startdate}<br />
                    <input type="text"
                           style="width:80px;color:darkblue;"
                           name="expstart"
                           id="expstart"
                           value="{$formvars->expstart}" /> <img
                    src="./jscalendar/img.gif"
                    id="f_expstart"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="{$dict.dateselector}"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" /><br /><br />
                    {$dict.finishdate}<br />
                    <input type="text"
                           style="width:80px;color:darkblue;"
                           name="expfinish"
                           id="expfinish"
                           value="{$formvars->expfinish}" /> <img
                    src="./jscalendar/img.gif"
                    id="f_expfinish"
                    style="border: 0;
                    cursor: pointer;"
                    alt=""
                    title="{$dict.dateselector}"
                    onmouseover="this.style.background='blue';"
                    onmouseout="this.style.background=''" />
                    <br /><br />
                    <input type="hidden" name="taetexport" value="1" />
                    {$dict.groupby}:<br />
                    <input type="radio" name="groupby" value="userprojects" id="groupbyprojects" checked="checked" /> <label for="groupbyprojects" style="cursor:pointer;">{$dict.projects}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="prpos" id="prpos" checked="checked" /> <label for="prpos" style="cursor:pointer;">{$dict.projectpositions}</label><br /><br />
                    <input type="radio" name="groupby" value="time" id="groupbytime" /> <label for="groupbytime" style="cursor:pointer;">{$dict.groupbytime}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="month" id="timescalamonth" checked="checked" /> <label for="timescalamonth" style="cursor:pointer;">{$dict.months}</label><br />{*
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="week" id="timescalaweek" checked="checked" /> <label for="timescalaweek" style="cursor:pointer;">{$dict.weeks}</label><br />*}
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="day" id="timescaladay" checked="checked" /> <label for="timescaladay" style="cursor:pointer;">{$dict.days}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="activity" id="activity" checked="checked" /> <label for="activity" style="cursor:pointer;">{$dict.activity}</label>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top;">{$dict.projects}<br />
<select name="expprojectid[]" id="expprojectid" multiple="multiple" size="11" style="width:280px;">
{html_options options=$formvars->projectsArray}
</select><br />
<a href="javascript:mark('on','expprojectid')">{$dict.markon}</a> / <a href="javascript:mark('off','expprojectid')">{$dict.markoff}</a><br /><br />
<input type="radio" name="exptype" value="xml" id="typexml" checked="checked" /> <label for="typexml" style="cursor:pointer;">{$dict.xmlformat}</label><br />
                    <input type="radio" name="exptype" value="html" id="typehtml" /> <label for="typehtml" style="cursor:pointer;">{$dict.htmlformat}</label><br />
                    {*<input type="radio" name="exptype" value="csv" id="typecsv" /> <label for="typecsv" style="cursor:pointer;">{$dict.csvformat}</label><br />*}<br /><input type="submit" name="exportdata" value="{$dict.makeexport}" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
{* Formular für Statistik und Export *}
</div>

<form action="index.php" method="post" name="nexttaetday" id="nexttaetday">
<input name="nextdate" id="nextdate" type="hidden" value="" />
</form>
<div style="clear:both">&nbsp;</div>
{literal}
<script type="text/javascript" language="JavaScript">
mark('on','expprojectid');
    Calendar.setup({
        inputField     :    "nextdate",     // id of the input field
        displayArea    :    "taettoday",    // ID of the span where the date is to be shown
        align          :    "Tl",           // alignment (defaults to "Bl")
        singleClick    :    true,
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        onUpdate       :    goNextDay
    });
    Calendar.setup({
        inputField     :    "taetdate",     // id of the input field
        button         :    "f_form_taetdate",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        singleClick    :    true
    });
    Calendar.setup({
        inputField     :    "expstart",     // id of the input field
        button         :    "f_expstart",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        singleClick    :    true
    });
    Calendar.setup({
        inputField     :    "expfinish",     // id of the input field
        button         :    "f_expfinish",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        singleClick    :    true
});
    </script>
{/literal}