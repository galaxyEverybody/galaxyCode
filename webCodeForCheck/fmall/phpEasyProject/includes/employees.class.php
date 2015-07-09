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

class employees extends SQL
{
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
     * Construct for PHP4
     *
     * @return boolean employees
     */
    function employees()
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
     * Get employees List
     *
     * @param integer $sort_field
     * @param string $sortorder
     * @param string $search_string
     * @param integer $status
     * @return array Returned Array with employees Objects based of foo - class
     */
    function GetList(
                $sort_field    = 'id',
                $sortorder     = 'ASC',
                $search_string = '',
                $status        = 0
                )
    {
        $objArr = Array();

        $sortorder = $sortorder == 'ASC' ? '' : ' DESC';
        $sortwitch = $this->_sortwitch($sort_field);
        $where = $this->_getWhere($search_string,$status);

        if ($where) $where =  'WHERE '.$where;

		if ($this->query(
		         sprintf('SELECT empl_id,
		                         empl_surname,
		                         empl_firstname,
		                         empl_login,
		                         empl_status,
		                         empl_position,
		                         empl_comment
		                  FROM '.DBPREFIX.'employees
		                  %s
		                  ORDER BY %s %s',
		                  $where,
		                  $sortwitch,
		                  $sortorder),SQL_ALL,SQL_ASSOC))
		{
			$records = $this->record;
			foreach ($records as $rs)
			{
				$employees = new employees_foo;
				$employees->empl_id        = $rs['empl_id'];
				$employees->empl_surname   = $rs['empl_surname'];
				$employees->empl_firstname = $rs['empl_firstname'];
				$employees->empl_login     = $rs['empl_login'];
				$employees->empl_status    = $rs['empl_status'];
				$employees->empl_position  = $rs['empl_position'];
				$employees->empl_comment   = $rs['empl_comment'];

				$objArr[] = $employees;
			}
		}

		return $objArr;
    }

    /**
     * Privat function as wrapper for Where SQL-Clause
     *
     * @param String $search_string
     * @param Integer $status
     * @return String
     */
    function _getWhere($search_string,$status)
    {
        $erg = '';
        if (!empty($search_string))
        {
            $erg = sprintf(" ( empl_surname LIKE '%s'
                               OR empl_firstname LIKE '%s'
                               OR empl_login LIKE '%s'
                               OR empl_comment LIKE '%s')",
                    '%'.escape_string($search_string).'%',
                    '%'.escape_string($search_string).'%',
                    '%'.escape_string($search_string).'%',
                    '%'.escape_string($search_string).'%');
        }

        if ($status > -1 )
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= DBPREFIX.'employees.'.'empl_status='.$status;
        }

        return $erg;
    }

    /**
     * Privat function as wrapper for Sort-Fields
     *
     * @param String $sort_field
     * @return String
     */
    function _sortwitch($sort_field)
    {
        switch ($sort_field)
        {
            case 'name':
                $sortwitch = 'empl_surname';
            break;

            case 'active':
                $sortwitch = 'empl_status';
            break;

            case 'position':
                $sortwitch = 'empl_position';
            break;

            default:
                $sortwitch = 'empl_login';
        }
        return $sortwitch;
    }

    /**
     * Check Post-Vars und Data Validation
     *
     * @return Boolean
     */
    function getPostVars ()
    {
        $employees_foo = new employees_foo();
        $event = true;

        if (empty($_POST['employeelogin']))
        {
            $this->errors[] = 'err_110';
            $event = false;
        }
        else
        {
            $employees_foo->empl_login = clearVars($_POST['employeelogin']);
        }

        if (empty($_POST['employeesurname']))
        {
            $this->errors[] = 'err_111';
            $event = false;
        }
        else
        {
            $employees_foo->empl_surname = clearVars($_POST['employeesurname']);
        }

        if (empty($_POST['employeefirstname']))
        {
            $this->errors[] = 'err_112';
            $event = false;
        }
        else
        {
            $employees_foo->empl_firstname = clearVars($_POST['employeefirstname']);
        }

        if (empty($_POST['employeeid']))
        {
            if (empty($_POST['employeepassword']))
            {
                $this->errors[] = 'err_113';
                $event = false;
            }
            else if (empty($_POST['employeepasswordretry']) || $_POST['employeepasswordretry'] != $_POST['employeepassword'])
            {
                $this->errors[] = 'err_114';
                $event = false;
            }
            else
            {
                $employees_foo->empl_pwd = md5($_POST['employeepassword']);
            }
        }
        else if (!empty($_POST['employeepassword']))
        {
            if ($_POST['employeepasswordretry'] != $_POST['employeepassword'])
            {
                $this->errors[] = 'err_114';
                $event = false;
            }
            else
            {
                $employees_foo->empl_pwd = md5($_POST['employeepassword']);
            }
        }


        if (!empty($_POST['employeeid']))
        {
            $employees_foo->empl_id = (int) $_POST['employeeid'];
        }

        if (isset($_POST['employeeposition']))
        {
            $employees_foo->empl_position = (int) $_POST['employeeposition'];
        }

        $employees_foo->empl_status = isset($_POST['employeeaktive']) ?
                                      (int) $_POST['employeeaktive'] :
                                      0;

        if (!empty($_POST['employeecomment']))
        {
            $employees_foo->empl_comment = clearVars($_POST['employeecomment']);
        }

        $employees_foo->memberProjectListArray = isset($_POST['MemberInProjects']) ? $_POST['MemberInProjects'] : array();

        $this->employees_foo =  $employees_foo;

        return $event;
    }

    /**
     * Add or update employees-Record
     *
     * $this->errors get the number of error for language dictionary
     *
     * @return Boolean
     */
    function saveRecord()
    {
        $event = true;

        if (!isset($this->employees_foo) || !is_object($this->employees_foo))
        {
           $this->errors[] = 'err_200';
           $event = false;
        }
        else
        {
            if (!$this->_updateRecord())
            {
                $this->errors[] = 'err_201';
                $event = false;
            }
            else
            {
                if (!$this->setMembershipInProjects())
                    $event = false;
            }
        }

        return $event;
    }

    function setMembershipInProjects()
    {
        if (empty($this->employees_foo->empl_id))
        {
            return false;
        }

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projectmembers
                           WHERE member_id = %d',
                           (int) $this->employees_foo->empl_id)))
        {
            $this->errors[] = 'err_201';
            return false;
        }

        // Wenn der MA zu keiner Projekte gehört, dann einfach OK.
        if (count($this->employees_foo->memberProjectListArray)< 1) return true;

        $values = '';
        foreach ($this->employees_foo->memberProjectListArray as $project_id)
        {
            if (!empty($values)) $values .= ',';
            $values .= sprintf(' (%d,%d)',$project_id,$this->employees_foo->empl_id);
        }

        if (!$this->query('INSERT INTO '.DBPREFIX.'projectmembers VALUES'.$values))
        {
            $this->errors[] = 'err_201';
            return false;
        }
        return true;
    }

    /**
     * Private function for record adding
     *
     * @return Boolean
     */
    function _addRecord()
    {
        global $user;
        $empl_id = $this->get_last_id('employees','empl_id') + 1;
        $this->employees_foo->empl_id = $empl_id;

        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX."employees
                           VALUES (%d, '%s', '%s', '%s', '%s', %d, %d, %d, %d, %d, %d, '%s')",
                           (int) $this->employees_foo->empl_id,
                           escape_string($this->employees_foo->empl_surname),
                           escape_string($this->employees_foo->empl_firstname),
                           escape_string($this->employees_foo->empl_login),
                           escape_string($this->employees_foo->empl_pwd),
                           (int) $this->employees_foo->empl_status,
                           (int) $this->employees_foo->empl_position,
                           time(),
                           (int) $user->empl_id,
                           time(),
                           (int) $user->empl_id,
                           escape_string($this->employees_foo->empl_comment))))
            return false;
        else
            return true;
    }

    /**
     * Private function for record updating
     *
     * @return Boolean
     */
    function _updateRecord()
    {
        global $user;
        if (empty($this->employees_foo->empl_id))
        {
            return $this->_addRecord();
        }

        if (!$this->query(
                  sprintf('UPDATE '.DBPREFIX."employees
                              SET empl_surname      = '%s',
                                  empl_firstname    = '%s',
                                  empl_login        = '%s',
                                  empl_status       = %d,
                                  empl_position     = %d,
                                  empl_changed      = %d,
                                  empl_changed_from = %d,
                                  empl_comment      = '%s'
                            WHERE empl_id           = %d",
                                escape_string($this->employees_foo->empl_surname),
                                escape_string($this->employees_foo->empl_firstname),
                                escape_string($this->employees_foo->empl_login),
                                (int) $this->employees_foo->empl_status,
                                (int) $this->employees_foo->empl_position,
                                time(),
                                (int) $user->empl_id,
                                escape_string($this->employees_foo->empl_comment),
                                (int) $this->employees_foo->empl_id)))
            return false;
       else
       {
           if (!$this->employees_foo->empl_pwd) return true;

           if (!$this->query(
                     sprintf('UPDATE '.DBPREFIX."employees
                                 SET empl_pwd = '%s'
                               WHERE empl_id  = %d",
                               $this->employees_foo->empl_pwd,
                               (int) $this->employees_foo->empl_id)))
                return false;
            else
                return true;
       }
    }

    /**
     * Switch employees - status for AJAX - function
     *
     * @param Integer $empl_id
     * @return Boolean
     */
    function switchStatus($empl_id, $ch_empl_id)
    {
        if (!$this->query(
                  sprintf('SELECT empl_status
                             FROM '.DBPREFIX.'employees
                            WHERE empl_id = %d',
                            (int) $empl_id),SQL_INIT))
        {
            return false;
        }
        else
        {
            $this->newStatus = empty($this->record[0]) ? 1 : 0;
            if (!$this->query(
                      sprintf('UPDATE '.DBPREFIX.'employees
                                  SET empl_status = %d,
                                      empl_changed= %d,
                                      empl_changed_from=%d
                                WHERE empl_id = %d',
                                (int) $this->newStatus,
                                time(),
                                (int) $ch_empl_id,
                                (int) $empl_id)))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * Set ini data for employees-Object and return this as foo-object
     *
     * @param Integer $empl_id
     * @return Object
     */
    function initEmployeeById($empl_id)
    {
        global $dict;
        if (empty($empl_id)) return false;

        if ($this->query(
                 sprintf('SELECT empl_id,
                                 empl_surname,
                                 empl_firstname,
                                 empl_login,
                                 empl_status,
                                 empl_position,
                                 empl_added,
                                 empl_added_from,
                                 empl_changed,
                                 empl_changed_from,
                                 empl_comment
                          FROM '.DBPREFIX.'employees
                          WHERE empl_id = %d',
                          (int) $empl_id),SQL_INIT,SQL_ASSOC))
		{
			$rs = $this->record;
    		$employees = new employees_foo();
			$employees->empl_id           = $rs['empl_id'];
			$employees->empl_surname      = $rs['empl_surname'];
			$employees->empl_firstname    = $rs['empl_firstname'];
			$employees->empl_login        = $rs['empl_login'];
			$employees->empl_status       = $rs['empl_status'];
			$employees->empl_position     = $rs['empl_position'];
			$employees->empl_added        = empty($rs['empl_added'])  ? 0 : $rs['empl_added'];
			$employees->show_added        = !empty($employees->empl_added)
			                               ? strftime(SHORTDATE,$employees->empl_added)
			                               :'';
			$employees->empl_added_from   = $rs['empl_added_from'];
			$employees->show_added_name   = $this->getUserNameById($employees->empl_added_from);
			$employees->empl_changed      = empty($rs['empl_changed']) ? 0 : $rs['empl_changed'];
			$employees->show_changed      = !empty($employees->empl_changed)
			                               ? strftime(SHORTDATE,$employees->empl_changed)
			                               :'';
			$employees->empl_changed_from = $rs['empl_changed_from'];
			$employees->show_changed_name = $this->getUserNameById($employees->empl_changed_from);
			$employees->empl_comment      = $rs['empl_comment'];
		}
		// Diese funktionen werden zuerst ohne Rücksicht auf mögliche Fehler aufgerufen
		// Sollte man ändern bei zukunftigen Versionen, also Baustelle
		// Variable employees::projectListArray wird gesetzt
		$this->getProjectList($empl_id);

		// Variable employees::memberProjectListArray wird gesetzt
		$this->getMemberProjects($empl_id);
        return $employees;
    }

    /**
     * Delete Employee Data
     *
     * @param integer $empl_id
     * @return boolean
     */
    function deleteEmplData($empl_id)
    {
        $event = true;

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'employees
                           WHERE empl_id = %d',
                          (int) $empl_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    /**
     * Get all projects for $empl_id as Member these projects
     *
     * Return true or false for error handling
     *
     * @param integer $empl_id
     * @return boolean
     */
    function getMemberProjects($empl_id=0)
    {
       $event = true;
       $this->memberProjectListArray = array();

       if ($this->query(
                sprintf('SELECT pr_name,
                                pr_id
                         FROM '.DBPREFIX.'projects
                         LEFT JOIN '.DBPREFIX.'projectmembers
                         ON '.DBPREFIX.'projects.pr_id = '.DBPREFIX.'projectmembers.project_id
                         WHERE '.DBPREFIX.'projectmembers.member_id=%d',
                         (int) $empl_id), SQL_ALL, SQL_ASSOC))
		{
			foreach ($this->record as $rs)
			{
				$this->memberProjectListArray[$rs['pr_id']] = $rs['pr_name'];
			}
		}
		else
		{
		  $this->errors[] = 'err_202';
		  $event = false;
		}
        return $event;
    }

    /**
     * Get all projects without $empl_id as member
     *
     * Return true or false for error handling
     *
     * @param integer $empl_id
     * @return boolean
     */
    function getProjectList($empl_id=0)
	{
		global $dict;
		$event = true;
		$where = '';
		$this->projectListArray = array();

		if ($empl_id)
		{
			$this->query(
			     sprintf('SELECT project_id
			                FROM '.DBPREFIX.'projectmembers
			               WHERE member_id = %d
			               ORDER BY project_id',
			               (int) $empl_id),SQL_ALL);
			if (!empty($this->record))
			{
				foreach($this->record as $rs)
				{
					$where = empty($where) ? ' WHERE pr_id<>'.$rs[0] : $where.' AND pr_id<>'.$rs[0];
				}
			}
		}

		if (!$this->query(
		          sprintf('SELECT pr_id,
		                          pr_name
                           FROM '.DBPREFIX.'projects
                           %s
                           ORDER BY pr_name',
                           $where),SQL_ALL,SQL_ASSOC))
		{
			$this->errors[] = 'err_202';
			$event = false;
		}
		else
		{
			foreach ($this->record as $rs)
			{
				$this->projectListArray[$rs['pr_id']] = $rs['pr_name'];
			}
		}
		return $event;
	}

	/**
	 * get true then this employee is deletable
	 *
	 * @param integer $empl_id
	 * @return boolean
	 */
	function isEmployeeDataDeletable($empl_id)
	{
        if (!$this->query(
                  sprintf('SELECT COUNT(project_id)
                           FROM '.DBPREFIX.'projectmembers
                           WHERE member_id = %d',
                           (int) $empl_id),SQL_INIT))
        {
            $this->errors[] = 'err_201';
            return false;
        }
        if ($this->record[0] > 0) return false;
        else return true;
	}
}

class employees_foo {

    var $empl_id        = 0;
    var $empl_surname   = '';
    var $empl_firstname = '';
    var $empl_login     = '';
    var $empl_pwd  = '';
    var $empl_status    = 1;
    var $empl_position  = 10;
    var $empl_added     = 0;
    var $empl_changed   = 0;
    var $empl_comment   = '';
    var $memberProjectListArray = array();

    function __construct()
    {
        $this->empl_id        = 0;
    	$this->empl_surname   = '';
    	$this->empl_firstname = '';
    	$this->empl_login     = '';
    	$this->empl_pwd       = '';
    	$this->empl_status    = 1;
    	$this->empl_position  = 10;
    	$this->empl_added     = 0;
    	$this->empl_changed   = time();
    	$this->empl_comment   = '';
    	$this->memberProjectListArray = array();
    }

    function employees_foo()
    {
        $this->__construct();
    }
}

?>
