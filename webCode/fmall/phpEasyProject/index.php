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

require(ROOT_PATH.'includes/init.php');

/**
 * Initialize the todo class. If it fails then there is no reason to continue
 * and therefore send Server Error 500
 */
if (!$todo = new todo())
{
    header('HTTP/1.0 500 Internal Server Error');
}

if (isset($_COOKIE['todo']))
{
    /* Die ganze Filter-Einstellungen werden in Coockies serialisiert in einem
     * Wert für ein Jahr gespeichert.
     */
    $options_array = cookie_to_object($_COOKIE['todo']);
}
else
{
    $options_array['searchstring'] = '';
    $options_array['pr_id']        = -1;
    $options_array['prio']         = '';
    $options_array['status']       = -1;
    $options_array['sortfield']    = 'id';
    $options_array['sortorder']    = 'DESC';
    setcookie('todo',object_to_cookie($options_array),time()+60*60*24*365);
}

// Neue Filter-Daten, falls vorhanden, werden eingesetzt.
$searchstring = isset($_POST['searchstring'])  ? clearVars($_POST['searchstring'])  : $options_array['searchstring'];
$pr_id        = isset($_POST['projectnumber']) ? $_POST['projectnumber'] : $options_array['pr_id'];
$prio         = isset($_POST['prio'])          ? clearVars($_POST['prio'])          : $options_array['prio'];
$status       = isset($_POST['status'])        ? $_POST['status']        : $options_array['status'];
$sortfield    = isset($_POST['sortfield'])     ? $_POST['sortfield']     : $options_array['sortfield'];
$sortorder    = isset($_POST['sortorder'])     ? $_POST['sortorder']     : $options_array['sortorder'];

/**
 * Evtl. durch neue Filter-Einstelungen geänderte Daten werden erneut serialisiert
 * in Coockies gespeichert für ein weiteres Jahr
 */
$options_array['searchstring'] = $searchstring;
$options_array['pr_id']        = $pr_id;
$options_array['prio']         = $prio;
$options_array['status']       = $status;
$options_array['sortfield']    = $sortfield;
$options_array['sortorder']    = $sortorder;
setcookie('todo',object_to_cookie($options_array),time()+60*60*24*365);

// Der Benutzer soll ermittelt werden
if (!$user = new user())
{
    // Undefined users cannot use this programm
    header('HTTP/1.0 500 Internal Server Error');
    ob_flush();
}

if (isset($_POST['username']) && isset($_POST['password']))
{
    $autologin = isset($_POST['autologin']) ? true : false;
    $login = array($_POST['username'],md5($_POST['password']),$autologin);
}
elseif (!empty($_COOKIE['pep']))
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

// Beim Ausloggen wird alles leer gemacht
if (!empty($_POST['action']) && $_POST['action'] == 'logout')
{
    if (isset($_COOKIE['pep']))
    {
        setcookie('pep');
        unset($_COOKIE['pep']);
    }
    unset($_SESSION['pep']);
    $login = array('','',true);
}

// Das Login ist entscheidet für weitere Aktionen
if (!$user->login($login)) $_SESSION['action'] = 'login';

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


/**
 * Status list soll vorbereited werden
 */
$status_list = array('-1' => $dict['all_todos'],
                     '0'  => $dict['active_only'],
                     '99' => $dict['completed_only']
               );

/**
 * Jetzt müssen wir entscheiden was wir sehen möchten...
 */
// Zuerst schauen wir, wo wir schon gewesen sind...
$action = empty($_SESSION['action']) ? 'show todo list' : $_SESSION['action'];

// install exists ?
if (!DEVELOPMENT && is_dir('install'))
{
    $user->errors[] = 'err_416';
    $action = 'login';
    $user->empl_id = 0;
}

// Danach, ob wir schon nicht in eine andere Richtung gehen sollten...
if ($action != 'login')
{
    $action = empty($_POST['action']) ? $action : $_POST['action'];
    // Und jetzt merken wir uns unsere Seite...
    $_SESSION['action'] = $action;
}

if (empty($_SESSION['default_project_id']))
{
    if ($options_array['pr_id'] > 0)
    {
        $_SESSION['default_project_id'] = $options_array['pr_id'];
    }
    else
    {
        $_pr = new projects();
        $_SESSION['default_project_id'] = $_pr->get_first_project();
    }

}

// Auf dieser Stelle initialisieren wir allgemein gültige Variablen...
$JavaScript = '';

//Jetzt wird eigene Logik für bestimmte Seite hinzugefügt
switch ($action)
{
    case 'activity_acquisition':
        require('includes/taet.app.php');
    break;

    case 'projects':
        require('includes/projects.app.php');
    break;

    case 'projectposition':
        require('includes/projectposition.app.php');
    break;

    case 'usermanagement':
        require('includes/usermanagement.app.php');
    break;

    case 'archive':
        require('includes/todo.archive.app.php');
    break;

    case 'settings':
        require('includes/settings.app.php');
    break;

    case 'usersettings':
        require('includes/usrcfg.app.php');
    break;

    case 'help':
        require('includes/help.app.php');
    break;

    case 'logout':
    case 'login':
        if (empty($user->empl_id))
        {
            $PageTitle = $dict['loginform'];
            $logindata['username'] = $login[0];
            $logindata['checked']  = $login[2] === true ? ' checked="checked"' : '';
            if (!empty($user->errors))
            {
                foreach ($user->errors as $errnumber)
                {
                    $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
                }
            }
            $ContentTPL = 'login.tpl';
            $logintemplate = 'login.tpl';
            break;
        }
        else
        {
            $action = 'show todo list';
            $_SESSION['action'] = $action;
        }

    default:
        require('includes/todo.app.php');
}
require('includes/output.php');
?>