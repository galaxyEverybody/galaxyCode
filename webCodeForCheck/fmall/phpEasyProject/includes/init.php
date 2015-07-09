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
if (!defined('ROOT_PATH'))
{
    define('ROOT_PATH','');
}

if (!is_file(ROOT_PATH.'config/config.php'))
{
    header('Location: install/');
    die();
}
require(ROOT_PATH.'config/config.php');

// This request is for future use of mysqli - functions from PHP
$mysql = substr(phpversion(),0,1) == '5' ? 'mysql' : 'mysql';

switch (DATABASETYPE)
{
    case 'mysql3':
        define('DBTYPE','mysql');
    break;

    case 'mysql4':
        define('DBTYPE',$mysql);
    break;

    default:
        define('DBTYPE',$mysql);
    break;
}

/**
 * Setting the PHP option 'include_path' to the local PEAR path
 * to avoid collisions with the global PEAR installation, if there is one
 */
ini_set('include_path', GetRP() . '/includes/' . PATH_SEPARATOR . ini_get('include_path'));

require('DB.php'); // PEAR DB
require('define.php');
require('sql.class.php');
require('user.class.php');
require('usrcfg.class.php');
require('taet.class.php');
require('todo.class.php');
require('employees.class.php');
require('projects.class.php');
require('projectposition.class.php');
require('todo.common.php');
require('settings.class.php');
require('functions.php');

define('SMARTY_DIR',ROOT_PATH.'Smarty/libs/');
require(SMARTY_DIR.'Smarty.class.php');
require(ROOT_PATH.'template.class.php');

session_start();
ob_start();
header('Content-Type: text/html; charset=utf-8');

/**
 * Get absolute real path
 *
 * @return String
 */
function GetRP()
{
	$sRealPath = realpath('./');
	if (strlen($sRealPath) > 0)
	{
		// for Windows based systems
		$sRealPath = preg_replace('/\\\/','/',$sRealPath);
		$sRealPath = addslashes($sRealPath);
	}
	else // if realpath fails then use another approach
	{
		$sRealPath = $_SERVER['SCRIPT_FILENAME'] ;
		// for Windows based systems
		$sRealPath = preg_replace('/\\\/','/',$sRealPath);
		$sRealPath = addslashes($sRealPath);
		if (substr($sRealPath,-1) != '/')
		{
			$sRealPath = substr($sRealPath, 0, strrpos($sRealPath, '/'));
		}
	}

	/* These part won't work if the whole project resides in the user's
	   public_html folder and is accessed by http://hostname/~user/phpEasyProject
	   But we don't need it really because we don't have files in subfolders.
	   Affected files reside already in the rootPath ('./')
	   /index.php
	   /500.php
       /404.php
	   /export.php
	   /todo.server.php
	*/
	// the following code is commented out for now but should be removed
	// if it works under Windows based systems
	/*
	if (defined('WEBROOT_PATH'))
	{
		$zusatz = substr(WEBROOT_PATH,-1) == '/' ? 1 : 0;
		$sSelfPath = substr($sSelfPath,-(strlen($sSelfPath)-strlen(WEBROOT_PATH))-$zusatz);
	}

	$RootPath = substr( $sRealPath, 0, strlen( $sRealPath ) - strlen( $sSelfPath ) ) ;

	return  getenv('DOCUMENT_ROOT');
	*/

	$RootPath = $sRealPath;
	if (preg_match('/:/',$RootPath)) { 	// for Windows based systems
		$RootPath = preg_replace('/\//','\\\\', $RootPath);
	}

	return $RootPath;
}

?>