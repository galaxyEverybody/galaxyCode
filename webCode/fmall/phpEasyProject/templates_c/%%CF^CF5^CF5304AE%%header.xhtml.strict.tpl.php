<?php /* Smarty version 2.6.9, created on 2015-06-10 23:06:55
         compiled from header.xhtml.strict.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', 'header.xhtml.strict.tpl', 24, false),)), $this); ?>
<?php if ($this->_tpl_vars['PageTitle'] != ""):  $this->assign('SiteTitle', ($this->_tpl_vars['SiteTitle'])." - ".($this->_tpl_vars['PageTitle']));  endif; ?>
<!DOCTYPE html
     PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title><?php echo $this->_tpl_vars['SiteTitle']; ?>
</title>
    <meta name="Author" content="Arthur Harder" />
<?php if ($this->_tpl_vars['Keywords'] != ""): ?>
    <meta name="Keywords" content="<?php echo $this->_tpl_vars['Keywords']; ?>
" />
<?php endif;  if ($this->_tpl_vars['Description'] != ""): ?>
    <meta name="Description" content="<?php echo $this->_tpl_vars['Description']; ?>
" />
<?php endif;  if ($this->_tpl_vars['CachingDisallow'] != ""): ?>
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="pragma" content="no-cache" />
<?php endif; ?>
    <link rel="shortcut icon" href="favicon.ico" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="robots" content="index" />
    <meta name="robots" content="follow" />
    <link rel="stylesheet" type="text/css" href="<?php echo ((is_array($_tmp=@$this->_tpl_vars['RootPath'])) ? $this->_run_mod_handler('default', true, $_tmp, '') : smarty_modifier_default($_tmp, '')); ?>
styles/<?php echo ((is_array($_tmp=@$this->_tpl_vars['StyleSheet'])) ? $this->_run_mod_handler('default', true, $_tmp, 'standard.css') : smarty_modifier_default($_tmp, 'standard.css')); ?>
" />
<?php echo $this->_tpl_vars['CSSExtra']; ?>

<?php echo $this->_tpl_vars['JavaScript']; ?>

<?php echo $this->_tpl_vars['xajax']; ?>

  </head>
  <body<?php echo $this->_tpl_vars['onLoadElement']; ?>
>