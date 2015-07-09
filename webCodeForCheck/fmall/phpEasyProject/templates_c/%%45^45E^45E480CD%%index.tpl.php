<?php /* Smarty version 2.6.9, created on 2015-06-10 23:13:44
         compiled from index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'index.tpl', 1, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['HeaderTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "header.xhtml.strict.tpl") : smarty_modifier_default($_tmp, "header.xhtml.strict.tpl")), 'smarty_include_vars' => array('name' => 'header')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<div style="background-color:white;padding:0 16px 0 16px;">
<div style="font-size:18px;padding-top:16px;padding-bottom:16px;position:relative;z-index:5;"><a href="http://www.phpeasyproject.de" title="phpEasyProject"><img src="images/phpEasyProject.png" width="281" height="48" style="border:0" alt="phpEasyProject" /></a></div>
<?php $this->assign('mouseevents', " onmouseover=\"this.className='tab hover'\"
              onmouseout=\"this.className='tab'\"");  $this->assign('mouseevents_1', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_2', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_2_1', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_2_2', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_3', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_4', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_5', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_6', $this->_tpl_vars['mouseevents']);  $this->assign('mouseevents_7', $this->_tpl_vars['mouseevents']);  $this->assign('link_1', "onclick=\"submitActionForm('activity_acquisition')\"");  $this->assign('link_2', "onclick=\"submitActionForm('show todo list')\"");  $this->assign('link_2_1', "onclick=\"submitActionForm('show todo list')\"");  $this->assign('link_2_2', "onclick=\"submitActionForm('archive')\"");  $this->assign('link_3', "onclick=\"submitActionForm('projects')\"");  $this->assign('link_4', "onclick=\"submitActionForm('usermanagement')\"");  $this->assign('link_5', "onclick=\"submitActionForm('usersettings')\"");  $this->assign('link_6', "onclick=\"submitActionForm('settings')\"");  $this->assign('link_7', "onclick=\"submitActionForm('help')\"");  $this->assign('sel', ' selected');  $this->assign('sel_1', "");  $this->assign('sel_2', "");  $this->assign('sel_2_1', "");  $this->assign('sel_2_2', "");  $this->assign('sel_3', "");  $this->assign('sel_4', "");  $this->assign('sel_5', "");  $this->assign('sel_6', "");  $this->assign('sel_7', "");  $this->assign('sel_8', ""); ?>

<?php if ($this->_tpl_vars['action'] == 'activity_acquisition'): ?>

    <?php $this->assign('link_1', ""); ?>
    <?php $this->assign('mouseevents_1', ""); ?>
    <?php $this->assign('sel_1', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'archive'): ?>

    <?php $this->assign('link_2', ""); ?>
    <?php $this->assign('mouseevents_2', ""); ?>
    <?php $this->assign('sel_2', $this->_tpl_vars['sel']); ?>

    <?php $this->assign('link_2_2', ""); ?>
    <?php $this->assign('mouseevents_2_2', ""); ?>
    <?php $this->assign('sel_2_2', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'projects' || $this->_tpl_vars['action'] == 'projectposition'): ?>
    <?php $this->assign('link_3', ""); ?>
    <?php $this->assign('mouseevents_3', ""); ?>
    <?php $this->assign('sel_3', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'usermanagement'): ?>
    <?php $this->assign('link_4', ""); ?>
    <?php $this->assign('mouseevents_4', ""); ?>
    <?php $this->assign('sel_4', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'usersettings'): ?>
    <?php $this->assign('link_5', ""); ?>
    <?php $this->assign('mouseevents_5', ""); ?>
    <?php $this->assign('sel_5', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'settings'): ?>
    <?php $this->assign('link_6', ""); ?>
    <?php $this->assign('mouseevents_6', ""); ?>
    <?php $this->assign('sel_6', $this->_tpl_vars['sel']); ?>

<?php elseif ($this->_tpl_vars['action'] == 'help'): ?>
    <?php $this->assign('link_7', ""); ?>
    <?php $this->assign('mouseevents_7', ""); ?>
    <?php $this->assign('sel_7', $this->_tpl_vars['sel']); ?>

<?php else: ?>
    <?php $this->assign('link_2', ""); ?>
    <?php $this->assign('mouseevents_2', ""); ?>
    <?php $this->assign('sel_2', $this->_tpl_vars['sel']); ?>

    <?php $this->assign('link_2_1', ""); ?>
    <?php $this->assign('mouseevents_2_1', ""); ?>
    <?php $this->assign('sel_2_1', $this->_tpl_vars['sel']);  endif; ?>
<div class="maintabdiv">
    <div class="tabrow">
        <span class="tab<?php echo $this->_tpl_vars['sel_1']; ?>
" <?php echo $this->_tpl_vars['mouseevents_1']; ?>
 <?php echo $this->_tpl_vars['link_1']; ?>
><?php echo $this->_tpl_vars['dict']['activity_acquisition']; ?>
</span>
        <span class="tab<?php echo $this->_tpl_vars['sel_2']; ?>
" <?php echo $this->_tpl_vars['mouseevents_2']; ?>
 <?php echo $this->_tpl_vars['link_2']; ?>
><?php echo $this->_tpl_vars['dict']['todolist']; ?>
</span><?php if ($this->_tpl_vars['user']->empl_position >= 50): ?>
        <span class="tab<?php echo $this->_tpl_vars['sel_3']; ?>
" <?php echo $this->_tpl_vars['mouseevents_3']; ?>
 <?php echo $this->_tpl_vars['link_3']; ?>
><?php echo $this->_tpl_vars['dict']['projects']; ?>
</span><?php endif;  if ($this->_tpl_vars['user']->empl_position == 100): ?>
        <span class="tab<?php echo $this->_tpl_vars['sel_4']; ?>
" <?php echo $this->_tpl_vars['mouseevents_4']; ?>
 <?php echo $this->_tpl_vars['link_4']; ?>
><?php echo $this->_tpl_vars['dict']['usermanagement']; ?>
</span><?php endif; ?>
        <span class="tab<?php echo $this->_tpl_vars['sel_5']; ?>
" <?php echo $this->_tpl_vars['mouseevents_5']; ?>
 <?php echo $this->_tpl_vars['link_5']; ?>
><?php echo $this->_tpl_vars['dict']['usersettings']; ?>
</span><?php if ($this->_tpl_vars['user']->empl_position == 100): ?>
        <span class="tab<?php echo $this->_tpl_vars['sel_6']; ?>
" <?php echo $this->_tpl_vars['mouseevents_6']; ?>
 <?php echo $this->_tpl_vars['link_6']; ?>
><?php echo $this->_tpl_vars['dict']['configuration']; ?>
</span><?php endif; ?>
        <span class="tab<?php echo $this->_tpl_vars['sel_7']; ?>
" <?php echo $this->_tpl_vars['mouseevents_7']; ?>
 <?php echo $this->_tpl_vars['link_7']; ?>
><?php echo $this->_tpl_vars['dict']['help']; ?>
</span>
    </div>
    <div class="tabpage" style="display:block;">
     <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['ContentTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "todolist.tpl") : smarty_modifier_default($_tmp, "todolist.tpl")), 'smarty_include_vars' => array('name' => 'content')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
    </div>
</div>
<div style="background-color:white;width:100%;height:60px;text-align:center;padding:20px 0 0 0;"><a class="copyright" href="http://www.phpeasyproject.de" title="phpEasyProject - The Open Source Project">Powered by phpEasyProject</a><?php if ($this->_tpl_vars['usrcfg']->build != ''): ?><p class="build">Version: <?php echo $this->_tpl_vars['usrcfg']->version; ?>
<br />Build: <?php echo $this->_tpl_vars['usrcfg']->build; ?>
</p><?php endif; ?></div></div>
<form action="index.php" method="post" name="actionscontrol" id="actionscontrol">
<input type="hidden" name="action" value="show todo list" />
</form>
<div id="loginbox"><?php echo $this->_tpl_vars['dict']['user']; ?>
: <?php echo $this->_tpl_vars['user']->empl_firstname; ?>
 <?php echo $this->_tpl_vars['user']->empl_surname; ?>
 &nbsp;&raquo;<a href="#" onclick="submitActionForm('logout')"><?php echo $this->_tpl_vars['dict']['logout']; ?>
</a>&laquo;<br /><?php echo $this->_tpl_vars['date']; ?>
</div>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ((is_array($_tmp=@$this->_tpl_vars['FooterTPL'])) ? $this->_run_mod_handler('default', true, $_tmp, "footer.tpl") : smarty_modifier_default($_tmp, "footer.tpl")), 'smarty_include_vars' => array('name' => 'footer')));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>