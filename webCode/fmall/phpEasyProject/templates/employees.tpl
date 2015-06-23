{popup_init src="./scripts/overlib.js"}
{literal}

<script type="text/javascript">
function sortTable(sortfieldvalue,sortordervalue)
{
    document.tableform.esortfield.value = sortfieldvalue;
    document.tableform.esortorder.value = sortordervalue;
    document.tableform.submit();
}

function clearForm()
{
    document.rsform.employeeid.value = '';
    document.rsform.employeelogin.value = '';
    document.rsform.employeesurname.value = '';
    document.rsform.employeefirstname.value = '';

    document.rsform.employeeaktive.checked = true;

    document.rsform.employeecomment.value = '';
    document.getElementById('removeemployeedata').style.display = 'none';

    document.getElementById('formtitel').firstChild.nodeValue = '{/literal}{$dict.employeeadd}{literal}';
    x_setNewProjectList();
    while (document.getElementById('employeecreated').hasChildNodes())
        document.getElementById('employeecreated').removeChild(document.getElementById('employeecreated').firstChild);
    while (document.getElementById('employeechanged').hasChildNodes())
        document.getElementById('employeechanged').removeChild(document.getElementById('employeechanged').firstChild);
    if (document.getElementById('errdiv'))
    {
        while (document.getElementById('errdiv').hasChildNodes())
            document.getElementById('errdiv').removeChild(document.getElementById('errdiv').firstChild);
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
    document.getElementById('formtitel').firstChild.nodeValue = titleValue;
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
                if (listName=='list2' && document.getElementById('employeeid').value > 0)
                {
                    x_getOpenTodos(thisobj.childNodes[i].value,document.getElementById('employeeid').value);
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
</script>
{/literal}
{* Tabelle mit employee List --Anfang-- *}

{* Hier ist die Sortierungs - Logik *}
{if $esortorder eq 'DESC'}
    {assign var="orderimage" value='<img src="images/arrow-asc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="ASC"}
{else}
    {assign var="orderimage" value='<img src="images/arrow-desc.png" width="13" height="13" style="border:0;" alt="" />'}
    {assign var="newOrderValue" value="DESC"}
{/if}
{assign var="blankimage"  value='<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />'}
{assign var="s_login"  value=$blankimage}
{assign var="o_login"  value="ASC"}
{assign var="s_active"  value=$blankimage}
{assign var="o_active"  value="ASC"}
{assign var="s_name"  value=$blankimage}
{assign var="o_name"  value="ASC"}
{assign var="s_position"  value=$blankimage}
{assign var="o_position"  value="ASC"}

{if $esortfield eq 'name'}
    {assign var="s_name"  value=$orderimage}
    {assign var="o_name"  value=$newOrderValue}
{elseif $esortfield eq 'active'}
    {assign var="s_active"    value=$orderimage}
    {assign var="o_active"    value=$newOrderValue}
{elseif $esortfield eq 'position'}
    {assign var="s_position"    value=$orderimage}
    {assign var="o_position"    value=$newOrderValue}
{else}
    {assign var="s_login" value=$orderimage}
    {assign var="o_login" value=$newOrderValue}
{/if}

<div style="width:660px;float:left;margin-right:20px;">
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="esortfield" value="{$esortfield}" type="hidden" />
<input name="esortorder" value="{$esortorder}" type="hidden" />
<table cellpadding="4" cellspacing="0">
    <tr>
        <td style="text-align:right;">{$dict.search}</td>
        <td style="width:140px;text-align:left;"><input type="text" name="esearchstring" value="{$esearchstring|escape:'html'}" style="width:120px;" /></td>
        <td style="text-align:right;">{$dict.show}</td>
        <td><select name="estatus" style="width:120px;">{html_options options=$status_options selected=$estatus}</select></td>
        <td><img src="images/reload.png" alt="{$dict.reload}" title="{$dict.reload}" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:120px;" onclick="sortTable('login','{$o_login}')">{$s_login} {$dict.login}</td>
        <td class="tablehead" style="width:63px;" onclick="sortTable('active','{$o_active}')">{$s_active} {$dict.activ}</td>
        <td class="tablehead" onclick="sortTable('name','{$o_name}')">{$s_name} {$dict.emplname}</td>
        <td class="tablehead" style="width:80px;" onclick="sortTable('position','{$o_position}')">{$s_position} {$dict.position}</td>
    </tr>
</thead>
<tbody>
{section name=employee loop=$employeelist}

{if $employeelist[employee]->empl_status eq 0}
    {assign var="class" value="completed"}
{else}
    {assign var="class" value=""}
{/if}

{assign var="comment" value=$employeelist[employee]->empl_comment|escape:'html'|clearcomment}
    <tr id="tr{$employeelist[employee]->empl_id}"
        onmouseover="setHover({$employeelist[employee]->empl_id})"
        onmouseout="setNormal({$employeelist[employee]->empl_id})" >

        <td style="cursor:pointer;padding-left:4px;" class="standard{$class}" onclick="x_getEmplData({$employeelist[employee]->empl_id})" >{$employeelist[employee]->empl_login|escape:'html'}</td>
        <td style="cursor:default;text-align:center" class="standard{$class}">
        {if $employeelist[employee]->empl_status ne 0}
            {assign var="checkedcompl" value=' checked="checked"'}
        {else}
            {assign var="checkedcompl" value=''}
        {/if}
            <input type="checkbox"
                   id="chkbox{$employeelist[employee]->empl_id}"
                   name="chkbox{$employeelist[employee]->empl_id}"
                   value="{$employeelist[employee]->empl_status}"
                   onclick="x_changeEmplStatus({$employeelist[employee]->empl_id},{$user->empl_id})"{$checkedcompl} />
        </td>
        <td style="cursor:pointer;" onclick="x_getEmplData({$employeelist[employee]->empl_id})"
         {if $employeelist[employee]->empl_comment}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if} class="standard{$class}">{$employeelist[employee]->empl_surname|escape:'html'}, {$employeelist[employee]->empl_firstname|escape:'html'}</td>
{if $employeelist[employee]->empl_position eq 5}
    {assign var="position" value=$dict.trainee_short}
{elseif $employeelist[employee]->empl_position eq 10}
    {assign var="position" value=$dict.empl_short}
{elseif $employeelist[employee]->empl_position eq 50}
    {assign var="position" value=$dict.PM}
{elseif $employeelist[employee]->empl_position eq 100}
    {assign var="position" value=$dict.SM}
{else}
    {assign var="position" value=$dict.noPosition}
{/if}
        <td style="cursor:pointer;text-align:center;padding-right:4px;" class="standard{$class}" onclick="x_getEmplData({$employeelist[employee]->empl_id})" >{$position}</td>
    </tr>
{/section}
</tbody>
</table>
</div>
{* Tabelle mit employee List --Ende-- *}

<div style="width:490px;float:left">
{* Formular für Eintragsbearbeitung *}
    <form action="index.php" method="post" name="rsform">
    <input name="employeeid" id="employeeid" value="{$empl_formvars->empl_id}" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    <input name="deleteemployeedata" id="deleteemployeedata" value="0" type="hidden" />
    {if $errors}<div id="errdiv">
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul></div>
    {/if}
    {if $empl_formvars->empl_id}{assign var="legend" value=$dict.employeeedit}
    {else}{assign var="legend" value=$dict.employeeadd}{/if}
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel">{$legend}</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="employeecreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="employeechanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="removeemployeedata"
         width="24"
         height="24"
         alt="{$dict.remove}"
         title="{$dict.remove}"
         style="cursor:pointer;padding:0 10px 0 10px;display:{$archivestyle}"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="removeemployeeData()" />
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
                    <td style="width:260px;">{$dict.login}</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeelogin"
                               id="employeelogin"
                               value="{$empl_formvars->empl_login|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.firstname}</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeefirstname"
                               id="employeefirstname"
                               value="{$empl_formvars->empl_firstname|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.surname}</td>
                    <td><input style="width:280px;"
                               type="text"
                               name="employeesurname"
                               id="employeesurname"
                               value="{$empl_formvars->empl_surname|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.password}</td>
                    <td><input style="width:280px;"
                               type="password"
                               name="employeepassword"
                               id="employeepassword" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.password_retry}</td>
                    <td><input style="width:280px;"
                               type="password"
                               name="employeepasswordretry"
                               id="employeepasswordretry" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.position}</td>
                    <td><select name="employeeposition" id="employeeposition" style="width:280px;">
{html_options options=$empl_formvars->position_options selected=$empl_formvars->empl_position}
</select></td>
                </tr>
                <tr>{if $empl_formvars->empl_status ne 0}
    {assign var="agreechecked" value=' checked="checked"'}
{else}
    {assign var="agreechecked" value=''}
{/if}
                    <td>&nbsp;</td><td><div style="border:1px solid red; padding:2px;width:200px;text-align:center"><label for="employeeaktive">{$dict.empl_active}: </label><input type="checkbox" id="employeeaktive" name="employeeaktive" value="1" style="vertical-align:middle"{$agreechecked} /></div></td>
                </tr>
                <tr>
                    <td colspan="2">{$dict.commentar}<br /><textarea rows="6" cols="50"  name="employeecomment" id="employeecomment" style="width:450px;">{$empl_formvars->empl_comment|escape:'html'}</textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table style="width:100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>{$dict.memberinprojects}<br />
                                    <select name="MemberInProjects[]" id="list1" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list2');" multiple="multiple">{html_options options=$empl_formvars->memberProjectListArray}</select></td>
                                <td>&nbsp;</td>
                                <td>{$dict.projectlist}<br />
                                    <select name="ProjectList" id="list2" size="8" style="width:230px;" ondblclick="MovieToAnotherList(this,'list1');" multiple="multiple">{html_options options=$empl_formvars->projectListArray}</select></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
{* Formular für Eintragsbearbeitung *}
</div>

<div style="clear:both">&nbsp;</div>