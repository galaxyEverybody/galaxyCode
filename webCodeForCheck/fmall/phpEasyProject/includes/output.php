<?php
/**
 * phpEasyProjects - a easy Projects based activity management and todo lists
 * Copyright (C) 2005  Arthur Harder
 *
 * web: http://www.phpEasyProject.net
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

$template = new template();

if (isset($todo_formvars)) {
    $template->assign('todo_formvars',$todo_formvars);
}

if (isset($formvars)) {
    $template->assign('formvars',$formvars);
}

// Activity Acquisition
if (isset($timelist))
{
    $template->assign('taet',$taet);
    $template->assign('timelist',$timelist);
}

// ToDo Management
if (isset($todolist)) {
    $template->assign('todolist',$todolist);
    $template->assign('searchstring',$searchstring);
    $template->assign('pr_id',$pr_id);
    $template->assign('prio',$prio);
    $template->assign('status',$status);
    $template->assign('sortfield',$sortfield);
    $template->assign('sortorder',$sortorder);
}

// Employees management
if (isset($employeelist))
{
    $template->assign('esortfield',$esortfield);
    $template->assign('esortorder',$esortorder);
    $template->assign('esearchstring',$esearchstring);
    $template->assign('estatus',$estatus);
    $template->assign('status_options',$status_options);
    $template->assign('employeelist',$employeelist);
    $template->assign('empl_formvars',$empl_formvars);
}

// Project management
if (isset($projectlist))
{
    $template->assign('psortfield',$psortfield);
    $template->assign('psortorder',$psortorder);
    $template->assign('psearchstring',$psearchstring);
    $template->assign('pstatus',$pstatus);
    $template->assign('status_options',$status_options);
    $template->assign('projectlist',$projectlist);
    $template->assign('pr_formvars',$pr_formvars);
}

if (isset($errors)) {
    $template->assign('errors',$errors);
}

// Projectpositions
if (isset($projectname))
{
    $template->assign('projectname',$projectname);
    $template->assign('prpos_formvars',$prpos_formvars);
}


// Help
if (isset($content))
{
    $template->assign('content',$content);
}

$template->assign('SiteTitle','phpEasyProject');
$template->assign('PageTitle',$PageTitle);
$template->assign('ContentTPL',$ContentTPL);
$template->assign('today',time());
$template->assign('dict',$dict);
$template->assign('JavaScript',$JavaScript);

if (isset($onLoadElement))
    $template->assign('onLoadElement',$onLoadElement);

$date = $dict['today'].': '.strftime(FULLDATE);
$template->assign('date',$date);
if (!empty($xajax))
{
    $template->assign('xajax',$xajax);
}

if (isset($archivestyle))
    $template->assign('archivestyle',$archivestyle);


if (isset($copystyle))
    $template->assign('copystyle',$copystyle);


if (isset($page) && isset($pagesarray))
{
    $template->assign('activepage',$page);
    $template->assign('totalpages',$todo->recordcount);
    $template->assign('pagesarray',$pagesarray);
}

if (isset($logindata))
{
    $template->assign('logindata',$logindata);
}
$template->assign('user',$user);
$template->assign('usrcfg',$usrcfg);
$template->assign('action',$action);
$template->register_modifier('clearcomment','smarty_modifier_clearcomment');
$maintemplate = isset($logintemplate) ? $logintemplate : 'index.tpl';
$template->display($maintemplate);

function smarty_modifier_clearcomment($string)
{
    return preg_replace("/&#039;/",'',$string);
}
?>