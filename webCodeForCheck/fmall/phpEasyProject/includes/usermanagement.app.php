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

// Mülleimer für User-Formular wird zunächst auf 'unsichtbar' geschaltet.
$archivestyle = 'none';
if (empty($_SESSION['esortfield']))
{
    $_SESSION['esortfield'] = 'login';
}

$esortfield = !isset($_POST['esortfield']) ? $_SESSION['esortfield'] : $_POST['esortfield'];
$_SESSION['esortfield'] = $esortfield;

if (empty($_SESSION['esortorder']))
{
    $_SESSION['esortorder'] = 'ASC';
}

$esortorder = !isset($_POST['esortorder']) ? $_SESSION['esortorder'] : $_POST['esortorder'];
$_SESSION['esortorder'] = $esortorder;

if (empty($_SESSION['esearchstring']))
{
    $_SESSION['esearchstring'] = '';
}

$esearchstring = !isset($_POST['esearchstring']) ? $_SESSION['esearchstring'] : clearVars($_POST['esearchstring']);
$_SESSION['esearchstring'] = $esearchstring;

if (empty($_SESSION['estatus']))
{
    $_SESSION['estatus'] = -1;
}

$estatus = !isset($_POST['estatus']) ? $_SESSION['estatus'] : $_POST['estatus'];
$_SESSION['estatus'] = $estatus;

        $status_options = array( -1 => $dict['all_employees'],
                                  1 => $dict['enabled_only'],
                                  0 => $dict['disabled_only'] );

$employees = new employees();
        $xajax    = $xajax_todo->getJavascript('includes/xajax');
$empl_formvars = new employees_foo();

if (!empty($_POST['formsend']))
{
    /* Wenn das Eintrag gelöschet werden soll, dann brauchen wir
    * es zuerst nicht auf $_POST Variablen auswerten
    */
    if (!empty($_POST['deleteemployeedata']) && !empty($_POST['employeeid']))
    {
        if ($employees->isEmployeeDataDeletable($_POST['employeeid']))
        {
            if (!$employees->deleteEmplData($_POST['employeeid']))
            {
                $erg = $employees->getPostVars();
                $empl_formvars = $employees->employees_foo;
                if (!$erg)
                {
                    foreach ($employees->errors as $errnumber)
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }
        }
    }
    else
    {
        $erg = $employees->getPostVars();
        $empl_formvars = $employees->employees_foo;
        if (!$erg)
        {
            foreach ($employees->errors as $errnumber)
            $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
        }
        else
        {
            if (!$employees->saveRecord())
            {
                foreach ($employees->errors as $errnumber)
                $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
            }

            if (!empty($employees->employees_foo->empl_id))
            {
                $onLoadElement = ' onload="x_getEmplData('.$employees->employees_foo->empl_id.')"';
                $archivestyle = $employees->isEmployeeDataDeletable($employees->employees_foo->empl_id) ? 'inline' : 'none';
            }
        }
    }
}

$employeelist = $employees->GetList($esortfield,$esortorder,$esearchstring,$estatus);
$empl_formvars->position_options = array( APP_TRAINEE         => $dict['trainee'],
                                          APP_EMPLOYEE        => $dict['employee'],
                                          APP_PROJECT_MANAGER => $dict['project_manager'],
                                          APP_STORE_MANAGER   => $dict['store_manager'],
                                        );
$empl_id = isset($employees->employees_foo->empl_id) ? $employees->employees_foo->empl_id : $empl_formvars->empl_id;

if ($employees->getMemberProjects($empl_id))
{
    $empl_formvars->memberProjectListArray = $employees->memberProjectListArray;
}

if ($employees->getProjectList($empl_id))
{
    $empl_formvars->projectListArray = $employees->projectListArray;
}

$PageTitle = $dict['usermanagement'];
$ContentTPL = 'employees.tpl';
$JavaScript =<<<END
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