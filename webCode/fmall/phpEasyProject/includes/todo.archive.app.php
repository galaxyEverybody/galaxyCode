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

define('MAINTABLE','archive');
define('TABLE_PREFIX','arch_');
$projects = new projects();
$todo_formvars = new todo_foo();
$todo_formvars->projects_options = $projects->getProjectsArr($dict);
$todo_formvars->projects_options_with_all = $projects->getProjectsArr($dict,true,true);
$todo_formvars->status_list = $status_list;
$xajax = $xajax_todo->getJavascript('includes/xajax');

// Zuerst wird _SESSION Variable initialisiert, falls ist es noch nicht geschehen
$page_archive = isset($_SESSION['page_archive']) ? $_SESSION['page_archive'] : '';
// Danach wird sie aktualisiert mit neue $_POST - Werte, falls wiederum vorhanden
if (isset($_POST['page'])) $page_archive = $_POST['page'];
// Jetzt speichern aktueller Wert page_arhive in die Session
$_SESSION['page_archive'] = $page_archive;
// Jetzt kommz die Standard-Variable $page ins Spiel...
$page = $page_archive;

// Jetzt werden die Daten für ToDo-Liste ausgelesen.
$todolist = $todo->GetList($sortfield,$sortorder,$page,$searchstring,$pr_id,$prio,$status);

// Jetzt kommen letzte Vorbereitungen für Seiten-Ausgabe
if (empty($todo->pagescount)) $todo->pagescount = 1;
	       $_arr = '';
for ($i = 1; $i <= $todo->pagescount; $i++)
		  $_arr = empty($_arr) ? ''.$i : $_arr.', '.$i;
		eval("\$pagesarray = Array($_arr);");

$PageTitle = $dict['archive'];
$ContentTPL = 'todoarchive.tpl';
$JavaScript =<<<END
<script type="text/javascript">

var classStandard       = 'standard';
var classStandardhover  = 'standardhover';
var classNumber = 'number';
var classNumberhover    = 'numberhover';
var classStandardcompleted      = 'standardcompleted';
var classStandardhovercompleted = 'standardhovercompleted';
var classNumbercompleted= 'numbercompleted';
var classNumberhovercompleted   = 'numberhovercompleted';
var classSelnumberstandard      = 'selnumberstandard';
var classSelnumbercompleted     = 'selnumbercompleted';
var classSelstandard    = 'selstandard';
var classSelcompleted   = 'selcompleted';

</script>
<script type="text/javascript" src="./scripts/todolist.js"></script>


END;
?>