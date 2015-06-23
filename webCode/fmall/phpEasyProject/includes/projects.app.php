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

// Mülleimer für Projekt-Formular wird zunächst auf 'unsichtbar' geschaltet.
$archivestyle = 'none';
$copystyle    = empty($_POST['projectid']) ?  'none' : 'inline';

if (empty($_SESSION['psortfield']))
{
    $_SESSION['psortfield'] = 'login';
}

$psortfield = !isset($_POST['psortfield']) ? $_SESSION['psortfield'] : $_POST['psortfield'];
$_SESSION['psortfield'] = $psortfield;

if (empty($_SESSION['psortorder'])) $_SESSION['psortorder'] = 'ASC';
$psortorder = !isset($_POST['psortorder']) ? $_SESSION['psortorder'] : $_POST['psortorder'];
$_SESSION['psortorder'] = $psortorder;

if (empty($_SESSION['psearchstring'])) $_SESSION['psearchstring'] = '';
$psearchstring = !isset($_POST['psearchstring']) ? $_SESSION['psearchstring'] : clearVars($_POST['psearchstring']);
$_SESSION['psearchstring'] = $psearchstring;

if (empty($_SESSION['pstatus'])) $_SESSION['pstatus'] = 1;
$pstatus = !isset($_POST['pstatus']) ? $_SESSION['pstatus'] : $_POST['pstatus'];
$_SESSION['pstatus'] = $pstatus;

$status_options = array( -1 => $dict['all_projects'],
1 => $dict['pr_enabled_only'],
0 => $dict['pr_disabled_only'] );

$projects = new projects();
        $xajax    = $xajax_todo->getJavascript('includes/xajax');
$pr_formvars = new project_foo();

if (!empty($_POST['formsend']))
{
    /* Wenn das Eintrag gelöschet werden soll, dann brauchen wir
    * es zuerst nicht auf $_POST Variablen auswerten
    */
    if (!empty($_POST['deleteprojectdata']) && !empty($_POST['projectid']))
    {
        if ($projects->isDeletable($_POST['projectid']))
        {
            if (!$projects->deleteProject($_POST['projectid']))
            {
                $erg = $projects->getPostVars();
                $pr_formvars = $projects->project_foo;
                if (!$erg)
                {
                    foreach ($projectid->errors as $errnumber)
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }
            $copystyle = 'none';
        }
    }
    elseif (!empty($_POST['copyprojectdata']) && !empty($_POST['projectid']))
    {
        if (!$projects->copyProject($_POST['projectid']))
        {
            $pr_formvars = $projects->project_foo;
            if (!empty($projectid->errors))
            {
                foreach ($projectid->errors as $errnumber)
                $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
            }
        }
        else
        {
            $onLoadElement = ' onload="x_getProjectData('.$projects->project_foo->pr_id.')"';
        }
    }
    else
    {
        $erg = $projects->getPostVars();
        $pr_formvars = $projects->project_foo;
        if (!$erg)
        {
            foreach ($projects->errors as $errnumber)
            $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
        }
        else
        {
            if (!$projects->saveRecord())
            {
                foreach ($projects->errors as $errnumber)
                $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
            }

            if (!empty($projects->project_foo->pr_id))
            {
                $onLoadElement = ' onload="x_getProjectData('.$projects->project_foo->pr_id.')"';
                $archivestyle = $projects->isDeletable($projects->project_foo->pr_id) ? 'inline' : 'none';
            }
        }
    }
}

if (isset($_POST['projectidfromposition']))
{
    $projects->project_foo = new project_foo();
    $projects->project_foo->pr_id = $_POST['projectidfromposition'];
    $onLoadElement = ' onload="x_getProjectData('.$projects->project_foo->pr_id.')"';
    $archivestyle = $projects->isDeletable($projects->project_foo->pr_id) ? 'inline' : 'none';
}

$projectlist = $projects->GetList($psortfield,$psortorder,$psearchstring,$pstatus);
$pr_id = isset($projects->project_foo->pr_id) ? $projects->project_foo->pr_id : $pr_formvars->pr_id;
if ($projects->getMembersInProject($pr_id))
$pr_formvars->membersInProjectArray = $projects->membersInProjectArray;
if ($projects->getMembersList($pr_id))
$pr_formvars->membersArray = $projects->membersArray;

$membid = $user->empl_position < 100 ? $user->empl_id : 0;
$taet = new taet();
$taet->getMemberProjects($membid);
$formvars->projectsArray = $taet->projectsArray;

$timestamp = time();
$thisMonth  = (int) date('m',$timestamp);
$thisYear   = (int) date('Y',$timestamp);
$lastDayOfMonth = (int) date('t',$timestamp);
$startThisMonth = mktime(0,0,0,$thisMonth,1,$thisYear);
$finishThisMonth = mktime(23,59,59,$thisMonth,$lastDayOfMonth,$thisYear);
$formvars->expstart  = date(DATEFIELD,$startThisMonth);
$formvars->expfinish = date(DATEFIELD,$finishThisMonth);

$PageTitle = $dict['projectmanagement'];
$ContentTPL = 'projects.tpl';
$JavaScript =<<<END

<link rel="stylesheet" type="text/css" media="all" href="./jscalendar/calendar-win2k-cold-1.css" title="win2k-cold-1" />
<script type="text/javascript" src="./jscalendar/calendar.js"></script>
<script type="text/javascript" src="./jscalendar/lang/calendar-{$language}.js"></script>
<script type="text/javascript" src="./jscalendar/calendar-setup.js"></script>

<script type="text/javascript">

var classStandard               = 'standard';
var classStandardhover          = 'standardhover';
var classNumber                 = 'number';
var classNumberhover            = 'numberhover';
var classStandardcompleted      = 'standardcompleted';
var classStandardhovercompleted = 'standardhovercompleted';
var classNumbercompleted        = 'numbercompleted';
var classNumberhovercompleted   = 'numberhovercompleted';
var classSelnumberstandard      = 'selnumberstandard';
var classSelnumbercompleted     = 'selnumbercompleted';
var classSelstandard            = 'selstandard';
var classSelcompleted           = 'selcompleted';

</script>
<script type="text/javascript" src="./scripts/todolist.js"></script>
END;
?>