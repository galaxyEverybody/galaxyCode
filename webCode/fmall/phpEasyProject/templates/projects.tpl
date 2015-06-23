{popup_init src="./scripts/overlib.js"}
{literal}

<script type="text/javascript">
function sortTable(sortfieldvalue,sortordervalue)
{
    document.tableform.psortfield.value = sortfieldvalue;
    document.tableform.psortorder.value = sortordervalue;
    document.tableform.submit();
}

function clearForm()
{
    document.rsform.projectid.value = '';
    document.rsform.projectname.value = '';
    document.rsform.projectstatus.checked = true;
    document.rsform.projectcomment.value = '';

    document.getElementById('removeprojectdata').style.display = 'none';
    document.getElementById('copyimage').style.display = 'none';

    document.getElementById('formtitel').firstChild.nodeValue = '{/literal}{$dict.projectadd}{literal}';
    x_setNewMemberList();
    while (document.getElementById('projectcreated').hasChildNodes())
        document.getElementById('projectcreated').removeChild(document.getElementById('projectcreated').firstChild);
    while (document.getElementById('projectchanged').hasChildNodes())
        document.getElementById('projectchanged').removeChild(document.getElementById('projectchanged').firstChild);
    if (document.getElementById('errdiv'))
    {
        while (document.getElementById('errdiv').hasChildNodes())
            document.getElementById('errdiv').removeChild(document.getElementById('errdiv').firstChild);
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
    document.getElementById('formtitel').firstChild.nodeValue = titleValue;
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
    projectNumberTagName.nodeValue = 'projectnr';
    projectNumberTag.setAttributeNode(projectNumberTagName);

    var projectNumberTagValue = document.createAttribute("value");
    projectNumberTagValue.nodeValue = projectid;
    projectNumberTag.setAttributeNode(projectNumberTagValue);

    var projectNumberTagType = document.createAttribute("type");
    projectNumberTagType.nodeValue = 'hidden';
    projectNumberTag.setAttributeNode(projectNumberTagType);

    document.getElementById('actionscontrol').appendChild(projectNumberTag);

    submitActionForm('projectposition');
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
        for (var i = 0; i < document.getElementById('list1').childNodes.length; i++)
        {
            if (document.getElementById('list1').childNodes[i].selected == true)
            {
                var newChild = document.getElementById('list1').childNodes[i].cloneNode(true);
                document.getElementById('list2').appendChild(newChild);
                document.getElementById('list1').removeChild(document.getElementById('list1').childNodes[i]);
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
                if (listName=='list2' && document.getElementById('projectid').value > 0)
                {
                    x_getOpenTodos(document.getElementById('projectid').value, thisobj.childNodes[i].value);
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
    if (document.getElementById('list1').hasChildNodes())
    {
        for (var i = 0; i < document.getElementById('list1').childNodes.length; i++)
        {
            document.getElementById('list1').childNodes[i].selected = true;
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

{* Hier ist die Sortierungs - Logik *}
{if $psortorder eq 'DESC'}
    {assign var="orderimage" value='<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="ASC"}
{else}
    {assign var="orderimage" value='<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="DESC"}
{/if}
{assign var="blankimage"  value='<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />'}
{assign var="s_active"  value=$blankimage}
{assign var="o_active"  value="ASC"}
{assign var="s_name"  value=$blankimage}
{assign var="o_name"  value="ASC"}

{if $psortfield eq 'active'}
    {assign var="s_active"    value=$orderimage}
    {assign var="o_active"    value=$newOrderValue}
{else}
    {assign var="s_name"  value=$orderimage}
    {assign var="o_name"  value=$newOrderValue}
{/if}

<div style="width:660px;float:left;margin-right:20px;">
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="psortfield" value="{$psortfield}" type="hidden" />
<input name="psortorder" value="{$psortorder}" type="hidden" />
<table cellpadding="4" cellspacing="0">
    <tr>
        <td style="text-align:right;">{$dict.search}</td>
        <td style="width:200px;text-align:left;"><input type="text" name="psearchstring" value="{$psearchstring|escape:'html'}" style="width:180px;" /></td>
        <td style="text-align:right;">{$dict.show}</td>
        <td><select name="pstatus" style="width:200px;">{html_options options=$status_options selected=$pstatus}</select></td>
        <td><img src="images/reload.png" alt="{$dict.reload}" title="{$dict.reload}" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:63px;" onclick="sortTable('active','{$o_active}')">{$s_active} {$dict.activ}</td>
        <td class="tablehead" onclick="sortTable('projects','{$o_name}')">{$s_name} {$dict.projectname}</td>
        <td class="tablehead" style="width:20px;">&nbsp;</td>
    </tr>
</thead>
<tbody>
{section name=project loop=$projectlist}

{if $projectlist[project]->pr_status eq 0}
    {assign var="class" value="completed"}
{else}
    {assign var="class" value=""}
{/if}

{assign var="comment" value=$projectlist[project]->pr_comment|escape:'html'|clearcomment}
    <tr id="tr{$projectlist[project]->pr_id}"
        onmouseover="setHover({$projectlist[project]->pr_id})"
        onmouseout="setNormal({$projectlist[project]->pr_id})" >
        <td style="cursor:default;text-align:center" class="standard{$class}">
        {if $projectlist[project]->pr_status ne 0}
            {assign var="checkedcompl" value=' checked="checked"'}
        {else}
            {assign var="checkedcompl" value=''}
        {/if}
            <input type="checkbox"
                   id="chkbox{$projectlist[project]->pr_id}"
                   name="chkbox{$projectlist[project]->pr_id}"
                   value="{$projectlist[project]->pr_status}"
                   onclick="x_changeProjectStatus({$projectlist[project]->pr_id},{$user->empl_id})"{$checkedcompl} />
        </td>
        <td style="cursor:pointer;" onclick="x_getProjectData({$projectlist[project]->pr_id})"
         {if $projectlist[project]->pr_comment}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if} class="standard{$class}">{$projectlist[project]->pr_name|escape:'html'}</td>
        <td style="cursor:pointer;text-align:center;width:20px;" class="standard{$class}">
            <img src="images/activity.png"
                 height="16"
                 width="16"
                 alt="{$dict.projectpositions}"
                 title="{$dict.projectpositions}"
                 style="cursor:pointer"
                 onclick="getPrPositions({$projectlist[project]->pr_id})" /></td>
    </tr>
{/section}{if $projectlist}{else}<tr><td colspan="3" class="standard" style="text-align:center">{$dict.emptylist}</td></tr>{/if}
</tbody>
</table>
</div>
{* Tabelle mit project List --Ende-- *}

<div style="width:490px;float:left">
{* Formular für Eintragsbearbeitung *}
    <form action="index.php" method="post" name="rsform">
    <input name="projectid" id="projectid" value="{$pr_formvars->pr_id}" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    <input name="deleteprojectdata" id="deleteprojectdata" value="0" type="hidden" />
    <input name="copyprojectdata" id="copyprojectdata" value="0" type="hidden" />
    {if $errors}<div id="errdiv">
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul></div>
    {/if}
    {if $pr_formvars->pr_id}{assign var="legend" value=$dict.projectedit}
    {else}{assign var="legend" value=$dict.projectadd}{/if}
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel">{$legend}</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="projectcreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="projectchanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="removeprojectdata"
         width="24"
         height="24"
         alt="{$dict.remove}"
         title="{$dict.remove}"
         style="cursor:pointer;padding:0 8px 0 8px;display:{$archivestyle}"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="removeprojectData()" />
    <img src="images/_copy.png"
         id="copyimage"
         width="24"
         height="24"
         alt="{$dict.copy}"
         title="{$dict.copy}"
         style="cursor:pointer;padding:0 8px 0 8px;display:{$copystyle}"
         onmouseover="this.src='images/copy.png'"
         onmouseout="this.src='images/_copy.png'"
         onclick="copyprojectData()" />
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
                    <td>{$dict.projectname}</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="projectname"
                               id="projectname"
                               value="{$pr_formvars->pr_name|escape:'html'}" />
                    </td>
                </tr>
                <tr>{if $pr_formvars->pr_status ne 0}
    {assign var="agreechecked" value=' checked="checked"'}
{else}
    {assign var="agreechecked" value=''}
{/if}
                    <td>&nbsp;</td><td><div style="border:1px solid red; padding:2px;width:200px;text-align:center"><label for="projectstatus">{$dict.projectisactive}: </label><input type="checkbox" id="projectstatus" name="projectstatus" value="1" style="vertical-align:middle"{$agreechecked} /></div></td>
                </tr>
                <tr>
                    <td colspan="2">{$dict.commentar}<br /><textarea rows="6" cols="50"  name="projectcomment" id="projectcomment" style="width:450px;">{$pr_formvars->pr_comment|escape:'html'}</textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width:100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>{$dict.projectmembers}<br />
                                    <select name="MembersInProject[]" id="list1" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list2');" multiple="multiple">{html_options options=$pr_formvars->membersInProjectArray}</select></td>
                                <td>&nbsp;</td>
                                <td>{$dict.employeeslist}<br />
                                    <select name="ProjectList" id="list2" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list1');" multiple="multiple">{html_options options=$pr_formvars->membersArray}</select></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
    </form>
{* Formular für Eintragsbearbeitung *}

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

                    <input type="radio" name="groupby" value="userprojects" id="groupbyusrpr" checked="checked" /> <label for="groupbyusrpr" style="cursor:pointer;">{$dict.employees}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="projects" id="usrpr" checked="checked" disabled="disabled" /> {$dict.projects}<br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options1[]" value="prpos" id="usrprpos" checked="checked" /> <label for="usrprpos" style="cursor:pointer;">{$dict.projectpositions}</label><br /><br />

                    <input type="radio" name="groupby" value="time" id="groupbytime" /> <label for="groupbytime" style="cursor:pointer;">{$dict.employees}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="month" id="timescalamonth" checked="checked" /> <label for="timescalamonth" style="cursor:pointer;">{$dict.months}</label><br />{*
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="week" id="timescalaweek" checked="checked" /> <label for="timescalaweek" style="cursor:pointer;">{$dict.weeks}</label><br />*}
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="day" id="timescaladay" checked="checked" /> <label for="timescaladay" style="cursor:pointer;">{$dict.days}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options2[]" value="activity" id="activity" checked="checked" /> <label for="activity" style="cursor:pointer;">{$dict.activity}</label><br /><br />

                    <input type="radio" name="groupby" value="projects" id="groupbyprojects" /> <label for="groupbyprojects" style="cursor:pointer;">{$dict.projects}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options3[]" value="prpos" id="prpos" checked="checked" /> <label for="prpos" style="cursor:pointer;">{$dict.projectpositions}</label><br />
                    &nbsp;&nbsp;&nbsp;<input type="checkbox" name="options3[]" value="users" id="prusers" checked="checked" /> <label for="prusers" style="cursor:pointer;">{$dict.employees}</label>
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top;">{$dict.employees}<br />
<select name="users[]" id="empllist" multiple="multiple" size="7" style="width:280px;">{html_options options=$pr_formvars->membersArray}</select><br />
<a href="javascript:mark('on','empllist')">{$dict.markon}</a> / <a href="javascript:mark('off','empllist')">{$dict.markoff}</a><br /><br />
{$dict.projects}<br />
<select name="expprojectid[]" id="expprojectid" multiple="multiple" size="7" style="width:280px;">
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
</div>
</div>

<div style="clear:both">&nbsp;</div>
{literal}
<script type="text/javascript" language="JavaScript">
mark('on','empllist');
mark('on','expprojectid');
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