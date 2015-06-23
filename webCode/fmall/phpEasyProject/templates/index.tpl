{include file=$HeaderTPL|default:"header.xhtml.strict.tpl" name="header"}
<div style="background-color:white;padding:0 16px 0 16px;">
<div style="font-size:18px;padding-top:16px;padding-bottom:16px;position:relative;z-index:5;"><a href="http://www.phpeasyproject.de" title="phpEasyProject"><img src="images/phpEasyProject.png" width="281" height="48" style="border:0" alt="phpEasyProject" /></a></div>
{* ******* MENU-LOGIK ******* *}
{assign var="mouseevents"  value=" onmouseover=\"this.className='tab hover'\"
              onmouseout=\"this.className='tab'\""}
{assign var="mouseevents_1"  value=$mouseevents}
{assign var="mouseevents_2"  value=$mouseevents}
{assign var="mouseevents_2_1"  value=$mouseevents}
{assign var="mouseevents_2_2"  value=$mouseevents}
{assign var="mouseevents_3"  value=$mouseevents}
{assign var="mouseevents_4"  value=$mouseevents}
{assign var="mouseevents_5"  value=$mouseevents}
{assign var="mouseevents_6"  value=$mouseevents}
{assign var="mouseevents_7"  value=$mouseevents}
{assign var="link_1"  value="onclick=\"submitActionForm('activity_acquisition')\""}
{assign var="link_2"  value="onclick=\"submitActionForm('show todo list')\""}
{assign var="link_2_1"  value="onclick=\"submitActionForm('show todo list')\""}
{assign var="link_2_2"  value="onclick=\"submitActionForm('archive')\""}
{assign var="link_3"  value="onclick=\"submitActionForm('projects')\""}
{assign var="link_4"  value="onclick=\"submitActionForm('usermanagement')\""}
{assign var="link_5"  value="onclick=\"submitActionForm('usersettings')\""}
{assign var="link_6"  value="onclick=\"submitActionForm('settings')\""}
{assign var="link_7"  value="onclick=\"submitActionForm('help')\""}
{assign var="sel"  value=" selected"}
{assign var="sel_1"  value=""}
{assign var="sel_2"  value=""}
{assign var="sel_2_1"  value=""}
{assign var="sel_2_2"  value=""}
{assign var="sel_3"  value=""}
{assign var="sel_4"  value=""}
{assign var="sel_5"  value=""}
{assign var="sel_6"  value=""}
{assign var="sel_7"  value=""}
{assign var="sel_8"  value=""}

{if $action eq 'activity_acquisition'}

    {assign var="link_1"  value=""}
    {assign var="mouseevents_1"  value=""}
    {assign var="sel_1"  value=$sel}

{elseif $action eq 'archive'}

    {assign var="link_2"  value=""}
    {assign var="mouseevents_2"  value=""}
    {assign var="sel_2"  value=$sel}

    {assign var="link_2_2"  value=""}
    {assign var="mouseevents_2_2"  value=""}
    {assign var="sel_2_2"  value=$sel}

{elseif $action eq 'projects' or $action eq 'projectposition'}
    {assign var="link_3"  value=""}
    {assign var="mouseevents_3"  value=""}
    {assign var="sel_3"  value=$sel}

{elseif $action eq 'usermanagement'}
    {assign var="link_4"  value=""}
    {assign var="mouseevents_4"  value=""}
    {assign var="sel_4"  value=$sel}

{elseif $action eq 'usersettings'}
    {assign var="link_5"  value=""}
    {assign var="mouseevents_5"  value=""}
    {assign var="sel_5"  value=$sel}

{elseif $action eq 'settings'}
    {assign var="link_6"  value=""}
    {assign var="mouseevents_6"  value=""}
    {assign var="sel_6"  value=$sel}

{elseif $action eq 'help'}
    {assign var="link_7"  value=""}
    {assign var="mouseevents_7"  value=""}
    {assign var="sel_7"  value=$sel}

{else}
    {assign var="link_2"  value=""}
    {assign var="mouseevents_2"  value=""}
    {assign var="sel_2"  value=$sel}

    {assign var="link_2_1"  value=""}
    {assign var="mouseevents_2_1"  value=""}
    {assign var="sel_2_1"  value=$sel}
{/if}
{* ******* MENU-LOGIK ******* *}
<div class="maintabdiv">
    <div class="tabrow">
        <span class="tab{$sel_1}" {$mouseevents_1} {$link_1}>{$dict.activity_acquisition}</span>
        <span class="tab{$sel_2}" {$mouseevents_2} {$link_2}>{$dict.todolist}</span>{if $user->empl_position ge 50}
        <span class="tab{$sel_3}" {$mouseevents_3} {$link_3}>{$dict.projects}</span>{/if}{if $user->empl_position eq 100}
        <span class="tab{$sel_4}" {$mouseevents_4} {$link_4}>{$dict.usermanagement}</span>{/if}
        <span class="tab{$sel_5}" {$mouseevents_5} {$link_5}>{$dict.usersettings}</span>{if $user->empl_position eq 100}
        <span class="tab{$sel_6}" {$mouseevents_6} {$link_6}>{$dict.configuration}</span>{/if}
        <span class="tab{$sel_7}" {$mouseevents_7} {$link_7}>{$dict.help}</span>
    </div>
    <div class="tabpage" style="display:block;">
     {include file=$ContentTPL|default:"todolist.tpl" name="content"}
    </div>
</div>
<div style="background-color:white;width:100%;height:60px;text-align:center;padding:20px 0 0 0;"><a class="copyright" href="http://www.phpeasyproject.de" title="phpEasyProject - The Open Source Project">Powered by phpEasyProject</a>{if $usrcfg->build ne ''}<p class="build">Version: {$usrcfg->version}<br />Build: {$usrcfg->build}</p>{/if}</div></div>
<form action="index.php" method="post" name="actionscontrol" id="actionscontrol">
<input type="hidden" name="action" value="show todo list" />
</form>
<div id="loginbox">{$dict.user}: {$user->empl_firstname} {$user->empl_surname} &nbsp;&raquo;<a href="#" onclick="submitActionForm('logout')">{$dict.logout}</a>&laquo;<br />{$date}</div>
{include file=$FooterTPL|default:"footer.tpl" name="footer"}