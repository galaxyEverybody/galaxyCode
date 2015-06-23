<div style="height:1px;width:10px;margin:0;padding:0;line-height:0;font-size:0px"><!--Fehler in MS IE//-->;</div>
<div class="undertabdiv">
    <div class="tabrow">
        <span class="tab"{$mouseevents_2_1}{$link_2_1}>{$dict.active}</span>
        <span class="tab{$sel_2_2}">{$dict.archive}</span>
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

function deleteToDo(arch_id)
{
    if (confirm('{/literal}{$dict.delete_confirm}{literal}'))
        x_deleteToDo(arch_id);
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
{assign var="blankimage"   value='<img src="images/blank.png" width="13" height="13" style="border:0;" alt="" />'}
{assign var="s_number"     value=$blankimage}
{assign var="o_number"     value="DESC"}
{assign var="s_agreed"     value=$blankimage}
{assign var="o_agreed"     value="ASC"}
{assign var="s_prio"       value=$blankimage}
{assign var="o_prio"       value="ASC"}
{assign var="s_todo"       value=$blankimage}
{assign var="o_todo"       value="ASC"}
{assign var="s_project"    value=$blankimage}
{assign var="o_project"    value="ASC"}
{assign var="s_created"    value=$blankimage}
{assign var="o_created"    value="ASC"}
{assign var="s_startdate"  value=$blankimage}
{assign var="o_startdate"  value="ASC"}
{assign var="s_finishdate" value=$blankimage}
{assign var="o_finishdate" value="ASC"}
{assign var="s_status"     value=$blankimage}
{assign var="o_status"     value="ASC"}
{assign var="s_DoC"        value=$blankimage}
{assign var="o_DoC"        value="ASC"}

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
{elseif $sortfield eq 'created'}
    {assign var="s_created" value=$orderimage}
    {assign var="o_created" value=$newOrderValue}
{elseif $sortfield eq 'startdate'}
    {assign var="s_startdate" value=$orderimage}
    {assign var="o_startdate" value=$newOrderValue}
{elseif $sortfield eq 'finishdate'}
    {assign var="s_finishdate" value=$orderimage}
    {assign var="o_finishdate" value=$newOrderValue}
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

<div style="width:1186px">
<form name="nextpage" action="index.php" method="post" style="margin:0;">
<input name="page" value="{$activepage}" type="hidden" />
</form>
<form name="tableform" action="index.php" method="post" style="margin:0;">
<input name="sortfield" value="{$sortfield}" type="hidden" />
<input name="sortorder" value="{$sortorder}" type="hidden" />
<input name="page" value="1" type="hidden" />
<table cellpadding="4" cellspacing="0" style="width:700px">
    <tr>
        <td style="text-align:right;">{$dict.search}</td>
        <td><input type="text" name="searchstring" value="{$searchstring}" style="width:120px;" /></td>
        <td>{$dict.prio}</td>
        <td><input name="prio" value="{$prio}" style="width:20px;" /></td>
        <td style="text-align:right;">{$dict.show}</td>
        <td><select name="status" style="width:120px;">{html_options options=$todo_formvars->status_list selected=$status}</select></td>
        <td style="text-align:right;">{$dict.projects}</td>
        <td><select name="projectnumber" style="margin:0;right:20px;width:120px;">
{foreach from=$todo_formvars->projects_options_with_all item=project}{if $pr_id eq $project->pr_id}{assign var=option_selected value=' selected="selected"'}{else}{assign var=option_selected value=''}{/if}{if $project->pr_status eq 0}{assign var=option_class value=' class="strike"'}{else}{assign var=option_class value=''}{/if}
            <option value="{$project->pr_id}"{$option_class}{$option_selected}>{$project->pr_name|escape:'html'}</option>
{/foreach}
        </select></td>
        <td><img src="images/reload.png" alt="{$dict.reload}" title="{$dict.reload}" onmouseover="this.src='images/_reload.png'" onmouseout="this.src='images/reload.png'" width="28" height="24" onclick="document.tableform.submit()" style="cursor:pointer" /></td>
    </tr>
</table>
</form>

<table id="myTable" cellspacing="1" cellpadding="1" style="width:100%; background-color:#d0d0d0;">
<thead>
    <tr style="background : url(./images/bgtr.png) repeat-x; height:23px;">
        <td class="tablehead" style="width:53px;" onclick="sortTable('id','{$o_number}')">{$s_number} {$dict.number_short}</td>
        <td class="tablehead" style="width:73px;cursor:default;">&nbsp;</td>
        <td class="tablehead" style="width:53px;" onclick="sortTable('prio','{$o_prio}')">{$s_prio} {$dict.prio}</td>
        <td class="tablehead" onclick="sortTable('todo','{$o_todo}')">{$s_todo} {$dict.todo}</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('projects','{$o_project}')">{$s_project} {$dict.project}</td>
        <td class="tablehead" style="width:140px;" onclick="sortTable('created','{$o_created}')">{$s_created} {$dict.created}</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('startdate','{$o_startdate}')">{$s_startdate} {$dict.startdate}</td>
        <td class="tablehead" style="width:120px;" onclick="sortTable('finishdate','{$o_finishdate}')">{$s_finishdate} {$dict.finishdate}</td>
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

        <td style="cursor:default;text-align:right;padding-right:4px;" class="number{$class}">{$todolist[todo]->todo_id}</td>
        <td style="cursor:default;text-align:center;" class="number{$class}">
        <img src="images/restore.png" title="{$dict.restore}" alt="{$dict.restore}" style="cursor:pointer;" onclick="x_restoreToDo({$todolist[todo]->todo_id})" />&nbsp;&nbsp;
        <img src="images/delete.png" title="{$dict.delete}" alt="{$dict.delete}" style="cursor:pointer;" onclick="deleteToDo({$todolist[todo]->todo_id})" />
        </td>
        <td style="cursor:default;text-align:center;" class="standard{$class}">{$todolist[todo]->todo_prio}</td>
        <td style="cursor:default;" {if $todolist[todo]->todo_comment}{popup text="$comment" caption=$dict.commentar fgcolor="#fafafa" width="400" offsety=-70 offsetx=-10 captionsize="2" textsize="2"}{/if} class="standard{$class}">{$todolist[todo]->todo_title|escape:'html'}</td>
        <td style="cursor:default;" class="standard{$class}">{$todolist[todo]->pr_name}</td>
        <td style="cursor:default;text-align:center;" class="standard{$class}">{$todolist[todo]->todo_inserted_s}</td>
        <td style="cursor:default;text-align:center;" class="standard{$class}">{$todolist[todo]->show_start}</td>
        <td style="cursor:default;text-align:center;" class="standard{$class}">{$todolist[todo]->show_finish}</td>
        <td style="text-align:center" class="standard{$class}">
{if $todolist[todo]->todo_status eq 99}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_gray.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.complete}"
                 title="{$dict.complete}" />
{elseif $todolist[todo]->todo_start gt $today}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_blue.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.dontstartet}"
                 title="{$dict.dontstartet}" />
{elseif $todolist[todo]->todo_finish gt 0 && $todolist[todo]->todo_finish le $today}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_red.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.expired}"
                 title="{$dict.expired}" />
{elseif $todolist[todo]->warnflag eq 1}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_blink_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.expiredperiod}"
                 title="{$dict.expiredperiod}" />
{elseif $todolist[todo]->todo_statusbar eq 0}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_yellow.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.nonaktiv}"
                 title="{$dict.nonaktiv}" />
{else}
            <img id="status{$todolist[todo]->todo_id}"
                 src="./images/status_green.gif"
                 width="40"
                 height="16"
                 border="0"
                 alt="{$dict.activ}"
                 title="{$dict.activ}" />
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
                 title="{$alttext}" />
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

<div style="clear:both">&nbsp;</div>
    </div>
</div>