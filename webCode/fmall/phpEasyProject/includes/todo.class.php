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

class todo extends SQL
{
    var $dsn               = '';
    var $errors            = array();
	var $errors_id         = array();
	var $connected         = false;

	var $recordcount       = 0;

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
	 * @return todo
	 */
	function todo()
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
     * @param integer $page
     * @param string $search_string
     * @param integer $pr_id
     * @param integer $prio
     * @param integer $status
     * @return array Returned Array with ToDo Objects based of foo - class
     */
    function GetList(
                $sort_field    = 'id',
                $sortorder     = 'ASC',
                $page          = 0,
                $search_string = '',
                $pr_id         = -1,
                $prio          = 0,
                $status        = 0
                )
    {
        global $dict, $user;
        $objArr = Array();

        $sortorder = $sortorder == 'ASC' ? '' : ' DESC';
        $sortwitch = $this->_sortwitch($sort_field);
        $where = $this->_getWhere($search_string,$pr_id,$prio,$status);

        if ($where) $where =  ' WHERE '.$where;

        if ($user->empl_position < 100) // Open projects only
        {
            $sql = 'SELECT count('.TABLE_PREFIX.'id) as pagescount FROM ('.DBPREFIX.MAINTABLE.' INNER JOIN '
		.DBPREFIX.'projects ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='
		.DBPREFIX.'projects.pr_id) INNER JOIN '.DBPREFIX.'projectmembers ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='.DBPREFIX.'projectmembers.project_id'.$where;
        }
        else
        {
            $sql = 'SELECT count('.TABLE_PREFIX.'id) as pagescount FROM '.DBPREFIX.MAINTABLE.' INNER JOIN '
		.DBPREFIX.'projects ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='
		.DBPREFIX.'projects.pr_id'.$where;
        }

        if (!$this->query($sql,SQL_INIT))
		{
			$this->errors[] = $this->error;
			return $objArr;
		}

		$this->recordcount = $this->record[0];
		$this->pagescount = ceil($this->recordcount/RECORDPERPAGE);

		if (!$page) $page = $this->pagescount;

		$offset = $page*RECORDPERPAGE-RECORDPERPAGE;

		if ($user->empl_position < 100) // Open projects only
        {
            $sql = 'SELECT * FROM ('.DBPREFIX.MAINTABLE.' INNER JOIN '
		.DBPREFIX.'projects ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='
		.DBPREFIX.'projects.pr_id) INNER JOIN '.DBPREFIX.'projectmembers ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='.DBPREFIX.'projectmembers.project_id'.$where
		.' ORDER BY '.$sortwitch.$sortorder.', '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'inserted ASC LIMIT '.$offset.','.RECORDPERPAGE;
        }
        else
        {
            $sql = 'SELECT * FROM '.DBPREFIX.MAINTABLE.' INNER JOIN '
		.DBPREFIX.'projects ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='
		.DBPREFIX.'projects.pr_id'.$where
		.' ORDER BY '.$sortwitch.$sortorder.', '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'inserted ASC LIMIT '.$offset.','.RECORDPERPAGE;
        }

        //print($sql);

		if ($this->query($sql,SQL_ALL,SQL_ASSOC))
		{
			$records = $this->record;
			foreach ($records as $rs)
			{
				$todo = new todo_foo;
				$todo->todo_id        = $rs[TABLE_PREFIX.'id'];
				$todo->todo_pr_id     = $rs[TABLE_PREFIX.'pr_id'];
				$todo->todo_title     = clearVars($rs[TABLE_PREFIX.'title']);
				$todo->todo_comment   = clearVars($rs[TABLE_PREFIX.'comment']);
				$todo->todo_start     = empty($rs[TABLE_PREFIX.'start'])  ? 0 : $rs[TABLE_PREFIX.'start'];
				$todo->show_start     = $todo->todo_start > 0  ? strftime(SHORTDATES,$todo->todo_start):'';
				$todo->todo_finish    = empty($rs[TABLE_PREFIX.'finish']) ? 0 : $rs[TABLE_PREFIX.'finish'];
				$todo->show_finish    = $todo->todo_finish > 0 ? strftime(SHORTDATES,$todo->todo_finish):'';
				$todo->todo_warndiff  = $rs[TABLE_PREFIX.'warndiff'];
				$todo->todo_prio      = $rs[TABLE_PREFIX.'prio'];
				$todo->todo_status    = $rs[TABLE_PREFIX.'status'];
				$todo->todo_statusbar = $rs[TABLE_PREFIX.'statusbar'];
				$todo->todo_inserted  = $rs[TABLE_PREFIX.'inserted'];
				$todo->todo_inserted_s= strftime(SHORTDATE,$todo->todo_inserted);
				$todo->pr_name        = clearVars($rs['pr_name']);
				$todo->pr_comment     = $rs['pr_comment'];
				$todo->pr_created     = $rs['pr_created'];
				$todo->pr_status      = $rs['pr_status'];
				if ($todo->todo_pr_id == 0) $todo->pr_name = $dict['noname'];
				$todo->warnflag = $todo->todo_finish > 0 && time() > ($todo->todo_finish - $todo->todo_warndiff) ?
				                  1 : 0;

				$objArr[] = $todo;
			}
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
     * @param Boolean $archive
     * @return String
     */
    function _getWhere($search_string,$pr_id,$prio,$status)
    {
        global $user;
        $erg = sprintf('('.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'privat = 0 OR ('.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'privat=1 AND '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'inserted_from=%d))',
        $user->empl_id);

        if (!empty($search_string))
        {
            $erg .= sprintf(' AND ('.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX."title LIKE '%s'
                              OR ".DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX."comment LIKE '%s')",
                            '%'.$search_string.'%',
                            '%'.$search_string.'%');
        }

        if ($pr_id > -1)
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= sprintf(DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id = %d',$pr_id);
        }

        if (!empty($prio))
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= sprintf(DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX."prio = '%s'",$prio);
        }

        if ($status > -1)
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= sprintf(DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'status = %d',(int) $status);
        }

        if ($user->empl_position < 100) // Open projects only
        {
            if (!empty($erg)) $erg .= ' AND ';
            $erg .= sprintf(DBPREFIX.'projectmembers.member_id = %d',(int) $user->empl_id);
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
            case 'projects':
                $sortwitch = DBPREFIX.'projects.pr_name';
            break;

            case 'agreed':
                $sortwitch = TABLE_PREFIX.'status';
            break;

            case 'todo':
                $sortwitch = TABLE_PREFIX.'title';
            break;

            case 'prio':
                $sortwitch = TABLE_PREFIX.'prio';
            break;

            case 'status':
                $sortwitch = TABLE_PREFIX.'finish';
            break;

            case 'doc':
                $sortwitch = TABLE_PREFIX.'statusbar';
            break;

            case 'created':
                $sortwitch = TABLE_PREFIX.'inserted';
            break;

            case 'startdate':
                $sortwitch = TABLE_PREFIX.'start';
            break;

            case 'finishdate':
                $sortwitch = TABLE_PREFIX.'finish';
            break;

            default:
                $sortwitch = TABLE_PREFIX.'id';
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
        $todo_foo = new todo_foo();
        $event = true;

        if (empty($_POST['todotitle']))
        {
            $this->errors[] = 'err_100';
            $event = false;
        }
        else
        {
            $todo_foo->todo_title = clearVars($_POST['todotitle']);
        }

        if (empty($_POST['todoprio']))
        {
            $this->errors[] = 'err_101';
            $event = false;
        }
        else
        {
            $todo_foo->todo_prio = clearVars($_POST['todoprio']);
        }

        if (!empty($_POST['todostart']))
        {
            $todo_foo->todo_start = getDateTime($_POST['todostart']);
            $todo_foo->show_start = $_POST['todostart'];
        }

        if (!empty($_POST['todofinish']))
        {
            $todo_foo->todo_finish = getDateTime($_POST['todofinish'],true);
            $todo_foo->show_finish = $_POST['todofinish'];
        }

        if (!empty($_SESSION['edit_todo_id']))
        {
            $todo_foo->todo_id = (int) $_SESSION['edit_todo_id'];
        }

        if (!empty($_POST['movefield']))
        {
            $todo_foo->move = $_POST['movefield'];
        }

        if (!empty($_POST['todoproject']))
        {
            $todo_foo->todo_pr_id = $_POST['todoproject'];
        }
        else
        {
            $todo_foo->todo_pr_id = '0';
        }

        $todo_foo->todo_warndiff = isset($_POST['todowarndiff']) ? $_POST['todowarndiff'] : 0;

        $todo_foo->todo_privat = isset($_POST['todoprivat']) ? $_POST['todoprivat'] : 0;

        if (!empty($_POST['tododof']))
        {
            $todo_foo->todo_statusbar = $_POST['tododof'];
        }

        if (isset($_POST['todoagreed']))
        {
            $todo_foo->todo_status = $_POST['todoagreed'];
        }

        if (!empty($_POST['todocomment']))
        {
            $todo_foo->todo_comment = clearVars($_POST['todocomment']);
        }

        $this->todo_foo =  $todo_foo;

        return $event;
    }

    /**
     * Add or update ToDo-Record
     *
     * $this->errors get the number of error for language dictionary
     *
     * @return Boolean
     */
    function saveRecord()
    {
        $event = true;
        if (empty($_SESSION['edit_todo_id']))
        {
            return $this->_addRecord();
        }

        if (!isset($this->todo_foo) || !is_object($this->todo_foo))
        {
           $this->errors[] = 'err_200';
           $event = false;
        }
        else
        {
            if ($this->projectIsClosed($this->todo_foo->todo_pr_id))
            {
                if ($this->todo_foo->todo_pr_id)
                {
                    $this->errors[] = 'err_102';
                }
                else
                {
                    $this->errors[] = 'err_120';
                }
                return false;
            }

            if (!$this->_updateRecord())
            {
                $this->errors[] = 'err_201';
                $event = false;
            }
        }

        return $event;
    }

    function projectIsClosed($pr_id)
    {
        if (!$this->query(
                  sprintf('SELECT pr_status,
                                  pr_name
                           FROM '.DBPREFIX.'projects
                           WHERE pr_id = %d',
                           (int) $pr_id),SQL_INIT))
        {
            return false;
        }
        else
        {
            $status = empty($this->record[0]) ? true : false;
            $this->_tmp_pr_name = $this->record[1];
            return $status;
        }
    }

    /**
     * Private function for record adding
     *
     * @return Boolean
     */
    function _addRecord()
    {
        global $user;
        $arch_id = $this->get_last_id('archive','arch_id') + 1;
        $todo_id = $this->get_last_id('todolist','todo_id') + 1;
        $this->todo_foo->todo_id = $arch_id > $todo_id ? $arch_id : $todo_id;
        $_SESSION['edit_todo_id'] = $this->todo_foo->todo_id;

        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX."todolist
                           VALUES (%d,%d,'%s','%s',%d,%d,%d,'%s',%d,%d,%d,%d,%d,%d,%d)",
                           (int) $this->todo_foo->todo_id,
                           (int) $this->todo_foo->todo_pr_id,
                           escape_string($this->todo_foo->todo_title),
                           escape_string($this->todo_foo->todo_comment),
                           (int) $this->todo_foo->todo_start,
                           (int) $this->todo_foo->todo_finish,
                           (int) $this->todo_foo->todo_warndiff,
                           escape_string($this->todo_foo->todo_prio),
                           (int) $this->todo_foo->todo_status,
                           (int) $this->todo_foo->todo_privat,
                           (int) $this->todo_foo->todo_statusbar,
                           time(),
                           (int) $user->empl_id,
                           time(),
                           (int) $user->empl_id)))
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

        if (empty($this->todo_foo->todo_id))
        {
            return $this->_addRecord();
        }

        if (!$this->query(
                  sprintf('UPDATE '.DBPREFIX."todolist
                              SET todo_pr_id        = %d,
                                  todo_title        = '%s',
                                  todo_comment      = '%s',
                                  todo_start        = %d,
                                  todo_finish       = %d,
                                  todo_warndiff     = %d,
                                  todo_prio         = '%s',
                                  todo_status       = %d,
                                  todo_privat       = %d,
                                  todo_statusbar    = %d,
                                  todo_changed      = %d,
                                  todo_changed_from = %d
                            WHERE todo_id = %d",
                                (int) $this->todo_foo->todo_pr_id,
                                escape_string($this->todo_foo->todo_title),
                                escape_string($this->todo_foo->todo_comment),
                                (int) $this->todo_foo->todo_start,
                                (int) $this->todo_foo->todo_finish,
                                (int) $this->todo_foo->todo_warndiff,
                                escape_string($this->todo_foo->todo_prio),
                                (int) $this->todo_foo->todo_status,
                                (int) $this->todo_foo->todo_privat,
                                (int) $this->todo_foo->todo_statusbar,
                                time(),
                                (int) $user->empl_id,
                                (int) $this->todo_foo->todo_id
                                )))
            return false;
       else
            return true;
    }

    /**
     * Switch todo - status for AJAX - function
     *
     * @param Integer $todo_id
     * @param Integer $empl_id
     * @return Boolean
     */
    function switchStatus($todo_id,$empl_id)
    {
        global $user;
        if (!$this->query(
                  sprintf('SELECT todo_status
                           FROM '.DBPREFIX.'todolist
                           WHERE todo_id = %d',
                           (int) $todo_id),SQL_INIT))
        {
            return false;
        }
        else
        {
            $this->newStatus = empty($this->record[0]) ? 99 : 0;
            if (!$this->query(
                      sprintf('UPDATE '.DBPREFIX.'todolist
                                  SET todo_status = %d,
                                      todo_changed= %d,
                                      todo_changed_from=%d
                               WHERE  todo_id = %d',
                                  (int) $this->newStatus,
                                  time(),
                                  (int) $empl_id,
                                  (int) $todo_id)))
            {
                return false;
            }
        }
        return true;
    }

    /**
     * Set ini data for ToDo-Object and return this as foo-object
     *
     * @param Integer $todo_id
     * @return Object
     */
    function initToDoById($todo_id)
    {
        global $dict;
        if (empty($todo_id)) return false;

        if ($this->query(
                 sprintf('SELECT todo_id,
                                 todo_pr_id,
                                 todo_title,
                                 todo_comment,
                                 todo_start,
                                 todo_finish,
                                 todo_warndiff,
                                 todo_prio,
                                 todo_status,
                                 todo_privat,
                                 todo_statusbar,
                                 todo_inserted,
                                 todo_inserted_from,
                                 todo_changed,
                                 todo_changed_from,
                                 pr_name,
                                 pr_comment,
                                 pr_created,
                                 pr_status
                          FROM '.DBPREFIX.'todolist
                          LEFT JOIN '.DBPREFIX.'projects
                          ON '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'pr_id='.DBPREFIX.'projects.pr_id
		                  WHERE '.DBPREFIX.MAINTABLE.'.'.TABLE_PREFIX.'id = %d',
                          (int) $todo_id),SQL_INIT,SQL_ASSOC))
		{
			$rs = $this->record;
    		$todo = new todo_foo;
			$todo->todo_id            = $rs['todo_id'];
			$todo->todo_pr_id         = $rs['todo_pr_id'];
			$todo->todo_title         = $rs['todo_title'];
			$todo->todo_comment       = $rs['todo_comment'];
			$todo->todo_start         = empty($rs['todo_start'])  ? 0 : $rs['todo_start'];
			$todo->show_start         = !empty($todo->todo_start) ? date('d.m.Y',$todo->todo_start):'';
			$todo->todo_finish        = empty($rs['todo_finish']) ? 0 : $rs['todo_finish'];
			$todo->show_finish        = !empty($todo->todo_finish)? date('d.m.Y',$todo->todo_finish):'';
			$todo->todo_warndiff      = $rs['todo_warndiff'];
			$todo->todo_prio          = $rs['todo_prio'];
			$todo->todo_status        = $rs['todo_status'];
			$todo->todo_privat        = $rs['todo_privat'];
			$todo->todo_statusbar     = $rs['todo_statusbar'];
			$todo->todo_inserted      = $rs['todo_inserted'];
			$todo->todo_inserted_s    = strftime(SHORTDATE,$todo->todo_inserted);
			$todo->todo_inserted_from = $rs['todo_inserted_from'];
			$todo->show_inserted_name = $this->getUserNameById($todo->todo_inserted_from);
			$todo->todo_changed       = $rs['todo_changed'];
			$todo->todo_changed_s     = strftime(SHORTDATE,$todo->todo_changed);
			$todo->todo_changed_from  = $rs['todo_changed_from'];
			$todo->show_changed_name  = $this->getUserNameById($todo->todo_changed_from);
			$todo->pr_name            = $rs['pr_name'];
			$todo->pr_comment         = $rs['pr_comment'];
			$todo->pr_created         = $rs['pr_created'];
			$todo->pr_status          = $rs['pr_status'];
			if ($todo->todo_pr_id == 0) $todo->pr_name = $dict['noname'];
			$todo->warnflag = $todo->todo_finish > 0 &&
			                  time() > ($todo->todo_finish - $todo->todo_warndiff) ? 1 : 0;
		}
        return $todo;
    }

    /**
     * Analyse for StatusBar settings for AJAX function
     *
     * @param Object $todo
     * @return Integer
     */
    function getToDoWarnIndex($todo)
    {
        if ($todo->todo_status == 99)
            $flag = 0;
        elseif ($todo->todo_start > time())
            $flag = 1;
        elseif ($todo->todo_finish > 0 && $todo->todo_finish < time())
            $flag = 2;
        elseif ($todo->warnflag == 1)
            $flag = 3;
        elseif (empty($todo->todo_statusbar))
            $flag = 4;
        else
            $flag = 5;
        return $flag;
    }

    /**
     * Cyclic increment for degreed of complete of next value (0%->25%->75%->100%->0%)
     *
     * @param Integer $todo_id
     * @param Integer $empl_id
     * @return Boolean
     */
    function incStatusBar($todo_id, $empl_id)
    {
        if (!$todo = $this->initToDoById($todo_id)) return false;

        // Verhindert die erhöhung von Fertigstellungsgrad bei erledigten Aufgaben
        if ($todo->todo_status)
        {
            return false;
        }

        $this->newStatusBar = $todo->todo_statusbar + 1;

        if ($this->newStatusBar > 4)
        {
            $this->newStatusBar = 0;
        }
        $this->query(
             sprintf('UPDATE '.DBPREFIX.'todolist
                         SET todo_statusbar = %d,
                               todo_changed = %d,
                          todo_changed_from = %d
                      WHERE todo_id = %d',
                    (int) $this->newStatusBar,
                    time(),
                    (int) $empl_id,
                    (int) $todo_id));
        return true;
    }

    /**
     * Move the selected Recordset from todolist to Archive
     *
     * @param Integer $todo_id
     * @return Boolean
     */
    function moveToArchive($todo_id)
    {
        $event = true;
        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX.'archive
                           SELECT * FROM '.DBPREFIX.'todolist
                           WHERE todo_id = %d',
                           (int) $todo_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'todolist
                           WHERE todo_id = %d',
                           (int) $todo_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return true;
    }

    function restoreFromArchive($todo_id)
    {
        $event = true;
        // MySQL 5 only!!!
        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX.'todolist
                           SELECT * FROM '.DBPREFIX.'archive
                           WHERE arch_id = %d',
                           (int) $todo_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'archive
                           WHERE arch_id = %d',
                           (int) $todo_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    function deleteFromArchive($todo_id)
    {
        $event = true;

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'archive
                           WHERE arch_id = %d',
                           (int) $todo_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    /**
     * count of all todos for $empl_id within project $pr_id
     *
     * @param integer $pr_id
     * @param integer $empl_id
     * @return unknown
     */
    function getOpenTodos($pr_id,$empl_id)
    {
        $openTodos = 0;
        if ($this->query(
                 sprintf('SELECT COUNT(todo_pr_id)
                          FROM '.DBPREFIX.'todolist
                          WHERE todo_pr_id = %d
                          AND todo_inserted_from = %d',
                          (int) $pr_id,
                          (int) $empl_id),SQL_INIT))
		{
            $openTodos = $this->record[0];
		}
        return (int) $openTodos;
    }
}

class todo_foo {
    function __construct()
    {
        $this->form_tododof = array('tododof0'=>'0',
                                    'tododof1'=>'1',
                                    'tododof2'=>'2',
                                    'tododof3'=>'3',
                                    'tododof4'=>'4'
                                    );

        $this->form_tododofval= array('tododof0'=>'0%',
                                    'tododof1'=>'25%',
                                    'tododof2'=>'50%',
                                    'tododof3'=>'75%',
                                    'tododof4'=>'100%'
                                    );
        $this->todo_id              = 0;
        $this->todo_pr_id           = 0;
        $this->todo_title           = '';
        $this->todo_comment         = '';
        $this->todo_start           = time();
        $this->show_start           = date('d.m.Y',$this->todo_start);
        $this->todo_finish          = '';
        $this->show_finish          = '';
        $this->todo_warndiff        = '86400';
        $this->todo_prio            = '2';
        $this->todo_status          = 0;
        $this->todo_privat          = 0;
        $this->todo_statusbar       = 0;
        $this->todo_inserted        = 0;
        $this->todo_inserted_from   = 0;
        $this->todo_changed         = time();
        $this->todo_changed_from    = 0;
        $this->pr_name              = '';
        $this->pr_comment           = '';
        $this->pr_created           = '';
        $this->pr_status            = 0;
        $this->warnflag             = 0;
        $this->move                 = 0;
        $this->warndiff_options     = array();
    }

    function todo_foo()
    {
        $this->__construct();
    }
}
?>
