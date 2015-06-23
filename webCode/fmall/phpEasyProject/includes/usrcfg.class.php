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

class usrcfg extends SQL
{
    var $starthour  = 9;
    var $startmin   = 0;
    var $durhour    = 2;
    var $durmin     = 0;
    var $finishhour = 18;
    var $finishmin  = 0;
    var $minstep    = 15;
    var $language   = 'en';
    var $cfg_usr_id = 0;
    var $build                  = '';
    var $version                = '';

    var $dsn               = '';
	var $errors            = array();
	var $errors_id         = array();
	var $connected         = false;

	function __construct()
	{
	    if ( defined('DBTYPE') &&
             defined('DBUSER') &&
             defined('DBPASSWORD') &&
             defined('DBHOST') &&
             defined('DBNAME') )
        {
            $this->dsn = ''.DBTYPE.'://'.DBUSER.':'.DBPASSWORD.'@'.DBHOST.'/'.DBNAME;
        }

        if ( !$this->db_connect() )
		{
		    die ('Application Error');
		}

		$this->language = DEFAULTLANGUAGE;
		$this->getLanguages();
		$this->getBuild();

		if ($this->error)
		{
		    error_log($this->error);
		    return false;
		}
		else
		{
		    return true;
		}
	}

	/**
	 * Construct
	 *
	 * @return usrcfg
	 */
	function usrcfg()
	{
	    $this->__construct();
	}

	/**
	 * Connect to database
	 *
	 * @return boolean true if successful
	 */
	function db_connect()
	{
	    if ( $this->connected )
        {
            return true;
        }

        if ( !$this->dsn )
        {
            $this->errors_id[] = APP_CLOSED;
            return false;
        }

        $this->SQL();
		$this->connect($this->dsn);

		if ( $this->error )
		{
            $this->errors[] = $this->error;
            return false;
        }
        $this->connected = true;
        return true;
	}

    /**
     * Check Post-Vars und Data Validation
     *
     * @return Boolean
     */
	function getPostVars ()
    {
        $event = true;
        $this->starthour    = $_POST['starthour'];
        $this->startmin     = $_POST['startmin'];
        $this->durhour      = $_POST['durhour'];
        $this->durmin       = $_POST['durmin'];
        $this->finishhour   = $_POST['finishhour'];
        $this->finishmin    = $_POST['finishmin'];
        $this->minstep      = $_POST['minstep'];
        $this->language     = $_POST['userlanguage'];
        $this->employeepassword = $_POST['employeepassword'];
        $this->employeepasswordretry = $_POST['employeepasswordretry'];

        if (!empty($this->employeepassword))
        {
            if (strlen($this->employeepassword) < 4)
            {
                $this->errors[] = 'err_115';
                $event = false;
            }
            elseif ($this->employeepassword != $this->employeepasswordretry)
            {
                $this->errors[] = 'err_114';
                $event = false;
            }
        }

        if ($this->finishhour < $this->starthour)
        {
            $this->errors[] = 'err_600';
            $event = false;
        }
        return $event;
    }

	function getLanguages()
	{
        if (!is_dir(LANGUAGESORDER))
        {
            return false;
        }
        else
        {
            $handle = opendir(LANGUAGESORDER);
            while (false !== ($file = readdir ($handle)))
            {
                $file_array = file(LANGUAGESORDER.'/'.$file);
                $file_string = implode(";", $file_array);
                if (preg_match("/GUILANGUAGE','(.*)'/",$file_string,$match))
                {
                    $this->languages_array[substr($file,0,-4)] = $match[1];
                }
            }
            closedir($handle);
        }

        return true;
    }

     /**
     * Set config data for user
     *
     * @return boolean
     */
    function initCfgVars($user_id)
    {
        if (empty($user_id)) return false;
        $this->cfg_usr_id = $user_id;

        if ($this->query(
                 sprintf('SELECT cfg_var,
                                 cfg_val
                          FROM '.DBPREFIX.'usrcfg
                          WHERE cfg_usr_id = %d',
                          (int) $user_id),SQL_ALL,SQL_ASSOC))
		{
			foreach ($this->record as $rs)
			{
			    $this->$rs['cfg_var'] = $rs['cfg_val'];
			}

		}
		else
		{
		    return false;
		}
        return true;
    }

    /**
     * Add Config-Settings
     *
     * $this->errors get the number of error for language dictionary
     *
     * @return Boolean
     */
    function saveRecord()
    {
        $event = true;
        if (!$this->_addRecord())
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    /**
     * Private function for record adding
     *
     * @return Boolean
     */
    function _addRecord()
    {
        $values[] = "($this->cfg_usr_id, 'starthour', '$this->starthour')";
        $values[] = "($this->cfg_usr_id, 'startmin', '$this->startmin')";
        $values[] = "($this->cfg_usr_id, 'durhour', '$this->durhour')";
        $values[] = "($this->cfg_usr_id, 'durmin', '$this->durmin')";
        $values[] = "($this->cfg_usr_id, 'finishhour', '$this->finishhour')";
        $values[] = "($this->cfg_usr_id, 'finishmin', '$this->finishmin')";
        $values[] = "($this->cfg_usr_id, 'minstep', '$this->minstep')";
        $values[] = "($this->cfg_usr_id, 'language', '$this->language')";

        $this->query(
             sprintf('DELETE FROM '.DBPREFIX.'usrcfg
                       WHERE cfg_usr_id = %d',
                      (int) $this->cfg_usr_id));
        $val = '';
        foreach ($values as $value)
        {
            if (!empty($val)) $val .= ',';
            $val .= $value;
        }

        if (!$this->query('INSERT INTO '.DBPREFIX.'usrcfg VALUES '.$val))
        {
            return false;
        }
        else
        {
            if (empty($this->employeepassword))
            {
                return true;
            }

            if (!$this->query(
                      sprintf('UPDATE '.DBPREFIX."employees
                               SET empl_pwd = '%s'
                               WHERE empl_id = %d",
                               md5($this->employeepassword),
                               (int) $this->cfg_usr_id)))
            {
                return false;
            }
            else
            {
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
                    $login = array('','',false);
                }
                $new_login = array($login[0],
                                   md5($this->employeepassword),
                                   $login[2]);
                set_pep($new_login);
                return true;
            }

        }
   }

    function getBuild()
    {
        if (is_readable(ROOT_PATH.'build'))
        $info = file(ROOT_PATH.'build');
        $this->version = $info[0];
        $this->build = $info[1];
    }

}
?>