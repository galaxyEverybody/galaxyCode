{popup_init src="./scripts/overlib.js"}
{literal}

<script type="text/javascript">

function clearForm()
{
    document.rsform.projectposid.value = '';
    document.rsform.projectposition.value = '';
    document.rsform.prposstatus.checked = true;
    document.rsform.prposcomment.value = '';

    document.getElementById('removeprposdata').style.display = 'none';

    document.getElementById('formtitel').firstChild.nodeValue = '{/literal}{$dict.prposadd}{literal}';
    while (document.getElementById('prposcreated').hasChildNodes())
        document.getElementById('prposcreated').removeChild(document.getElementById('prposcreated').firstChild);
    while (document.getElementById('prposchanged').hasChildNodes())
        document.getElementById('prposchanged').removeChild(document.getElementById('prposchanged').firstChild);
    if (document.getElementById('errdiv'))
    {
        while (document.getElementById('errdiv').hasChildNodes())
            document.getElementById('errdiv').removeChild(document.getElementById('errdiv').firstChild);
    }
    unmarkAll(0);
}

function setFormNewStatus(prpos_id,status)
{
    if (document.rsform.projectposid.value == prpos_id)
    {
        if (status == 0)
            document.rsform.prposstatus.checked = false;
        else
            document.rsform.prposstatus.checked = true;
    }
}

function setFormTitle(titleValue) {
    document.getElementById('formtitel').firstChild.nodeValue = titleValue;
}

function addForm()
{
    document.rsform.submit();
}

function getProject(projectid)
{
    var projectNumberTag = document.createElement("input");

    var projectNumberTagName = document.createAttribute("name");
    projectNumberTagName.nodeValue = 'projectidfromposition';
    projectNumberTag.setAttributeNode(projectNumberTagName);

    var projectNumberTagValue = document.createAttribute("value");
    projectNumberTagValue.nodeValue = projectid;
    projectNumberTag.setAttributeNode(projectNumberTagValue);

    var projectNumberTagType = document.createAttribute("type");
    projectNumberTagType.nodeValue = 'hidden';
    projectNumberTag.setAttributeNode(projectNumberTagType);

    document.getElementById('actionscontrol').appendChild(projectNumberTag);

    submitActionForm('projects');
}

function removeprposData()
{
    document.rsform.deleteprposdata.value = 1;
    document.rsform.submit();
}

function setProjectPosSelected(prpos_id)
{
    for( var i = 0; i < document.rsform.siblingid.options.length; i++ )
    {
        if (document.rsform.siblingid.options[i].value == prpos_id)
            document.rsform.siblingid.options[i].selected = true;
        else
            document.rsform.siblingid.options[i].selected = false;
    }
}

</script>
{/literal}


<div style="width:680px;float:left;margin-right:20px;">
<p><a href="#" class="projectlink" onclick="getProject({$prpos_formvars->prpos_project_id})">{$projectname|escape:'html'}</a>: {$dict.projectpositions}</p>
{* Tabelle mit project List --Anfang-- *}

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead">{$dict.projectposition}</td>
        <td class="tablehead" style="width:63px;">{$dict.status}</td>
    </tr>
</thead>
<tbody>
{section name=prpos loop=$prpos_formvars->nodesArr}
{assign var="comment" value=$prpos_formvars->nodesArr[prpos]->prpos_comment|escape:'html'|clearcomment}
{if $prpos_formvars->nodesArr[prpos]->prpos_status eq 0}
    {assign var="class" value="completed"}
{else}
    {assign var="class" value=""}
{/if}
  <tr id="tr{$prpos_formvars->nodesArr[prpos]->prpos_id}"
        onmouseover="setHover({$prpos_formvars->nodesArr[prpos]->prpos_id})"
        onmouseout="setNormal({$prpos_formvars->nodesArr[prpos]->prpos_id})">
    <td class="standard{$class}" style="cursor:pointer" onclick="x_getProjectPositionData({$prpos_formvars->nodesArr[prpos]->prpos_id})"
        {if $prpos_formvars->nodesArr[prpos]->prpos_comment}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if}><div class="tier{$prpos_formvars->nodesArr[prpos]->level+1}"><a id="p{counter}" href="#" class="folder"></a>{$prpos_formvars->nodesArr[prpos]->prpos_name|escape:'html'}{* $prpos_formvars->nodesArr[prpos]->SiblingID *}</div></td>
    <td class="standard{$class}" style="text-align:center;">{if $prpos_formvars->nodesArr[prpos]->prpos_status ne 0}
            {assign var="checkedcompl" value=' checked="checked"'}
        {else}
            {assign var="checkedcompl" value=''}
        {/if}
            <input type="checkbox"
                   id="chkbox{$prpos_formvars->nodesArr[prpos]->prpos_id}"
                   name="chkbox{$prpos_formvars->nodesArr[prpos]->prpos_id}"
                   value="{$prpos_formvars->nodesArr[prpos]->prpos_status}"
                   onclick="x_changeProjectPositionStatus({$prpos_formvars->nodesArr[prpos]->prpos_id},{$user->empl_id})"{$checkedcompl} /></td>
  </tr>
{/section}{if $prpos_formvars->nodesArr}{else}<tr><td colspan="2" class="standard" style="text-align:center">{$dict.emptylist}</td></tr>{/if}
</tbody>
</table>
</div>
{* Tabelle mit project List --Ende-- *}

<div style="width:500px;float:left">
{* Formular für Eintragsbearbeitung *}
    <form action="index.php" method="post" name="rsform">
    <input name="projectposid" id="projectposid" value="{$prpos_formvars->prpos_id}" type="hidden" />
    <input name="formsend" value="1" type="hidden" />
    <input name="deleteprposdata" id="deleteprposdata" value="0" type="hidden" />
    {if $errors}<div id="errdiv">
    <span style="color:red;font-weight:bold">{$dict.error}</span>
        <ul style="color:red">
        {foreach from=$errors item=error}
            <li>{$error}</li>
        {/foreach}
        </ul>
    </div>{/if}
    {if $prpos_formvars->prpos_id}{assign var="legend" value=$dict.prposedit}
    {else}{assign var="legend" value=$dict.prposadd}{/if}
        <fieldset style="-moz-border-radius:8px;"><legend id="formtitel">{$legend}</legend>
        <table style="width:100%" cellpadding="0" cellspacing="0">
            <tr>
                <td id="prposcreated" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td id="prposchanged" style="color:#c0c0c0;cursor:default;" onmouseover="this.style.color='#E68B2C'" onmouseout="this.style.color='#c0c0c0'">&nbsp;</td>
                <td style="text-align:right">

    <img src="images/_trash24.png"
         id="removeprposdata"
         width="24"
         height="24"
         alt="{$dict.remove}"
         title="{$dict.remove}"
         style="cursor:pointer;padding:0 10px 0 10px;display:{$archivestyle}"
         onmouseover="this.src='images/trash24.png'"
         onmouseout="this.src='images/_trash24.png'"
         onclick="removeprposData()" />
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
                    <td>{$dict.projectposition}</td>
                    <td style="width:280px;"><input style="width:280px;"
                               type="text"
                               name="projectposition"
                               id="projectposition"
                               value="{$prpos_formvars->prpos_name|escape:'html'}" />
                    </td>
                </tr>
                <tr>
                    <td>{$dict.order}:<br />
                        <select name="orderright" id="orderright" style="width:174px;">
                            <option value="1" selected="selected">{$dict.afterposition}</option>
                            <option value="2">{$dict.asunderposition}</option>
                        </select></td>
                    <td><select name="siblingid" id="siblingid" style="width:280px;">{section name=tree loop=$prpos_formvars->nodesArr}{assign var=indent value=$prpos_formvars->nodesArr[tree]->level*4}{if $prpos_formvars->nodesArr[tree]->prpos_id eq $prpos_formvars->prpos_id}{assign var=selected value='selected="selected"'}{else}{assign var=selected value=""}{/if}
  <option value="{$prpos_formvars->nodesArr[tree]->prpos_id}"{$selected}>{$prpos_formvars->nodesArr[tree]->prpos_name|indent:$indent:"&#160;"}</option>
{/section}</select>
                    </td>
                </tr>
                <tr>{if $prpos_formvars->prpos_status ne 0}
    {assign var="agreechecked" value=' checked="checked"'}
{else}
    {assign var="agreechecked" value=''}
{/if}
                    <td>&nbsp;</td><td><div style="border:1px solid red; padding:2px;width:200px;text-align:center"><label for="projectstatus">{$dict.prposisactive}: </label><input type="checkbox" id="prposstatus" name="prposstatus" value="1" style="vertical-align:middle"{$agreechecked} /></div></td>
                </tr>
                <tr>
                    <td colspan="2">{$dict.commentar}<br /><textarea rows="14" cols="50"  name="prposcomment" id="prposcomment" style="width:450px;">{$prpos_formvars->prpos_comment}</textarea></td>
                </tr>
            </table>
        </fieldset>
    </form>
{* Formular für Eintragsbearbeitung *}
</div>

<div style="clear:both">&nbsp;</div>
