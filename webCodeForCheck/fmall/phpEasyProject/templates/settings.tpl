{literal}
<script type="text/javascript">
function addForm()
{
    if (!confirm('{/literal}{$dict.areyousure}{literal}'))
        return false;
    document.rsform.submit();
    return true;
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
        {if $formvars->configWritable eq true}<img src="images/_savesmall.png"
             id="saverecord"
             width="24"
             height="24"
             alt="{$dict.saverecord}"
             title="{$dict.saverecord}"
             onmouseover="this.src='images/savesmall.png'"
             onmouseout="this.src='images/_savesmall.png'"
             style="cursor:pointer;padding:0 0 0 8px;"
             onclick="return addForm()" />{else}&nbsp;{/if}</td>
    </tr>
    <tr>
        <td>{$dict.webroot_path}</td>
        <td><input name="webrootpath" value="{$formvars->webroot_path|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.databasetype}</td>
        <td><select name="dbtype" style="width:150px;" >{html_options options=$formvars->dbtype_Array selected=$formvars->active_dbtype}</select>
        </td>
    </tr>
    <tr>
        <td>{$dict.hostname}</td>
        <td><input name="dbhost" value="{$formvars->dbhost|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.dbname}</td>
        <td><input name="dbname" value="{$formvars->dbname|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.dbuser}</td>
        <td><input name="dbuser" value="{$formvars->dbuser|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.dbpassword}</td>
        <td><input name="dbpassword" value="{$formvars->dbpassword|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.dbsuffix}</td>
        <td><input name="dbprefix" value="{$formvars->dbprefix|escape:'html'}" style="width:150px;" /></td>
    </tr>
    <tr>
        <td>{$dict.defaultlanguage}</td>
        <td><select name="defaultlanguage" style="width:150px;" >{html_options options=$formvars->languages_array selected=$formvars->default_language}</select></td>
    </tr>
    <tr>
        <td>{$dict.taetmistep}</td>
        <td><select name="taetminstep" >{html_options options=$formvars->taetminstep_array selected=$formvars->taetminstep}</select></td>
    </tr>
</table>
</form>