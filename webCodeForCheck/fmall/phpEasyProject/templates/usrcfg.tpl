{literal}
<script type="text/javascript">
function addForm()
{
    document.rsform.submit();
}

</script>
{/literal}

<form action="index.php" method="post" name="rsform">
<input name="formsend" value="1" type="hidden" />
{if $errors}<div id="errdiv">
<span style="color:red;font-weight:bold">{$dict.error}</span>
<ul style="color:red">
{foreach from=$formvars->errors item=error}
    <li>{$error}</li>
{/foreach}
</ul></div>{/if}
<table cellpadding="6" cellspacing="0">
    <tr>
        <td style="text-align:right" colspan="2">
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
    <tr>
        <td>{$dict.workdayfrom}</td>
        <td><select name="starthour" id="starthour" class="timeselect">{html_options options=$formvars->t->dhoursArr selected=$formvars->starthour}</select> : <select name="startmin" id="startmin" class="timeselect">{html_options options=$formvars->t->minArr selected=$formvars->startmin}</select></td>
    </tr>
    <tr>
        <td>{$dict.activityduration}</td>
        <td><select name="durhour" id="durhour" class="timeselect">{html_options options=$formvars->t->dhoursArr selected=$formvars->durhour}</select> : <select name="durmin" id="durmin" class="timeselect">{html_options options=$formvars->t->minArr selected=$formvars->durmin}</select></td>
    </tr>
    <tr>
        <td>{$dict.workdayunto}</td>
        <td><select name="finishhour" id="finishhour" class="timeselect">{html_options options=$formvars->t->hoursArr selected=$formvars->finishhour}</select> : <select name="finishmin" id="finishmin" class="timeselect">{html_options options=$formvars->t->minArr selected=$formvars->finishmin}</select></td>
    </tr>
    <tr>
        <td>{$dict.language}</td>
        <td><select name="userlanguage" style="width:110px;" >{html_options options=$formvars->languages_array selected=$formvars->language}</select></td>
    </tr>
    <tr>
        <td>{$dict.showmistep}</td>
        <td><select name="minstep" >{html_options options=$formvars->taetminstep_array selected=$formvars->minstep}</select></td>
    </tr>
    <tr>
        <td>{$dict.password}</td>
        <td><input style="width:110px;"
                   type="password"
                   name="employeepassword"
                   id="employeepassword" />
        </td>
    </tr>
    <tr>
        <td>{$dict.password_retry}</td>
        <td><input style="width:110px;"
                   type="password"
                   name="employeepasswordretry"
                   id="employeepasswordretry" />
        </td>
    </tr>
</table>
</form>