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

$taet = new taet();
$xajax = $xajax_todo->getJavascript('includes/xajax');

if (!empty($_POST['nextday']))
{
    $_SESSION['taetdate'] = $_POST['nextday'];
}

$formvars = new taet_foo();
$formvars->listDateShort = date(DATEFIELD,$formvars->taet_start);
$formvars->listDateFull  = strftime(FULLDATE,$formvars->taet_start);
$archivestyle = 'none';

if (!empty($_POST['formsend']))
{
    /* Wenn das Eintrag gelöschet werden soll, dann brauchen wir
     * es zuerst nicht auf $_POST Variablen auswerten
     */
    if (!empty($_POST['deletetaet']) && !empty($_POST['taetid']))
    {
        if (!$taet->delete($_POST['taetid']))
        {
            $erg = $taet->getPostVars();
            $formvars = $taet->taet_foo;
            $formvars->listDateShort = date(DATEFIELD,$formvars->taet_start);
            $formvars->listDateFull  = strftime(FULLDATE,$formvars->taet_start);
            if (!$erg)
            {
                foreach ($taet->errors as $errnumber)

                {
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }
        }
    }
    else
    {
        $erg = $taet->getPostVars();
        $formvars = $taet->taet_foo;
        $formvars->listDateShort = date(DATEFIELD,$formvars->taet_start);
        $formvars->listDateFull  = strftime(FULLDATE,$formvars->taet_start);
        if (!$erg)
        {
            foreach ($taet->errors as $errnumber)
            {
                $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
            }
        }
        else
        {
            if (!$taet->saveRecord())
            {
                foreach ($taet->errors as $errnumber)
                {
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }

            if (!empty($taet->taet_foo->taet_id))
            {
                $onLoadElement = ' onload="x_getTaetData('.$formvars->taet_id.')"';
                $archivestyle = 'inline';
            }
        }
    }
}

$membid = $user->empl_position < 100 ? $user->empl_id : 0;
$taet->getMemberProjects($membid);
if (empty($formvars->projectActive))
{
    $formvars->projectActive = empty($taet->taet_foo->taet_prpos_id) ?
                               0 :
                               $taet->getProjectIdByPrPos($taet->taet_foo->taet_prpos_id);
}
$formvars->projectsArray = $taet->projectsArray;

$projects = new projects();
$formvars->projects_options = $projects->getProjectsArr($dict);

$projectposition = new projectposition();
$formvars->projectpos_options = $projectposition->getNodes($formvars->projectActive);

$formvars->go_back = $formvars->taet_start - (60*60*24);
$formvars->go_forw = $formvars->taet_start + (60*60*24);

$timelist = $taet->getTaetTableList($formvars->taet_start,$user->empl_id);

$users[] = $user->empl_id;
$projectpos = array();

$formvars->statForThisDay = $taet->getStatistic($formvars->taet_start,$users,$projectpos);
$formvars->statForActlDay = $taet->getStatistic(time(),$users,$projectpos);

$formvars->expstart  = date(DATEFIELD,$formvars->statForThisDay['thisMonthStartTime']);
$formvars->expfinish = date(DATEFIELD,$formvars->statForThisDay['thisMonthFinishTime']);

$PageTitle = $dict['activity_acquisition'];
$ContentTPL = 'taet.tpl';
$JavaScript =<<<END

<link rel="stylesheet" type="text/css" media="all" href="./jscalendar/calendar-win2k-cold-1.css" title="win2k-cold-1" />
<script type="text/javascript" src="./jscalendar/calendar.js"></script>
<script type="text/javascript" src="./jscalendar/lang/calendar-{$language}.js"></script>
<script type="text/javascript" src="./jscalendar/calendar-setup.js"></script>

<script type="text/javascript">

var classStandard       = 'standard';

var classStandardDiv    = 'standarddiv';
var classStandardHover  = 'standardhoverdiv';

var classSelstandardDiv = 'selstandarddiv';
var classSelstandardHover = 'selstandardhover';


// Selected a row
function markThisDiv(id_number)
{
  var divNode = document.getElementById('div'+id_number);
  divNode.className = classSelstandardDiv;
  unmarkAllDivs(id_number);
}

// Privat function for markThis()
function unmarkAllDivs(id_number)
{
  var mainDivNode = document.getElementById('myDiv');

  for ( var i = 0; i < mainDivNode.childNodes.length ; i++ )
  {
    //  break for merket rows
    if (mainDivNode.childNodes[i].nodeType == 1 && mainDivNode.childNodes[i].id == 'div'+id_number)
        continue;
    if (mainDivNode.childNodes[i].nodeType == 1 && mainDivNode.childNodes[i].nodeName == 'DIV')
    {
        mainDivNode.childNodes[i].className = classStandardDiv;
    }
  }
}

// onMouseover...
function setHoverDiv(id_number)
{
  var divNode = document.getElementById('div'+id_number);
  if (divNode.className == classStandardDiv)
  {
    divNode.className = classStandardHover;
  }
  else if (divNode.className == classSelstandardDiv)
  {
    divNode.className = classSelstandardHover;
  }
}

// onMouseout ...
function setNormalDiv(id_number)
{
  var divNode = document.getElementById('div'+id_number);
  if (divNode.className == classStandardHover)
  {
    divNode.className = classStandardDiv;
  }
  else if (divNode.className == classSelstandardHover)
  {
    divNode.className = classSelstandardDiv;
  }
}
</script>
<script type="text/javascript" src="./scripts/todolist.js"></script>
END;
?>