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

require_once(ROOT_PATH.'includes/xajax/xajax.inc.php');
$xajax_todo = new xajax("todo.server.php");

$_wrapper = 'x_';

//$xajax_todo->debugOn();
//$xajax_todo->statusMessagesOn();
$xajax_todo->setWrapperPrefix($_wrapper);
$xajax_todo->registerFunction("changeStatus");
$xajax_todo->registerFunction("incStatusBar");
$xajax_todo->registerFunction("getFormData");
$xajax_todo->registerFunction("restoreToDo");
$xajax_todo->registerFunction("deleteToDo");
$xajax_todo->registerFunction("getOpenTodos");
$xajax_todo->registerFunction("clear_todo_id");

// Functions for Employees-Part
$xajax_todo->registerFunction("changeEmplStatus");
$xajax_todo->registerFunction("setNewProjectList");
$xajax_todo->registerFunction("setNewToDoList");
$xajax_todo->registerFunction("getEmplData");

// Functions for Project-Part
$xajax_todo->registerFunction("changeProjectStatus");
$xajax_todo->registerFunction("setNewMemberList");
$xajax_todo->registerFunction("getProjectData");

// Functions for Projectpositions
$xajax_todo->registerFunction("getProjectPositionData");
$xajax_todo->registerFunction("changeProjectPositionStatus");

// Functions for Activities
$xajax_todo->registerFunction("setNewPositionList");
$xajax_todo->registerFunction("getTaetData");
?>
