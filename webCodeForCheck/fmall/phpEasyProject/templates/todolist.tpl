<div style="height:1px;width:10px;margin:0;padding:0;line-height:0;font-size:0px"><!--Fehler in MS IE//-->;</div>
<div class="undertabdiv">
    <div class="tabrow">
        <span class="tab{$sel_2_1}">{$dict.active}</span>
        <span class="tab"{$mouseevents_2_2}{$link_2_2}>{$dict.archive}</span>
    </div>
    <div class="tabpage" style="display:block;">
{popup_init src="./scripts/overlib.js"}
{literal}

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
    document.rsform.todotitle.value = '';
    document.rsform.todostart.value = getFullDate();
    document.rsform.todofinish.value = '';

    document.rsform.tododof[0].checked = true;
    document.rsform.todoagreed.checked = false;
    document.getElementById('divprivat').style.display = 'inline';
    document.rsform.todoprivat.checked = false;

    setDifference({/literal}{$todo_formvars->todo_warndiff}{literal});

    document.rsform.todocomment.value = '';
    document.getElementById('moveintoarchive').style.display = 'none';

    document.getElementById('formtitel').firstChild.nodeValue = '{/literal}{$dict.todoadd}{literal}';
    while (document.getElementById('todocreated').hasChildNodes())
        document.getElementById('todocreated').removeChild(document.getElementById('todocreated').firstChild);
    while (document.getElementById('todochanged').hasChildNodes())
        document.getElementById('todochanged').removeChild(document.getElementById('todochanged').firstChild);
    if (document.getElementById('errdiv'))
    {
        while (document.getElementById('errdiv').hasChildNodes())
            document.getElementById('errdiv').removeChild(document.getElementById('errdiv').firstChild);
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
    document.getElementById('formtitel').firstChild.nodeValue = titleValue;
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
        var TagString = '0'+ Tag;
    else
        var TagString = '' + Tag;

    if (Monat < 10)
        var MonatString = '0'+ Monat;
    else
        var MonatString = '' + Monat;

    return TagString + '.' + MonatString + '.' + Jahr;
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
</script>
{/literal}
{* Tabelle mit TODO List --Anfang-- *}

{* Hier ist die Sortierungs - Logik *}
{if $sortorder eq 'DESC'}
    {assign var="orderimage" value='<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="ASC"}
{else}
    {assign var="orderimage" value='<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="DESC"}
{/if}
{assign var="blankimage"  value='<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />'}
{assign var="s_number"  value=$blankimage}
{assign var="o_number"  value="ASC"}
{assign var="s_agreed"  value=$blankimage}
{assign var="o_agreed"  value="ASC"}
{assign var="s_prio"    value=$blankimage}
{assign var="o_prio"    value="ASC"}
{assign var="s_todo"    value=$blankimage}
{assign var="o_todo"    value="ASC"}
{assign var="s_project" value=$blankimage}
{assign var="o_project" value="ASC"}
{assign var="s_status"  value=$blankimage}
{assign var="o_status"  value="ASC"}
{assign var="s_DoC"     value=$blankimage}
{assign var="o_DoC"     value="ASC"}

{if $sortfield eq 'agreed'}
    {assign var="s_agreed"  value=$orderimage}
    {assign var="o_agreed"  value=$newOrderValue}
{elseif $sortfield eq 'prio'}
    {assign var="s_prio"    value=$orderimage}
    {assign var="o_prio"    value=$newOrderValue}
{elseif $sortfield eq 'todo'}
    {assign var="s_todo"    value=$orderimage}
    {assign var="o_todo"    value=$newOrderValue}
{elseif $sortfield eq 'projects'}
    {assign var="s_project" value=$orderimage}
    {assign var="o_project" value=$newOrderValue}
{elseif $sortfield eq 'status'}
    {assign var="s_status"  value=$orderimage}
    {assign var="o_status"  value=$newOrderValue}
{elseif $sortfield eq 'doc'}
    {assign var="s_DoC"     value=$orderimage}
    {assign var="o_DoC"     value=$newOrderValue}
{else}
    {assign var="s_number" value=$orderimage}
    {assign var="o_number" value=$newOrderValue}
{/if}

<div style="width:710px;float:left;margin-right:20px;">
<form name="nextpage" action="index.php" method="post" style="margin:0;">
<input name="page" value="{$activepage}" type="hidden" />
</form>
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="sortfield" value="{$sortfield}" type="hidden" />
<input name="sortorder" value="{$sortorder}" type="hidden" />
<input name="page" value="1" type="hidden" />
<table cellpadding="4" cellspacing="0" style="width:100%">
    <tr>
        <td style="text-align:right;">{$dict.search}</td>
        <td><input type="text" name="searchstring" value="{$searchstring|escape:'html'}" style="width:120px;" /></td>
        <td>{$dict.prio}</td>
        <td><input name="prio" value="{$prio|escape:'html'}" style="width:20px;" /></td>
        <td style="text-align:right;">{$dict.show}</td>
        <td><select name="status" style="width:120px;">{html_options options=$todo_formvars->status_list selected=$status}</select></td>
        <td style="text-align:right;">{$dict.projects}</td>
        <td>
            <select name="projectnumber" style="margin-right:20px;width:120px;">
{foreach from=$todo_formvars->projects_options_with_all item=project}{if $pr_id eq $project->pr_id}{assign var=option_selected value=' selected="selected"'}{else}{assign var=option_selected value=''}{/if}{if $project->pr_status eq 0}{assign var=option_class value=' class="strike"'}{else}{assign var=option_class value=''}{/if}
            <option value="{$project->pr_id}"{$option_class}{$option_selected}>{$project->pr_name|escape:'html'}</option>
    {/foreach}
            </select>
        </td>
        <td><img src="images/reload.png" alt="{$dict.reload}" title="{$dict.reload}" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:53px;" onclick="sortTable('id','{$o_number}')">{$s_number} {$dict.number_short}</td>
        <td class="tablehead" style="width:70px;" onclick="sortTable('agreed','{$o_agreed}')">{$s_agreed} {$dict.agreed}</td>
        <td class="tablehead" style="width:53px;" onclick="sortTable('prio','{$o_prio}')">{$s_prio} {$dict.prio}</td>
        <td class="tablehead" onclick="sortTable('todo','{$o_todo}')">{$s_todo} {$dict.todo}</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('projects','{$o_project}')">{$s_project} {$dict.project}</td>
        <td class="tablehead" style="width:73px;" onclick="sortTable('status','{$o_status}')">{$s_status} {$dict.status}</td>
        <td class="tablehead" style="width:73px;" onclick="sortTable('doc','{$o_DoC}')">{$s_DoC} {$dict.degree_of_completion}</td>
    </tr>
</thead>
<tbody>
{section name=todo loop=$todolist}

{if $todolist[todo]->todo_status eq 99}
    {assign var="class" value="completed"}
{else}
    {assign var="class" value=""}
{/if}

{assign var="comment" value=$todolist[todo]->todo_comment|escape:'html'|clearcomment}
    <tr id="tr{$todolist[todo]->todo_id}"
        onmouseover="setHover({$todolist[todo]->todo_id})"
        onmouseout="setNormal({$todolist[todo]->todo_id})" >

        <td style="cursor:pointer;text-align:right;padding-right:4px;" class="number{$class}" onclick="x_getFormData({$todolist[todo]->todo_id},{$user->empl_id})" >{$todolist[todo]->todo_id}</td>
        <td style="cursor:default;text-align:center;" class="standard{$class}">
        {if $todolist[todo]->todo_status gt 0}
            {assign var="checkedcompl" value=' checked="checked"'}
        {else}
            {assign var="checkedcompl" value=''}
        {/if}
            <input type="checkbox"
                   id="chkbox{$todolist[todo]->todo_id}"
                   name="chkbox{$todolist[todo]->todo_id}"
                   value="{$todolist[todo]->todo_status}"
                   onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},0)"{$checkedcompl} />
        </td>
        <td style="cursor:pointer; text-align:center;" onclick="x_getFormData({$todolist[todo]->todo_id},{$user->empl_id})" class="standard{$class}">{$todolist[todo]->todo_prio|escape:'html'}</td>
        <td style="cursor:pointer;" onclick="x_getFormData({$todolist[todo]->todo_id},{$user->empl_id})"
         {if $todolist[todo]->todo_comment}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if} class="standard{$class}">{$todolist[todo]->todo_title|escape:'html'}</td>
        <td style="cursor:pointer;" onclick="x_getFormData({$todolist[todo]->todo_id},{$user->empl_id})" class="standard{$class}">{$todolist[todo]->pr_name|escape:'html'}</td>
        <td style="text-align:center" class="standard{$class}">
{if $todolist[todo]->todo_status eq 99}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_gray.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.complete}"
                 title="{$dict.complete}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{elseif $todolist[todo]->todo_start gt $today}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_blue.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.dontstartet}"
                 title="{$dict.dontstartet}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{elseif $todolist[todo]->todo_finish gt 0 && $todolist[todo]->todo_finish le $today}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_red.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.expired}"
                 title="{$dict.expired}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{elseif $todolist[todo]->warnflag eq 1}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_blink_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.expiredperiod}"
                 title="{$dict.expiredperiod}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{elseif $todolist[todo]->todo_statusbar eq 0}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.nonaktiv}"
                 title="{$dict.nonaktiv}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{else}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_green.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.activ}"
                 title="{$dict.activ}"
                 style="cursor:pointer;"
                 onclick="x_changeStatus({$todolist[todo]->todo_id},{$user->empl_id},1)" />
{/if}
        </td>
{if $todolist[todo]->todo_statusbar eq 1}
    {assign var="alttext" value="25%"}
{elseif $todolist[todo]->todo_statusbar eq 2}
    {assign var="alttext" value="50%"}
{elseif $todolist[todo]->todo_statusbar eq 3}
    {assign var="alttext" value="75%"}
{elseif $todolist[todo]->todo_statusbar eq 4}
    {assign var="alttext" value="100%"}
{else}
    {assign var="alttext" value="0%"}
{/if}
        <td class="standard{$class}" style="text-align:center;">
            <img id="statusbar{$todolist[todo]->todo_id}"
                 src="./images/s{$todolist[todo]->todo_statusbar}.png"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$alttext}"
                 title="{$alttext}"
                 style="cursor:pointer;"
                 onclick="x_incStatusBar({$todolist[todo]->todo_id},{$user->empl_id})" />
        </td>
    </tr>
{/section}
{if $todolist}{else}<tr><td colspan="10" class="standard" style="text-align:center">{$dict.emptylist}</td></tr>{/if}
</tbody>
</table>
<br />
{$dict.found}: {$totalpages} {$dict.todos}<br />
{$dict.pages}: {section name=pages loop=$pagesarray}{if $activepage eq $pagesarray[pages]}{$pagesarray[pages]}{else}<a href="#" onclick="getNextPage({$pagesarray[pages]})">{$pagesarray[pages]}</a>{/if} {/section}
</div>
{* Tabelle mit TODO List --Ende-- *}

<div style="width:450px;float:left;">
{* Formular für Eintragsbearbeitung *}
    <form action="index.php" method="post" name="rsform">
    <input name="movefield" id="movefield" value="" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    {if $errors}<div id="errdiv">
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul>
    </div>
    {/if}
    {if $todo_formvars->todo_id}{assign var="legend" value=$dict.todoedit}{assign var="archivestyle" value="inline"}
    {else}{assign var="legend" value=$dict.todoadd}{assign var="archivestyle" value="none"}{/if}
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel">{$legend}</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="todocreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="todochanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_materialgroups.png"
         id="moveintoarchive"
         width="24"
         height="24"
         alt="{$dict.moveintoarchive}"
         title="{$dict.moveintoarchive}"
         style="cursor:pointer;padding:0 10px 0 10px;display:{$archivestyle}"
         onmouseover="this.src='images/materialgroups.png'"
         onmouseout="this.src='images/_materialgroups.png'"
         onclick="moveIntoArchive()" />
    <img src="images/_add.png"
         id="addrecord"
         width="24"
         height="24"
         alt="{$dict.newrecord}"
         title="{$dict.newrecord}"
         onmouseover="this.src='images/add.png'"
         onmouseout="this.src='images/_add.png'"
         style="cursor:pointer;padding:0 10px 0 10px;"
         onclick="clearForm()" />
    <img src="images/_savesmall.png"
         id="saverecord"
         width="24"
         height="24"
         alt="{$dict.saverecord}"
         title="{$dict.saverecord}"
         onmouseover="this.src='images/savesmall.png'"
         onmouseout="this.src='images/_savesmall.png'"
         style="cursor:pointer;padding:0 0 0 10px;"
         onclick="addForm()" /></td>
            </tr>
        </table>

            <table style="width:100%;background-color:#f0f0f0;border:0;-moz-border-radius:8px;" cellspacing="4" cellpadding="1">
                <tr>
                    <td colspan="2">{$dict.todo}<br /><input style="width:400px;"
                                                              type="text"
                                                              name="todotitle"
                                                              id="todotitle"
                                                              value="{$todo_formvars->todo_title|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">{$dict.project}<br />
<select name="todoproject" id="todoproject" style="width:400px;" onchange="x_setNewPositionList(this.value,{$todo_formvars->todo_prpos_id})">
{foreach from=$todo_formvars->projects_options item=project}
{if $todo_formvars->todo_pr_id eq $project->pr_id}{assign var=option_selected value=' selected="selected"'}{else}{assign var=option_selected value=''}{/if}{if $project->pr_status eq 0}{assign var=option_class value=' class="strike"'}{else}{assign var=option_class value=''}{/if}
<option value="{$project->pr_id}"{$option_class}{$option_selected}>{$project->pr_name|escape:'html'}</option>
{/foreach}
</select></td>
                </tr>
                <tr>
                    <td style="width:55%">{$dict.startdate}<br />
                    <input type="text" name="todostart" id="todostart" value="{$todo_formvars->show_start}" /> <img
                    src="./jscalendar/img.gif"
                    alt=""
                    id="f_form_startdate"
                    style="border: 1px solid red;
                    cursor: pointer;"
                    title="{$dict.dateselector}"
                    onmouseover="this.style.background='red';"
                    onmouseout="this.style.background=''" /></td>
                    <td style="width:45%">{$dict.finishdate}<br />
                    <input type="text" name="todofinish" id="todofinish" value="{$todo_formvars->show_finish}" /> <img
                    src="./jscalendar/img.gif"
                    id="f_form_finishdate"
                    style="border: 1px solid red;
                    cursor: pointer;"
                    alt=""
                    title="{$dict.dateselector}"
                    onmouseover="this.style.background='red';"
                    onmouseout="this.style.background=''" /></td>
                </tr>
                <tr>
                    <td>{$dict.priority}:&nbsp;&nbsp;<input type="text" id="todoprio" name="todoprio" value="{$todo_formvars->todo_prio}" style="width:40px;" />{if !$todo_formvars->todo_inserted_from}{assign var="styleprivat" value='inline'}{elseif $user->empl_id eq $todo_formvars->todo_inserted_from}{assign var="styleprivat" value='inline'}{else}{assign var="styleprivat" value='none'}{/if}<div id="divprivat" style="display:{$styleprivat}">&nbsp;&nbsp;&nbsp;&nbsp;<label style="cursor:pointer;" for="todoprivat">{$dict.privat}:&nbsp;&nbsp;</label><input type="checkbox" id="todoprivat" style="vertical-align:bottom;" name="todoprivat" value="1"{if $todo_formvars->todo_privat gt 1}{assign var="privatchecked" value=' checked="checked"'}{else}{assign var="privatchecked" value=''}{/if}{$privatchecked}/></div></td>
                    <td><div style="padding:2px;width:150px;">{$dict.warning}<br />
                    <select name="todowarndiff">{html_options options=$todo_formvars->warndiff_options selected=$todo_formvars->todo_warndiff}</select></div></td>
                </tr>
                <tr>
                    <td>
                        <table cellpadding="0" cellspacing="0" style="width:100%">
                            <tr>
                                <td colspan="5">{$dict.degree_of_completion_full}:</td>
                            </tr>
                            <tr>{foreach from=$todo_formvars->form_tododof key=key item=item}
                                {if $todo_formvars->todo_statusbar eq $item}
                                    {assign var="checked" value=' checked="checked"'}
                                {else}
                                    {assign var="checked" value=''}
                                {/if}
                                <td style="width:20%">
                                    <input type="radio" name="tododof" id="{$key}" value="{$item}"{$checked} />
                                </td>{/foreach}
                            </tr>
                            <tr>
                            {foreach from=$todo_formvars->form_tododofval key=key item=item}<td><label for="{$key}">{$item}</label></td>{/foreach}
                            </tr>
                        </table>
                    </td>{if $todo_formvars->todo_status gt 0}
    {assign var="agreechecked" value=' checked="checked"'}
{else}
    {assign var="agreechecked" value=''}
{/if}
                    <td style="text-align:right;"><div style="border:1px solid red;padding:2px;width:100px;"><label style="cursor:pointer;" for="todoagreed">{$dict.agreed}: </label><input type="checkbox" id="todoagreed" name="todoagreed" value="99" style="vertical-align:middle"{$agreechecked} /></div></td>
                </tr>
                <tr>
                    <td colspan="2">{$dict.commentar}<br /><textarea rows="6" cols="50"  name="todocomment" id="todocomment" style="width:400px;">{$todo_formvars->todo_comment|escape:'html'}</textarea></td>
                </tr>
            </table>
        </fieldset>
    </form>
{* Formular für Eintragsbearbeitung *}
</div>

<div style="clear:both">&nbsp;</div>
{literal}
<script type="text/javascript" language="JavaScript">

Calendar.setup({
        inputField     :    "todostart",     // id of the input field
        button         :    "f_form_startdate",  // trigger for the calendar (button ID)
        align          :    "Tl",              // alignment (defaults to "Bl")
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        singleClick    :    true
});

Calendar.setup({
        inputField     :    "todofinish",     // id of the input field
        button         :    "f_form_finishdate",  // trigger for the calendar (button ID)
        align          :    "Tl",               // alignment (defaults to "Bl")
        ifFormat       :    "{/literal}{php}echo DATEFIELDCAL;{/php}{literal}",
        singleClick    :    true
});
</script>
{/literal}
    </div>
</div>