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

class projects extends SQL
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
     * @return boolean todo
     */
    function projects()
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
     * Get ToDo List
     *
     * @param integer $sort_field
     * @param string $sortorder
     * @param string $search_string
     * @param integer $status
     * @return array Returned Array with ToDo Objects based of foo - class
     */
    function GetList(
                $sort_field = 'projects',
                $sortorder = 'ASC',
                $search_string = '',
                $status = 1
                )
    {
        global $user;
        $sortorder = $sortorder == 'ASC' ? '' : ' DESC';
        $sortwitch = $this->_sortwitch($sort_field);
        $where     = $this->_getWhere($search_string,$status);

        if ($where)
        {
            $where = ' WHERE '.$where;
        }
        $objArr = Array();

        if ($user->empl_position < 100) // Open projects only
        {
            $sql = sprintf('SELECT pr_id,
                                   pr_name,
                                   pr_comment,
                                   pr_created,
                                   pr_status
                            FROM '.DBPREFIX.'projects
                            RIGHT JOIN '.DBPREFIX.'projectmembers
                            ON '.DBPREFIX.'projects.pr_id='.DBPREFIX.'projectmembers.project_id
                            %s
                            ORDER BY %s %s',
                            $where,
                            $sortwitch,
                            $sortorder);
        }
        else
        {
            $sql = sprintf('SELECT pr_id,
                                   pr_name,
                                   pr_comment,
                                   pr_created,
                                   pr_status
                           FROM '.DBPREFIX.'projects
                           %s
                            ORDER BY %s %s',
                            $where,
                            $sortwitch,
                            $sortorder);
        }

		if ($this->query($sql,SQL_ALL,SQL_ASSOC))
		{
			$records = $this->record;
			foreach ($records as $rs)
			{
				$project = new project_foo();
				$project->pr_id        = $rs['pr_id'];
				$project->pr_name      = $rs['pr_name'];
				$project->pr_comment   = $rs['pr_comment'];
				$project->pr_created   = $rs['pr_created'];
				$project->pr_status    = $rs['pr_status'];
				$project->show_start   = !empty($project->pr_created)? strftime(SHORTDATE,$project->pr_created):'';
				$objArr[] = $project;
			}
		}
		return $objArr;
    }

    /**
     * Get assotiative array for Smarty - Template (options list for select)
     *
     * @var Array $dict Language dictionary
     * @var Boolean $noname Default: true
     * @var Boolean $allprojects Default: false
     * @return Array
     */
    function getProjectsArr($dict, $noname = false, $allprojects = false)
    {
        $objArr = $this->GetList('projects','ASC','',-1);

        if ($noname == true)
        {
            $project = new project_foo();
            $project->pr_id        = 0;
			$project->pr_name      = $dict['noname'];
			$project->pr_status    = 1;
			array_unshift($objArr,$project);
        }

        if ($allprojects == true)
        {
            $project = new project_foo();
            $project->pr_id        = -1;
			$project->pr_name      = $dict['all_projects'];
			$project->pr_status    = 1;
			array_unshift($objArr,$project);
        }
        return $objArr;
    }

    /**
     * Privat function as wrapper for Where SQL-Clause
     *
     * @param String $search_string
     * @param Interger $pr_id
     * @param Integer $prio
     * @param Integer $status
     * @return String
     */
    function _getWhere($search_string,$status)
    {
        $erg = '';
        global $user;

        if (!empty($search_string))
        {
             $erg = ' ('.DBPREFIX.'projects.pr_name LIKE '
                    ."'%".$search_string."%' OR "
                    .DBPREFIX.'projects.pr_comment LIKE '
                    ."'%".$search_string."%')";
        }

        if ($status == 0) // Open projects only
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= DBPREFIX.'projects.pr_status=0';
        }
        elseif ($status == 1) // Open projects only
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= DBPREFIX.'projects.pr_status > 0';
        }
        else
        {
            // All projects ;-)
        }

        if ($user->empl_position < 100) // Open projects only
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= DBPREFIX . sprintf('projectmembers.member_id = %d',$user->empl_id);
        }

        return $erg;
    }

    /**
     * Get first enabled project for default
     *
     * @return integer project_id
     */
    function get_first_project()
    {
        $sql = 'SELECT MIN(pr_id)
                FROM '.DBPREFIX.'projects
                WHERE pr_status = 1
                ORDER BY pr_name ASC';
        if (!$this->query($sql,SQL_INIT))
        {
            $this->errors_id[] = APP_CLOSED;
        }

        if (empty($this->record[0]))
        {
            return 0;
        }

        return $this->record[0];
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
            case 'id':
                $sortwitch = DBPREFIX.'projects.pr_id';
            break;

            case 'date':
                $sortwitch = DBPREFIX.'projects.pr_created';
            break;

            case 'status':
                $sortwitch = DBPREFIX.'projects.pr_status';
            break;

            default:
                $sortwitch = DBPREFIX.'projects.pr_name';
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
        $project_foo = new project_foo();
        $event = true;

        if (empty($_POST['projectname']))
        {
            $this->errors[] = 'err_120';
            $event = false;
        }
        else
        {
            $project_foo->pr_name = clearVars($_POST['projectname']);
        }

        if (!empty($_POST['projectid']))
        {
            $project_foo->pr_id = $_POST['projectid'];
        }

        $project_foo->pr_status = isset($_POST['projectstatus']) ? $_POST['projectstatus'] : 0;

        if (!empty($_POST['projectcomment']))
        {
            $project_foo->pr_comment = clearVars($_POST['projectcomment']);
        }

        $project_foo->membersListArray = isset($_POST['MembersInProject']) ? $_POST['MembersInProject'] : array();

        $this->project_foo =  $project_foo;

        return $event;
    }

    /**
     * Add or update project-Record
     *
     * $this->errors get the number of error for language dictionary
     *
     * @return Boolean
     */
    function saveRecord()
    {
        $event = true;

        if (!isset($this->project_foo) || !is_object($this->project_foo))
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
                if (!$this->setMembership())
                    $event = false;
            }
        }

        return $event;
    }

    function setMembership()
    {
        if (empty($this->project_foo->pr_id)) return false;
        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projectmembers
                           WHERE project_id = %d',
                           (int) $this->project_foo->pr_id)))
        {
            $this->errors[] = 'err_201';
            return false;
        }

        // Wenn der zum Projekt kein MA gehört, dann einfach OK.
        if (count($this->project_foo->membersListArray)< 1) return true;

        $values = '';
        foreach ($this->project_foo->membersListArray as $member_id)
        {
            if (!empty($values))
            {
                $values .= ',';
            }

            $values .= sprintf(' (%d,%d)',
                                $this->project_foo->pr_id,
                                $member_id);
        }

        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX.'projectmembers
                           VALUES %s',
                           $values)))
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
        $pr_id = $this->get_last_id('projects','pr_id') + 1;
        $this->project_foo->pr_id = $pr_id;

        if (!$this->query(sprintf('INSERT INTO '.DBPREFIX."projects
                                   VALUES (%d, '%s', '%s', %d, %d, %d, %d, %d)",
                                   (int) $this->project_foo->pr_id,
                                   escape_string($this->project_foo->pr_name),
                                   escape_string($this->project_foo->pr_comment),
                                   time(),
                                   (int) $user->empl_id,
                                   time(),
                                   (int) $user->empl_id,
                                   (int) $this->project_foo->pr_status
                                )))
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
        $event = true;
        if (empty($this->project_foo->pr_id)) return $this->_addRecord();

        if (!$this->query(
                  sprintf('UPDATE '.DBPREFIX."projects
                              SET pr_name         ='%s',
                                  pr_comment      ='%s',
                                  pr_changed      = %d,
                                  pr_changed_from = %d,
                                  pr_status       = %d
                            WHERE pr_id           = %d",
                                escape_string($this->project_foo->pr_name),
                                escape_string($this->project_foo->pr_comment),
                                time(),
                                (int) $user->empl_id,
                                (int) $this->project_foo->pr_status,
                                (int) $this->project_foo->pr_id
                                )))

        {
            $event = false;
        }
        return $event;
    }

    /**
     * Copy the project
     *
     * @param integer $pr_id
     * @return boolean
     */
    function copyProject($pr_id_old)
    {
        $event = true;
        if (!$this->getPostVars()) return false;
        $this->project_foo->pr_name .= ' (copy)';
        $erg = $this->_addRecord();
        if ($erg)
        {
            $event = $this->copyPositions($pr_id_old,$this->project_foo->pr_id);
        }
        return $event;
    }

    /**
     * Copy all positions from project $pr_id
     *
     * @param integer $pr_id
     * @return boolean
     */
    function copyPositions( $pr_id_old,
                            $pr_id_new )
    {
        global $user;
        $time = time();
        $user_id = $user->empl_id;
        $prpos_last = $this->get_last_id('projectpos','prpos_id');

         if (!$this->query(
                   sprintf('SELECT MIN(prpos_id)
                            FROM '.DBPREFIX.'projectpos
                            WHERE prpos_project_id = %d',
                            (int) $pr_id_old),SQL_INIT))
        {
          $this->errors[] = 'err_201';
          return false;
        }
        $first_prpos_id = $this->record[0];
        $diff = $prpos_last - $first_prpos_id + 1;


        $sql = sprintf('SELECT %d + prpos_id,
                               prpos_ordernumber,
                               %d + prpos_parent_id,
                               %d,
                               prpos_name,
                               prpos_comment,
                               %d,
                               %d,
                               %d,
                               %d,
                               prpos_status
                        FROM '.DBPREFIX.'projectpos
                        WHERE prpos_project_id = %d
                        ORDER BY prpos_id',
                        (int) $diff,
                        (int) $diff,
                        (int) $pr_id_new,
                        $time,
                        $user_id,
                        $time,
                        $user_id,
                        (int) $pr_id_old);

        if (!$this->query($sql,SQL_ALL))
        {
            $this->errors[] = 'err_201';
            return false;
        }

        $erg = $this->record;

        foreach ($erg as $rs)
        {
            if (!$this->query(
                      sprintf('INSERT INTO '.DBPREFIX."projectpos_copy
                               VALUES(%d,%d,%d,%d,'%s','%s',%d,%d,%d,%d,%d)",
                              (int) $rs[0],
                              (int) $rs[1],
                              (int) $rs[2],
                              (int) $rs[3],
                              escape_string($rs[4]),
                              escape_string($rs[5]),
                              (int) $rs[6],
                              (int) $rs[7],
                              (int) $rs[8],
                              (int) $rs[9],
                              (int) $rs[10])))
            {
                $this->errors[] = 'err_201';
                return false;
            }
        }

        // MySQL 5 only!!!
        /*if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX.'projectpos_copy
                           SELECT %d + prpos_id,
                                  prpos_ordernumber,
                                  %d + prpos_parent_id,
                                  %d,
                                  prpos_name,
                                  prpos_comment,
                                  %d,
                                  %d,
                                  %d,
                                  %d,
                                  prpos_status
                           FROM '.DBPREFIX.'projectpos
                           WHERE prpos_project_id = %d
                           ORDER BY prpos_id',
                           (int) $diff,
                           (int) $diff,
                           (int) $pr_id_new,
                           $time,
                           $user_id,
                           $time,
                           $user_id,
                           (int) $pr_id_old)))
        {
          $this->errors[] = 'err_201';
          return false;
        }*/

        if (!$this->query(
                  sprintf('UPDATE '.DBPREFIX.'projectpos_copy
                           SET prpos_parent_id = 0
                           WHERE prpos_parent_id = %d
                           AND prpos_project_id  = %d',
                           (int) $diff,
                           (int) $pr_id_new)))
        {
          $this->errors[] = 'err_201';
          return false;
        }

        $sql = sprintf('SELECT prpos_id,
                               prpos_ordernumber,
                               prpos_parent_id,
                               prpos_project_id,
                               prpos_name,
                               prpos_comment,
                               prpos_created,
                               prpos_created_from,
                               prpos_changed,
                               prpos_changed_from,
                               prpos_status
                          FROM '.DBPREFIX.'projectpos_copy
                         WHERE prpos_project_id = %d',
                         (int) $pr_id_new);

        if (!$this->query($sql,SQL_ALL))
        {
            return false;
        }

        $erg = $this->record;

        foreach ($erg as $rs)
        {
            $sql = sprintf('INSERT INTO '.DBPREFIX."projectpos
                            VALUES(%d,%d,%d,%d,'%s','%s',%d,%d,%d,%d,%d)",
                            (int) $rs[0],
                            (int) $rs[1],
                            (int) $rs[2],
                            (int) $rs[3],
                            escape_string($rs[4]),
                            escape_string($rs[5]),
                            (int) $rs[6],
                            (int) $rs[7],
                            (int) $rs[8],
                            (int) $rs[9],
                            (int) $rs[10]);
            if (!$this->query($sql))
            {
                $this->errors[] = 'err_201';
                return false;
            }
        }

        // MySQL 5 only !!!
        /*if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX.'projectpos
                           SELECT * FROM '.DBPREFIX.'projectpos_copy
                           WHERE prpos_project_id = %d',
                           (int) $pr_id_new)))
        {
          $this->errors[] = 'err_201';
          return false;
        }*/


        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projectpos_copy
                           WHERE prpos_project_id = %d',
                           (int) $pr_id_new)))
        {
          $this->errors[] = 'err_201';
          return false;
        }
        $this->project_foo->pr_id = $pr_id_new;
        return true;
    }

    /**
     * Switch employees - status for AJAX - function
     *
     * @param Integer $pr_id
     * @return Boolean
     */
    function switchStatus($pr_id,$empl_id)
    {
        if (!$this->query(
                  sprintf('SELECT pr_status
                             FROM '.DBPREFIX.'projects
                            WHERE pr_id = %d',
                            (int) $pr_id),SQL_INIT))
        {
            return false;
        }
        else
        {
            $this->newStatus = empty($this->record[0]) ? 1 : 0;
            if (!$this->query(sprintf('UPDATE '.DBPREFIX.'projects
                                       SET pr_status    = %d,
                                           pr_changed   = %d,
                                           pr_changed_from = %d
                                       WHERE pr_id  = %d',
                                       (int) $this->newStatus,
                                       time(),
                                       (int) $empl_id,
                                       (int) $pr_id)))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * Set ini data for project-Object and return this as foo-object
     *
     * @param Integer $pr_id
     * @return Object
     */
    function initById($pr_id)
    {
        if (empty($pr_id)) return false;

        if ($this->query(
                 sprintf('SELECT pr_id,
                                 pr_name,
                                 pr_comment,
                                 pr_created,
                                 pr_created_from,
                                 pr_changed,
                                 pr_changed_from,
                                 pr_status
                          FROM '.DBPREFIX.'projects
                          WHERE pr_id = %d',
                          (int) $pr_id),SQL_INIT,SQL_ASSOC))
		{
			$rs = $this->record;
    		$project = new project_foo();
			$project->pr_id              = $rs['pr_id'];
			$project->pr_name            = $rs['pr_name'];
			$project->pr_comment         = $rs['pr_comment'];
			$project->pr_created         = $rs['pr_created'];
			$project->show_created       = !empty($project->pr_created) ?
			                               strftime(SHORTDATE,$project->pr_created) : '';
			$project->pr_created_from    = $rs['pr_created_from'];
			$project->show_created_name  = $this->getUserNameById($project->pr_created_from);
			$project->pr_changed         = $rs['pr_changed'];
			$project->show_changed       = !empty($project->pr_changed) ?
			                               strftime(SHORTDATE,$project->pr_changed):'';
			$project->pr_changed_from    = $rs['pr_changed_from'];
			$project->show_changed_name  = $this->getUserNameById($project->pr_changed_from);
			$project->pr_status          = $rs['pr_status'];
		}

		// Diese funktionen werden zuerst ohne Rücksicht auf mögliche Fehler aufgerufen
		// Sollte man ändern bei zukunftigen Versionen, also Baustelle
		// Variable project::membersArray wird gesetzt
		if (!$this->getMembersList($pr_id)) return false;

		// Variable employees::membersInProjectArray wird gesetzt
		if (!$this->getMembersInProject($pr_id)) return false;
        return $project;
    }

    /**
     * Delete Project
     *
     * @param integer $pr_id
     * @return boolean
     */
    function deleteProject($pr_id)
    {
        $event = true;

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projects
                           WHERE pr_id=%d',
                           (int) $pr_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projectpos
                           WHERE prpos_project_id=%d',
                           (int) $pr_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    /**
     * Get all projects for $pr_id as Member these projects
     *
     * Return true or false for error handling
     *
     * @param integer $pr_id
     * @return boolean
     */
    function getMembersInProject($pr_id=0)
    {
       $event = true;
       $this->membersInProjectArray = array();

       if ($this->query(
                sprintf('SELECT empl_id,
                                empl_surname,
                                empl_firstname
                           FROM '.DBPREFIX.'employees
                      LEFT JOIN '.DBPREFIX.'projectmembers
                             ON '.DBPREFIX.'employees.empl_id='.DBPREFIX.'projectmembers.member_id
                          WHERE '.DBPREFIX.'projectmembers.project_id=%d
                       ORDER BY '.DBPREFIX.'employees.empl_surname,
                                '.DBPREFIX.'employees.empl_firstname',
                        (int) $pr_id), SQL_ALL, SQL_ASSOC))
		{
			foreach ($this->record as $rs)
			{
				$this->membersInProjectArray[$rs['empl_id']] = $rs['empl_surname'].', '.$rs['empl_firstname'];
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
     * Get all projects without $pr_id as member
     *
     * Return true or false for error handling
     *
     * @param integer $pr_id
     * @return boolean
     */
    function getMembersList($pr_id=0)
	{
		$event = true;
		$where = '';
		$this->membersArray = array();

		if ($pr_id)
		{
			$this->query(
			     sprintf('SELECT member_id
			              FROM '.DBPREFIX.'projectmembers
			               WHERE project_id = %d',
			              (int) $pr_id),SQL_ALL);
			if (!empty($this->record))
			{
				foreach($this->record as $rs)
				{
					$where = empty($where) ? ' WHERE empl_id<>'.$rs[0] : $where.' AND empl_id<>'.$rs[0];
				}
			}
		}

		if (!$this->query(
		          sprintf('SELECT empl_id,
		                          empl_surname,
		                          empl_firstname
                           FROM '.DBPREFIX.'employees
                           %s
                           ORDER BY empl_surname, empl_firstname',
		                   $where),SQL_ALL,SQL_ASSOC))
		{
			$this->errors[] = 'err_202';
			$event = false;
		}
		else
		{
			foreach ($this->record as $rs)
			{
				$this->membersArray[$rs['empl_id']] = $rs['empl_surname'].', '.$rs['empl_firstname'];
			}
		}
		return $event;
	}

	/**
	 * get true then this employee is deletable
	 *
	 * @param integer $pr_id
	 * @return boolean
	 */
	function isDeletable($pr_id)
	{
        if (!$this->query(
                  sprintf('SELECT COUNT(member_id)
                           FROM '.DBPREFIX.'projectmembers
                           WHERE project_id = %d',
                           (int) $pr_id),SQL_INIT))
        {
            $this->errors[] = 'err_201';
            return false;
        }

        if ($this->record[0] > 0)
        {
            return false;
        }
        if ($this->getCountFromAllTodos($pr_id))
        {
            return false;
        }
        else
        {
            return true;
        }
	}

	/**
     * count of opened todos for $empl_id within project $pr_id
     *
     * @param integer $pr_id
     * @param integer $empl_id
     * @return unknown
     */
    function getCountFromAllTodos($pr_id)
    {
        $openTodos = 0;
        if ($this->query(
                 sprintf('SELECT COUNT(todo_id) as c
                            FROM '.DBPREFIX.'todolist
                           WHERE todo_pr_id = %d
                           UNION
                          SELECT COUNT(arch_id) as c
                            FROM '.DBPREFIX.'archive
                           WHERE arch_pr_id = %d',
                          (int) $pr_id,
                          (int) $pr_id),SQL_ALL,SQL_ASSOC))
		{
            foreach($this->record as $rs)
            {
				$openTodos += $rs['c'];
	        }
		}
        return (int) $openTodos;
    }
}

class project_foo
{
    var $pr_id           = 0;
    var $pr_name         = '';
    var $pr_comment      = '';
    var $pr_created      = '';
    var $pr_created_from = 0;
    var $pr_changed      = 0;
    var $pr_changed_from = 0;
    var $pr_status       = 1;
}
?>
