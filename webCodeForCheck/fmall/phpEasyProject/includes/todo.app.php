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

global $dict, $user, $language, $options_array;
define('MAINTABLE','todolist');
define('TABLE_PREFIX','todo_');
$projects = new projects();
$todo_formvars = new todo_foo();
$todo_formvars->todo_pr_id    = $_SESSION['default_project_id']; // In coockies saved value
$todo_formvars->todo_warndiff = 86400; // Default 1 day
        $xajax = $xajax_todo->getJavascript('includes/xajax');

if (!empty($_POST['formsend']))
{
    if ($todo->getPostVars())
    {
        if (!$todo->saveRecord())
        {
            foreach ($todo->errors as $errnumber)
            {
                if (!empty($_POST['movefield']))
                {
                    break;
                }
                $errors[] = $errnumber == 'err_102' ?
                            sprintf($dict[$errnumber],$todo->_tmp_pr_name):
                            $dict[$errnumber];
            }
        }

        if (!empty($_SESSION['edit_todo_id']) && !empty($_POST['movefield']))
        {
            if (!$todo->moveToArchive($_SESSION['edit_todo_id']))
            {
                foreach ($todo->errors as $errnumber)
                $errors[] = $dict[$errnumber];
            }
            else
            {
                $todo = new todo();
                $todo_formvars = new todo_foo();
                $_SESSION['edit_todo_id'] = 0;
                unset($_SESSION['edit_todo_id']);
            }
        }


        if (!empty($todo->todo_foo->todo_id))
        {
            if (!empty($_SESSION['edit_todo_id']))
            {
                $options_array['sortfield']    = 'id';
                $options_array['sortorder']    = 'DESC';
                setcookie('todo',object_to_cookie($options_array),time()+60*60*24*365);
                $sortfield = $options_array['sortfield'];
                $sortorder = $options_array['sortorder'];
            }

            $onLoadElement = ' onload="x_getFormData('.$todo->todo_foo->todo_id.','.$user->empl_id.')"';
        }
    }
    else
    {
        foreach ($todo->errors as $errnumber)
        {
            $errors[] = $dict[$errnumber];
        }
    }
}

// Hier kommt die Differenzzeit in sekunden für die Warnung vor dem Ablauf
$todo_formvars->warndiff_options = array( 0       => $dict['none'],
                                          86400   => $dict['1day'],
                                          172800  => $dict['2days'],
                                          259200  => $dict['3days'],
                                          345600  => $dict['4days'],
                                          432000  => $dict['5days'],
                                          604800  => $dict['1week'],
                                          1209600 => $dict['2weeks']
                                        );
$todo_formvars->projects_options = $projects->getProjectsArr($dict);
$todo_formvars->projects_options_with_all = $projects->getProjectsArr($dict,false,true);
$todo_formvars->status_list = $status_list;

// Zuerst wird _SESSION Variable initialisiert, falls ist es noch nicht geschehen
$page_todo = isset($_SESSION['page_todo']) ? $_SESSION['page_todo'] : '';

// Danach wird sie aktualisiert mit neue $_POST - Werte, falls wiederum vorhanden
if (isset($_POST['page']))
{
    $page_todo = $_POST['page'];
}

// Jetzt speichern aktueller Wert page_todo in die Session
$_SESSION['page_todo'] = $page_todo;

// Jetzt kommz die Standard-Variable $page ins Spiel...
$page = $page_todo;

// Jetzt werden die Daten für ToDo-Liste ausgelesen.
$todolist = $todo->GetList($sortfield,$sortorder,$page,$searchstring,$pr_id,$prio,$status);

// Jetzt kommen letzte Vorbereitungen für Seiten-Ausgabe
if (empty($todo->pagescount))
{
    $todo->pagescount = 1;
}

if (!isset($_SESSION['selected_todo_id']))
{
    $_SESSION['selected_todo_id'] = 0;
}

$formvars->taet_todo_id = $_SESSION['selected_todo_id'];

$_arr = '';

for ($i = 1; $i <= $todo->pagescount; $i++)
{
    $_arr = empty($_arr) ? ''.$i : $_arr.', '.$i;
}

eval("\$pagesarray = Array($_arr);");

$PageTitle = $dict['todolist'];
$ContentTPL = 'todolist.tpl';
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