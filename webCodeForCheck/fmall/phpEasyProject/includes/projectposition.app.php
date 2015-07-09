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

// Unter Projektpositionen soll der zugehörige Projektnummer immer
// vorhanden sein. Deswegen in der $_SESSION gespeichert.
if (!isset($_SESSION['projectnr']))
{
    $_SESSION['projectnr'] = 0;
}

if (!empty($_POST['projectnr']))
{
    $_SESSION['projectnr'] = (int) $_POST['projectnr'];
}


// Mülleimer für Projektposition-Formular wird zunächst auf 'unsichtbar' geschaltet.
$archivestyle = 'none';

$projectposition = new projectposition();
$xajax    = $xajax_todo->getJavascript('includes/xajax');
$prpos_formvars = new projectposition_foo();

$projectname = $projectposition->getProjectName();
$prpos_formvars->prpos_project_id = $_SESSION['projectnr'];

if (!empty($_POST['formsend']))
{
    /* Wenn das Eintrag gelöschet werden soll, dann brauchen wir
    * es zuerst nicht auf $_POST Variablen auswerten
    */
    if (!empty($_POST['deleteprposdata']) && !empty($_POST['projectposid']))
    {
        if ($projectposition->isDeletable($_POST['projectposid']))
        {
            if (!$projectposition->delete($_POST['projectposid']))
            {
                $erg = $projectposition->getPostVars();
                $prpos_formvars = $projectposition->projectposition_foo;
                if (!$erg)
                {
                    foreach ($projectposition->errors as $errnumber)
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }
        }
    }
    else
    {
        $erg = $projectposition->getPostVars();
        $prpos_formvars = $projectposition->projectposition_foo;
        if (!$erg)
        {
            foreach ($projectposition->errors as $errnumber)
            $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
        }
        else
        {
            if (!$projectposition->saveRecord())
            {
                foreach ($projectposition->errors as $errnumber)
                $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
            }

            if (!empty($projectposition->projectposition_foo->prpos_id))
            {
                $onLoadElement = ' onload="x_getProjectPositionData('.$projectposition->projectposition_foo->prpos_id.')"';
                $archivestyle = $projectposition->isDeletable($projectposition->projectposition_foo->prpos_id) ? 'inline' : 'none';
                $prpos_formvars->projectposition_foo->prpos_id = $projectposition->projectposition_foo->prpos_id;
            }
        }
    }
}

$prpos_formvars->nodesArr = $projectposition->getNodes( $_SESSION['projectnr']);

$PageTitle  = $dict['projectpositions'];
$ContentTPL = 'projectposition.tpl';
$JavaScript =<<<END

<style type="text/css">
.folder {
  background: url(images/file.gif) no-repeat;
  float: left;
  height: 14px;
  width: 13px;
  padding-right: 4px;
  margin-left: 13px;
}

.tier1 { margin-left: 0; }
.tier2 { margin-left: 1.5em; }
.tier3 { margin-left: 3em; }
.tier4 { margin-left: 4.5em; }
.tier5 { margin-left: 6em; }
.tier6 { margin-left: 7.5em; }
.tier7 { margin-left: 9em; }
.tier8 { margin-left: 10.5em; }
.tier9 { margin-left: 12em; }

</style>

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