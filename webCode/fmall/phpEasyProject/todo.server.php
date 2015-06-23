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
define('ROOT_PATH','');
define('MAINTABLE','todolist');
define('TABLE_PREFIX','todo_');

require(ROOT_PATH.'includes/init.php');

// Der Benutzer soll ermittelt werden
if (!$user = new user())
{
    // Undefined users cannot use this programm
    header('HTTP/1.0 500 Internal Server Error');
    ob_flush();
}

if (!empty($_COOKIE['pep']))
{
    $login = cookie_to_object($_COOKIE['pep']);
}
elseif (!empty($_SESSION['pep']))
{
    $login = cookie_to_object($_SESSION['pep']);
}
else
{
    $login = array('','',true);
}

if (!$user->login($login)) die('Unauthorized access');

// Die Configurationsparameter werden festgesetzt

if (!$usrcfg = new usrcfg())
{
    header('HTTP/1.0 500 Internal Server Error');
    ob_flush();
}
elseif (!$usrcfg->initCfgVars($user->empl_id))
{
    header('HTTP/1.0 500 Internal Server Error');
    ob_flush();
}


if (empty($usrcfg->language))
{
    $language = DEFAULTLANGUAGE;
}
else
{
    $language = $usrcfg->language;
}

require_once(ROOT_PATH.'includes/lang/'.$language.'.php');

$objResponse = new xajaxResponse();

function changeStatus($todo_id,$empl_id,$setChecked=0)
{
    global $objResponse;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($todo->switchStatus($todo_id,$empl_id))
        {
            $objResponse->addScript("switchStatus($todo_id)");
        }
    }

    if ($obj = $todo->initToDoById($todo_id))
    {
        $flag = $todo->getToDoWarnIndex($obj);
        switch ($flag)
        {
            case 5:
                $img = 'status_green.gif';
                break;

            case 4:
                $img = 'status_yellow.gif';
                break;

            case 3:
                $img = 'status_blink_yellow.gif';
                break;

            case 2:
                $img = 'status_red.gif';
                break;

            case 1:
                $img = 'status_blue.gif';
                break;

            default:
                $img = 'status_gray.gif';
        }
        $objResponse->addAssign("status".$todo_id,"src","images/".$img);
        if ($setChecked > 0)
        {
            $removeflag = empty($obj->todo_status) ? 1 : 0;
            $objResponse->addScript("setChecked($todo_id,$removeflag)");
        }

        if (!empty($_SESSION['edit_todo_id']) && $_SESSION['edit_todo_id'] == $todo_id)
        {
            $todoagreed = empty($obj->todo_status) ? false : true;
            $objResponse->addAssign('todoagreed','checked',$todoagreed);
        }
    }
    return $objResponse->getXML();
}

function incStatusBar($todo_id,$empl_id)
{
    global $objResponse;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($todo->incStatusBar($todo_id,$empl_id))
        {
            switch($todo->newStatusBar)
            {
                case 0:
                    $title = '0%';
                    break;

                case 1:
                    $title = '25%';
                    break;

                case 2:
                    $title = '50%';
                    break;

                case 3:
                    $title = '75%';
                    break;

                case 4:
                    $title = '100%';
                    break;

                default:
                    $title = '0%';

            }
            $objResponse->addAssign("statusbar".$todo_id,"src","images/s".$todo->newStatusBar.".png");
            $objResponse->addAssign("statusbar".$todo_id,"title",$title);
            if (!empty($_SESSION['edit_todo_id']) && $_SESSION['edit_todo_id'] == $todo_id)
            {
                $objResponse->addScript("setDegreeOfComplete($todo->newStatusBar)");
            }

        }
    }

    return $objResponse->getXML();
}

function restoreToDo($todo_id)
{
    global $objResponse;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($todo->restoreFromArchive($todo_id))
        {
            $objResponse->addRemove("tr".$todo_id);
        }
    }

    return $objResponse->getXML();
}

function deleteToDo($todo_id)
{
    global $objResponse;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($todo->deleteFromArchive($todo_id))
        {
            $objResponse->addRemove("tr".$todo_id);
        }
    }

    return $objResponse->getXML();
}

function getFormData($todo_id,$empl_id)
{
    global $objResponse, $dict;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    elseif ($obj = $todo->initToDoById($todo_id))
    {
        $_SESSION['edit_todo_id'] = (int) $todo_id;
        // $objResponse->addAssign('errdiv','innerHTML','');
        $objResponse->addScript("markThis($todo_id)");
        $objResponse->addAssign('todotitle','value',$obj->todo_title);
        $objResponse->addScript('setProjectSelected('.$obj->todo_pr_id.')');
        $objResponse->addAssign('todostart','value',$obj->show_start);
        $objResponse->addAssign('todofinish','value',$obj->show_finish);

        $todoagreed = empty($obj->todo_status) ? false : true;
        $objResponse->addAssign('todoagreed','checked',$todoagreed);
        if ($empl_id == $obj->todo_inserted_from)
        {
            $objResponse->addAssign('divprivat','style.display','inline');
            $todoprivat = empty($obj->todo_privat) ? false : true;
            $objResponse->addAssign('todoprivat','checked',$todoprivat);
        }
        else
        {
            $objResponse->addAssign('divprivat','style.display','none');
        }
        $objResponse->addScript('setDegreeOfComplete('.$obj->todo_statusbar.')');

        $objResponse->addScript('setDifference('.$obj->todo_warndiff.')');

        //$objResponse->addClear('todocomment');
        $objResponse->addAssign('todocomment','value',$obj->todo_comment);
        $objResponse->addAssign('moveintoarchive','style.display','inline');
        $objResponse->addAssign('todoprio','value',$obj->todo_prio);
        $objResponse->addAssign('todocreated','innerHTML',
            $dict['created'].':<br />'.$obj->todo_inserted_s.'<br />'.$obj->show_inserted_name);
        $objResponse->addAssign('todochanged','innerHTML',
            $dict['changed'].':<br />'.$obj->todo_changed_s.'<br />'.$obj->show_changed_name);
        $objResponse->addScript("setFormTitle('".$dict['todoedit']."')");
    }

    return $objResponse->getXML();
}

function clear_todo_id()
{
    global $objResponse;
    $_SESSION['edit_todo_id'] = 0;
    unset($_SESSION['edit_todo_id']);
    return $objResponse->getXML();
}

function getOpenTodos($pr_id,$empl_id)
{
    global $objResponse, $dict;
    if (!$todo = new todo())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        $openToDos = $todo->getOpenTodos($pr_id,$empl_id);
        $objResponse->addScript('xMovie('.$openToDos.",'".sprintf($dict['EmployeeHasOpenTodo'],$openToDos)."')");
    }

    return $objResponse->getXML();
}

function getEmplData($empl_id)
{
    global $objResponse, $dict;
    if (!$employees = new employees())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    elseif ($obj = $employees->initEmployeeById($empl_id))
    {
        $objResponse->addScript("markThis($empl_id)");
        $objResponse->addAssign('employeeid','value',$empl_id);
        $objResponse->addAssign('employeelogin','value',$obj->empl_login);
        $objResponse->addAssign('employeesurname','value',$obj->empl_surname);
        $objResponse->addAssign('employeefirstname','value',$obj->empl_firstname);
        $objResponse->addScript('setPositionSelected('.$obj->empl_position.')');

        $todoagreed = empty($obj->empl_status) ? false : true;
        $objResponse->addAssign('employeeaktive','checked',$todoagreed);

        //$objResponse->addClear('todocomment');
        $objResponse->addAssign('employeecomment','value',$obj->empl_comment);
        $objResponse->addAssign('employeecreated','innerHTML',
            $dict['created'].':<br />'.$obj->show_added.'<br />'.$obj->show_added_name);
        $objResponse->addAssign('employeechanged','innerHTML',
            $dict['changed'].':<br />'.$obj->show_changed.'<br />'.$obj->show_changed_name);
        $objResponse->addScript("setFormTitle('".$dict['employeeedit']."')");

        $objResponse->addScript("clearSelection('list1')");
        $objResponse->addScript("clearSelection('list2')");
        foreach ($employees->memberProjectListArray as $pr_id=>$pr_name)
            $objResponse->addScript("addOption('list1','".$pr_name."','".$pr_id."')");
        foreach ($employees->projectListArray as $pr_id=>$pr_name)
            $objResponse->addScript("addOption('list2','".$pr_name."','".$pr_id."')");
        if ($employees->isEmployeeDataDeletable($empl_id))
            $objResponse->addAssign('removeemployeedata','style.display','inline');
        else
            $objResponse->addAssign('removeemployeedata','style.display','none');
    }

    return $objResponse->getXML();
}

function changeEmplStatus($empl_id,$ch_empl_id)
{
    global $objResponse;
    if (!$employees = new employees())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($employees->switchStatus($empl_id,$ch_empl_id))
        {
            $objResponse->addScript("switchStatus($empl_id)");
            $objResponse->addScript("setFormNewStatus($empl_id,$employees->newStatus)");
        }
    }
    return $objResponse->getXML();
}

function setNewProjectList()
{
    global $objResponse, $dict;
    if (!$employees = new employees())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }

    $objResponse->addScript("clearSelection('list1')");
    $objResponse->addScript("clearSelection('list2')");

    if ($employees->getProjectList())
    {
        foreach ($employees->projectListArray as $pr_id=>$pr_name)
            $objResponse->addScript("addOption('list2','".$pr_name."','".$pr_id."')");
    }

    return $objResponse->getXML();
}

function getProjectData($pr_id)
{
    global $objResponse, $dict;
    if (!$projects = new projects())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    elseif ($obj = $projects->initById($pr_id))
    {
        $_SESSION['default_project_id'] = (int) $pr_id;
        // $objResponse->addAssign('errdiv','innerHTML','');
        $objResponse->addScript("markThis($pr_id)");
        $objResponse->addAssign('projectid','value',$pr_id);
        $objResponse->addAssign('projectname','value',$obj->pr_name);

        $projectstatus = empty($obj->pr_status) ? false : true;
        $objResponse->addAssign('projectstatus','checked',$projectstatus);

        $objResponse->addAssign('projectcomment','value',$obj->pr_comment);
        $objResponse->addAssign('projectcreated','innerHTML',
            $dict['created']. ':<br />' . $obj->show_created . '<br />' . $obj->show_created_name);
        $objResponse->addAssign('projectchanged','innerHTML',
            $dict['changed']. ':<br />' . $obj->show_changed . '<br />' . $obj->show_changed_name);
        $objResponse->addScript("setFormTitle('".$dict['projectedit']."')");

        $objResponse->addScript("clearSelection('list1')");
        $objResponse->addScript("clearSelection('list2')");

        foreach ($projects->membersInProjectArray as $empl_id=>$empl_fullname)
            $objResponse->addScript("addOption('list1','".$empl_fullname."','".$empl_id."')");

        foreach ($projects->membersArray as $empl_id=>$empl_fullname)
            $objResponse->addScript("addOption('list2','".$empl_fullname."','".$empl_id."')");

        if ($projects->isDeletable($pr_id))
            $objResponse->addAssign('removeprojectdata','style.display','inline');
        else
            $objResponse->addAssign('removeprojectdata','style.display','none');

        $objResponse->addAssign('copyimage','style.display','inline');
    }

    return $objResponse->getXML();
}

function setNewMemberList()
{
    global $objResponse, $dict;
    if (!$projects = new projects())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }

    $objResponse->addScript("clearSelection('list1')");
    $objResponse->addScript("clearSelection('list2')");
    if ($projects->getMembersList())
    {
        foreach ($projects->membersArray as $empl_id=>$empl_fullname)
            $objResponse->addScript("addOption('list2','".$empl_fullname."','".$empl_id."')");
    }

    return $objResponse->getXML();
}

function changeProjectStatus($pr_id,$empl_id)
{
    global $objResponse;
    if (!$projects = new projects())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($projects->switchStatus($pr_id,$empl_id))
        {
            $objResponse->addScript("switchStatus($pr_id)");
            $objResponse->addScript("setFormNewStatus($pr_id,$projects->newStatus)");
        }
    }
    return $objResponse->getXML();
}

function getProjectPositionData($prpos_id)
{
    global $objResponse, $dict;
    if (!$projectposition = new projectposition())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    elseif ($obj = $projectposition->initById($prpos_id))
    {
       $objResponse->addScript("markThis($prpos_id)");
       // $objResponse->addAssign('errdiv','innerHTML','');
       $objResponse->addAssign('projectposid','value',$prpos_id);
       $objResponse->addAssign('projectposition','value',$obj->prpos_name);
       $objResponse->addAssign('prposcomment','value',$obj->prpos_comment);

       $projectstatus = empty($obj->prpos_status) ? false : true;
       $objResponse->addAssign('prposstatus','checked',$projectstatus);

       $objResponse->addScript("setProjectPosSelected($prpos_id)");

       $objResponse->addAssign('prposcreated','innerHTML',
            $dict['created']. ':<br />' . $obj->show_created . '<br />' . $obj->show_created_name);
       $objResponse->addAssign('prposchanged','innerHTML',
            $dict['changed']. ':<br />' . $obj->show_changed . '<br />' . $obj->show_changed_name);
       $objResponse->addScript("setFormTitle('".$dict['prposedit']."')");

       if ($projectposition->isDeletable($prpos_id))
           $objResponse->addAssign('removeprposdata','style.display','inline');
       else
           $objResponse->addAssign('removeprposdata','style.display','none');
    }

    return $objResponse->getXML();
}

function changeProjectPositionStatus($prpos_id,$empl_id)
{
    global $objResponse;
    if (!$projectposition = new projectposition())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        if ($projectposition->switchStatus($prpos_id,$empl_id))
        {
            $objResponse->addScript("switchStatus($prpos_id)");
            $objResponse->addScript("setFormNewStatus($prpos_id,$projectposition->newStatus)");
        }
    }
    return $objResponse->getXML();
}

function setNewPositionList($pr_id,$prpos_id)
{
    global $objResponse;
    if (!$projectposition = new projectposition())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        $_SESSION['default_project_id'] = $pr_id;
        $nodesArr = $projectposition->getNodes($_SESSION['default_project_id']);
        $objResponse->addScript("clearSelection('projectposid')");
        foreach ($nodesArr as $prpos)
        {
            $vorsatz = $prpos->level > 0 ? str_repeat('¤',$prpos->level) : '';
            $status = $prpos->prpos_status;
            $objResponse->addScript("addOption('projectposid','{$vorsatz}{$prpos->prpos_name}',$prpos->prpos_id,$prpos_id,$status)");
        }
    }
    return $objResponse->getXML();
}

function setNewToDoList($prpos_id,$selected_todo_id)
{
    global $objResponse;
    if (!$projectposition = new projectposition())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    else
    {
        $_SESSION['selected_todo_id']  = (int) $selected_todo_id;
        $_SESSION['selected_prpos_id'] = (int) $prpos_id;
        $nodesArr = $projectposition->getNodes($_SESSION['default_project_id']);
        $objResponse->addScript("clearSelection('todoid')");
        foreach ($nodesArr as $prpos)
        {
            $status = $prpos->prpos_status;
            $objResponse->addScript("addOption('todoid','{$prpos->prpos_name}',$prpos->prpos_id,$prpos_id,$status)");
        }
    }
    return $objResponse->getXML();
}

function getTaetData($taet_id)
{
    global $objResponse, $dict;
    if (!$taet = new taet())
    {
        header('HTTP/1.0 500 Internal Server Error');
    }
    elseif ($obj = $taet->initById($taet_id))
    {
        $objResponse->addAssign('taetid','value',$taet_id);
        $objResponse->addAssign('activitydescription','value',$obj->taet_short_desc);
        $objResponse->addAssign('description','value',$obj->taet_full_desc);

        $objResponse->addScript("setNewDefaultOption('projectid', $obj->projectActive)");

        $pr_id = $taet->getProjectIdByPrPos($obj->taet_prpos_id);

        if (!$projectposition = new projectposition())
        {
            header('HTTP/1.0 500 Internal Server Error');
            ob_flush();
        }
        else
        {
            $_SESSION['projectnr'] = $pr_id;
            $nodesArr = $projectposition->getNodes($pr_id);
            $objResponse->addScript("clearSelection('projectposid')");
            foreach ($nodesArr as $prpos)
            {
                $vorsatz = $prpos->level > 0 ? str_repeat('¤',$prpos->level) : '';
                $status = $prpos->prpos_status == 0 ? 0 : 1;
                $objResponse->addScript("addOption('projectposid','{$vorsatz}{$prpos->prpos_name}',$prpos->prpos_id,$obj->taet_prpos_id,$status)");
            }
        }
        $objResponse->addScript("setNewDefaultOption('projectposid', $obj->taet_prpos_id)");

        $objResponse->addAssign('taetdate','value',$obj->show_taetdate);

        if ($obj->fhourActive < 1 && $obj->sminActive >= $obj->fminActive)
        {
            $obj->fhourActive = 24;
        }

        $objResponse->addScript("setNewDefaultOption('shour','$obj->shourActive')");
        $objResponse->addScript("setNewDefaultOption('smin' ,'$obj->sminActive')");
        $objResponse->addScript("setNewDefaultOption('dhour','$obj->dhourActive')");
        $objResponse->addScript("setNewDefaultOption('dmin' ,'$obj->dminActive')");
        $objResponse->addScript("setNewDefaultOption('fhour','$obj->fhourActive')");
        $objResponse->addScript("setNewDefaultOption('fmin' ,'$obj->fminActive')");

        // $objResponse->addAssign('errdiv','innerHTML','');

        $objResponse->addAssign('created','innerHTML',
            $dict['created']. ':<br />' . $obj->show_created . '<br />' . $obj->show_created_name);
        $objResponse->addAssign('changed','innerHTML',
            $dict['changed']. ':<br />' . $obj->show_changed . '<br />' . $obj->show_changed_name);
        $objResponse->addScript("setFormTitle('".$dict['activityedit']."')");


        $objResponse->addAssign('remove','style.display','inline');
        $objResponse->addScript("markThisDiv($taet_id)");
    }

    return $objResponse->getXML();
}

$xajax_todo->processRequests();

?>