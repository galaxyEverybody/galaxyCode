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

class user extends SQL
{
    var $empl_login     = '';
    var $empl_pwd       = '';
    var $empl_id        = 0;
    var $empl_position  = 0;
    var $empl_surname   = '';
    var $empl_firstname = '';

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
    }

    /**
	 * Construct
	 *
	 * @return user
	 */
	function user()
	{
        return $this->__construct();
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
     * Login for enabled employees
     *
     * $user     - loginname
     * $password - password
     * Return true or false with errorcode in $this->errors Array
     *
     * @param array $login
     * @return boolean
     */
    function login($login)
    {
        $event = true;
        $this->empl_login = $login[0];
        $this->empl_pwd   = $login[1];

        if (empty($this->empl_login))
        {
            //$this->errors[] = 'err_501';
            $event = false;
        }

        if ($this->empl_pwd === md5(''))
        {
            $this->errors[] = 'err_502';
            $event = false;
        }

        // Wenn schon jetzt was nicht stimmt, dann Tschüss
        if (!$event) return $event;

        if (!$this->query(
                  sprintf('SELECT *
                           FROM '.DBPREFIX."employees
                           WHERE empl_login LIKE '%s'
                           AND empl_pwd LIKE '%s'",
                           escape_string($this->empl_login),
                           escape_string($this->empl_pwd)),
                           SQL_INIT,SQL_ASSOC))
        {
            $this->errors[] = 'err_202';
            $event = false;
        }
        else
        {
            if (empty($this->record))
            {
                $this->errors[] = 'err_503';
                $event = false;
            }
            else if ($this->record['empl_status'] != 1)
            {
                $this->errors[] = 'err_504';
                $event = false;
            }
            else
            {
                $this->empl_id        = $this->record['empl_id'];
                $this->empl_firstname = $this->record['empl_firstname'];
                $this->empl_surname   = $this->record['empl_surname'];
                $this->empl_position  = $this->record['empl_position'];
                $_SESSION['pep']      = object_to_cookie($login);
                if ($login[2])
                {
                    setcookie('pep',$_SESSION['pep'],time()+60*60*24*30);
                }
            }
        }
        return $event;
    }

}

?>
