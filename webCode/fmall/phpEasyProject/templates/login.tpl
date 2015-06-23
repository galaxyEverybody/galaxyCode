{include file=$HeaderTPL|default:"header.xhtml.strict.tpl" name="header"}
<div style="background-color:white;padding:0 16px 0 16px;">
<div style="font-size:18px;padding-top:16px;padding-bottom:16px;position:relative;z-index:5;"><span style="font-weight:bold;color:darkblue">php</span><span style="color:#E68B2C">Easy<strong>Projects</strong></span></div>
<div class="maintabdiv">
    <div class="tabrow">
        <span class="tab selected">{$dict.loginform}</span>
    </div>
    <div class="tabpage" style="display:block;">
<form method="post" action="index.php">
<input type="hidden" name="action" value="login" />
<table style="width:100%; height:600px; text-align:center;">
  <tr>
  <td align="center">
    <table cellpadding="6" cellspacing="0" style="width:300px; background-color:#F1F3F5; border: 1px solid #ADBBCA;">
      <tbody>
        <tr>
          <td rowspan="3"><img src="images/security.png" width="64" height="64" alt="" /></td>
        </tr>
        <tr>
          <td>{$dict.login}:</td>
          <td><input type="text" name="username" value="{$logindata.username|escape:'html'}" /></td>
        </tr>
        <tr>
          <td>{$dict.password}:</td>
          <td><input type="password" name="password" /></td>
        </tr>
        <tr>
          <td></td>
          <td colspan="2"><label for="chck">{$dict.autologin}</label><input type="checkbox" id="chck" value="1" name="autologin"{$logindata.checked} /></td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td><input type="submit" /></td>
        </tr>
        <tr>
          <td colspan="3">{if $errors}<ul id="errors">{section name=err loop=$errors}<li>{$errors[err]}</li>{/section}</ul>{/if}</td>
        </tr>
      </tbody>
    </table>
  </td>
 </tr>
</table>
</form>

<div style="clear:both">&nbsp;</div>    </div>
</div>
<div style="background-color:white;width:100%;height:40px;text-align:center;padding:20px 0 0 0;"><a class="copyright" href="http://www.easyWebSolutions.de" title="More info about updates, patches and new other products...">Powered by phpEasyProjects</a></div></div>
<form action="index.php" method="post" name="actionscontrol">
<input type="hidden" name="action" value="show todo list" />
</form>
{include file=$FooterTPL|default:"footer.tpl" name="footer"}

