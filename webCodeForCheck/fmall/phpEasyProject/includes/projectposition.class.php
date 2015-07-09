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

class projectposition extends SQL
{
    var $nodesArr          = array();
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
	 * @return projectposition
	 */
	function projectposition()
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
     * Return the project name from $_SESSION['projectnr']
     *
     * @return string
     */
    function getProjectName()
    {
        global $dict;
        $pr_name = $dict['noname'];
        if ($this->query(
                 sprintf('SELECT pr_name
                          FROM '.DBPREFIX.'projects
                          WHERE pr_id=%d',
                          (int) $_SESSION['projectnr']),SQL_INIT,SQL_ASSOC))
		{
			if (!empty($this->record))
			     $pr_name = $this->record['pr_name'];
		}
		return $pr_name;
    }

    /**
     * Recursive function for all Nodes
     *
     * @param integer $pr_id
     * @param integer $parent_id
     * @param integer $level
     * @param integer $SiblingID
     * @return $this->nodesArr
     */
    function getNodes(  $pr_id,
                        $parent_id = 0,
                        $level     = 0,
                        $SiblingID = '')
    {
		$db = new SQL();
		$db->connect($this->dsn);

        $sql = sprintf('SELECT prpos_id,
                               prpos_ordernumber,
                               prpos_parent_id,
                               prpos_project_id,
                               prpos_name,
                               prpos_status
		                FROM '.DBPREFIX.'projectpos
		                WHERE prpos_parent_id = %d
		                  AND prpos_project_id= %d
	                    ORDER BY prpos_ordernumber',
		                (int) $parent_id,
		                (int) $pr_id);
        if ($db->query($sql))
		{
			while($db->next(SQL_ASSOC))
			{
				$projectposition_foo = new projectposition_foo();
				$projectposition_foo->prpos_id              = $db->record['prpos_id'];
				$projectposition_foo->prpos_ordernumber     = $db->record['prpos_ordernumber'];
				$projectposition_foo->prpos_parent_id       = $db->record['prpos_parent_id'];
				$projectposition_foo->prpos_project_id      = $db->record['prpos_project_id'];
				$projectposition_foo->prpos_name            = $db->record['prpos_name'];
				$projectposition_foo->prpos_status          = $db->record['prpos_status'];
				$projectposition_foo->level                 = $level;
				$projectposition_foo->SiblingID = $projectposition_foo->prpos_parent_id == 0
				                                ? $projectposition_foo->prpos_ordernumber
				                                : $SiblingID.'.'.$projectposition_foo->prpos_ordernumber;

		        if ($this->nodeHasChildren($projectposition_foo->prpos_id))
				{
					$projectposition_foo->child = true;
					$this->nodesArr[] = $projectposition_foo;
					$this->getNodes( $pr_id,
				                     $projectposition_foo->prpos_id,
					                 $level+1,
					                 $projectposition_foo->SiblingID );
				}
				else
				{
					$projectposition_foo->child = false;
				    $this->nodesArr[] = $projectposition_foo;
				}
			}

		}
		return $this->nodesArr;
    }

    function nodeHasChildren($prpos_id)
	{
		if (!$this->query(
		          sprintf('SELECT COUNT(prpos_id)
		                   FROM '.DBPREFIX.'projectpos
		                   WHERE prpos_parent_id = %d',
		                   (int) $prpos_id),SQL_INIT))
		{
			$this->errors[] = $this->error;
			return false;
		}
		else
		{
		    $child = empty($this->record[0]) ? 0 : $this->record[0];
		    return $child;
		}
	}


    /**
     * Get assotiative array for Smarty - Template (options list for select)
     *
     * @return Array
     */
    function getPrPosArr($pr_id)
    {
        $objArr = $this->getNodes($pr_id);

        $projectArr = array();

		foreach ($objArr as $projectposition_foo)
		{
		    $projectArr[$projectposition_foo->prpos_id] = $projectposition_foo->prpos_name;
		}

        return $projectArr;
    }

    /**
     * Check Post-Vars und Data Validation
     *
     * @return Boolean
     */
    function getPostVars ()
    {
        $projectposition_foo = new projectposition_foo();
        $event = true;

        if (empty($_POST['projectposition']))
        {
            $this->errors[] = 'err_130';
            $event = false;
        }
        else
        {
            $projectposition_foo->prpos_name = clearVars($_POST['projectposition']);
        }

        $projectposition_foo->prpos_comment = empty($_POST['prposcomment']) ?
                                              '' :
                                              clearVars($_POST['prposcomment']);

        if (!empty($_POST['projectposid']))
        {
            $projectposition_foo->prpos_id = $_POST['projectposid'];
        }

        $projectposition_foo->orderright = $_POST['orderright'];

        if (empty($_SESSION['projectnr']))
        {
            $this->errors[] = 'err_141';
            $event = false;
        }
        else
        {
            $this->prpos_project_id = $_SESSION['projectnr'];
        }


        if (empty($_POST['siblingid']))
        {
            $projectposition_foo->orderright = 2;
            $projectposition_foo->prpos_parent_id = 0;
            $this->getLastOrderNumber($projectposition_foo->prpos_parent_id,
                                      $projectposition_foo->prpos_ordernumber);
        }
        else if ($projectposition_foo->prpos_id && $_POST['siblingid'] == $projectposition_foo->prpos_id)
        {
                $projectposition_foo->noupdate = true;
        }
        else if ($projectposition_foo->prpos_id)
        {
            if ($this->isNewSiblingMyChild($projectposition_foo->prpos_id,$_POST['siblingid']))
            {
                $this->errors[] = 'err_140';
                $event = false;
            }
            elseif ($projectposition_foo->orderright == 2)
            {
                $projectposition_foo->prpos_parent_id = $_POST['siblingid'];
                $this->getLastOrderNumber($projectposition_foo->prpos_parent_id,                                                         $projectposition_foo->prpos_ordernumber);
            }
            else
            {
                $this->getParentId($_POST['siblingid'],$projectposition_foo->prpos_parent_id);
                $test = '';
                $this->getSiblingNumberById($_POST['siblingid'],$projectposition_foo->prpos_ordernumber);
                $test = '';
            }
        }
        else
        {
            if ($projectposition_foo->orderright == 2)
            {
                $projectposition_foo->prpos_parent_id = $_POST['siblingid'];
                $this->getLastOrderNumber($projectposition_foo->prpos_parent_id,                                                         $projectposition_foo->prpos_ordernumber);
            }
            else
            {
                $this->getParentId($_POST['siblingid'],$projectposition_foo->prpos_parent_id);
                $this->getSiblingNumberById($_POST['siblingid'],$projectposition_foo->prpos_ordernumber);
            }
        }

        $projectposition_foo->prpos_status = isset($_POST['prposstatus']) ? $_POST['prposstatus'] : 0;

        $this->projectposition_foo =  $projectposition_foo;

        return $event;
    }

    /**
     * Reading the last order number from projektpositions for parent_id
     * and set next number
     * as reference into variable $last_number
     *
     * @param integer $parent_id
     * @param integer $last_number
     * @return boolean
     */
    function getLastOrderNumber($parent_id,&$last_number)
    {
        $event = true;
        if (!$this->query(
                  sprintf('SELECT MAX(prpos_ordernumber)
                           FROM '.DBPREFIX.'projectpos
                           WHERE prpos_parent_id = %d',
                           (int) $parent_id),SQL_INIT))
        {
            $this->errors[] = 'err_202';
            $event = false;
        }
        else
        {
            $last_number = empty($this->record[0]) ? 1 : (int) $this->record[0]+1;
        }
        return $event;
    }

    /**
     * Reading the order number from projektpositions for prpos_id
     * and set this as reference into variable $sibling_number
     *
     * @param integer $prpos_id
     * @param integer $sibling_number
     * @return boolean
     */
    function getSiblingNumberById($prpos_id, &$sibling_number)
    {
        $event = true;
        if (!$this->query(
                  sprintf('SELECT prpos_ordernumber
                             FROM '.DBPREFIX.'projectpos
                            WHERE prpos_id = %d',
                           (int) $prpos_id),SQL_INIT))
        {
            $this->errors[] = 'err_202';
            $event = false;
        }
        else
        {
            $sibling_number = empty($this->record[0]) ? 1 : $this->record[0];
        }
        return $event;
    }

    /**
     * Sorting the order number under some parent_id
     *
     * @param integer $parent_id
     * @return boolean
     */
    function sortOrderNumber($parent_id)
    {
        $event = true;
         if (!$this->query(
                   sprintf('SELECT prpos_id,
                                   prpos_name
                            FROM '.DBPREFIX.'projectpos
                            WHERE prpos_parent_id = %d
                              AND prpos_project_id = %d
                            ORDER BY prpos_ordernumber, prpos_changed',
                            (int) $parent_id,
                            (int) $_SESSION['projectnr']),SQL_ALL, SQL_ASSOC))
        {
            $this->errors[] = 'err_202';
            $event = false;
        }
        else
        {
            $rs = $this->record;
            for ($i = 0; $i < count($rs); $i++)
            {
                if (!$this->setNewOrderNumber($rs[$i]['prpos_id'],$i+1,$parent_id))
                return false; // Don't continue by database errors
            }
        }
        return $event;
    }

    /**
     * Set new Ordernumber for projectposition
     *
     * @param integer $prpos_id
     * @param integer $prpos_ordernumber
     * @param integer $parent_id
     * @return boolean
     */
    function setNewOrderNumber( $prpos_id,
                                $prpos_ordernumber,
                                $parent_id )
    {
        $event = true;
         if (!$this->query(
                   sprintf('UPDATE '.DBPREFIX.'projectpos
                            SET prpos_ordernumber = %d,
                                prpos_parent_id   = %d
                            WHERE prpos_id        = %d',
                            (int) $prpos_ordernumber,
                            (int) $parent_id,
                            (int) $prpos_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

    /**
     * Check when new sibling is my Child
     *
     * @param integer $my_id
     * @param integer $new_sibling_id
     * @return boolean
     */
    function isNewSiblingMyChild($my_id,$new_sibling_id)
    {
        if (!$my_id) return false;
        $prpos_parent_id = 0;
        $this->getParentId($new_sibling_id,$prpos_parent_id);
        while ($prpos_parent_id != 0)
        {
        	if ($prpos_parent_id == $my_id)
        	{
        		return true;
        	}
        	else
        	{
        	    $new_sibling_id = $prpos_parent_id;
        	}
        	$this->getParentId($new_sibling_id,$prpos_parent_id);
        }
        return false;
    }

    /**
     * Reading the parent number from projektpositions for prpos_id
     * and set as reference into variable $prpos_parent_id
     *
     * @param integer $parent_id
     * @param integer $prpos_parent_id
     * @return boolean
     */
    function getParentId($prpos_id,&$prpos_parent_id)
    {
        $event = true;
        if (!$this->query(
                  sprintf('SELECT prpos_parent_id
                             FROM '.DBPREFIX.'projectpos
                           WHERE prpos_id = %d',
                           (int) $prpos_id),SQL_INIT))
        {
            $this->errors[] = 'err_202';
            $event = false;
        }
        else
        {
            $prpos_parent_id = (int) $this->record[0];
        }
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

        if (!isset($this->projectposition_foo) || !is_object($this->projectposition_foo))
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
        global $user;
        $this->projectposition_foo->prpos_id = $this->get_last_id('projectpos','prpos_id') + 1;
        if (!$this->query(
                  sprintf('INSERT INTO '.DBPREFIX."projectpos
                           VALUES (%d, %d, %d, %d, '%s', '%s', %d, %d, %d, %d, %d)",
                                   (int) $this->projectposition_foo->prpos_id,
                                   (int) $this->projectposition_foo->prpos_ordernumber,
                                   (int) $this->projectposition_foo->prpos_parent_id,
                                   (int) $this->projectposition_foo->prpos_project_id,
                                   escape_string($this->projectposition_foo->prpos_name),
                                   escape_string($this->projectposition_foo->prpos_comment),
                                   time(),
                                   (int) $user->empl_id,
                                   time(),
                                   (int) $user->empl_id,
                                   (int) $this->projectposition_foo->prpos_status
                                )))
            return false;
        else
        {
            $this->sortOrderNumber($this->projectposition_foo->prpos_parent_id);
        }
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

        if (empty($this->projectposition_foo->prpos_id))
        {
            return $this->_addRecord();
        }

        if (!$this->query(sprintf('UPDATE '.DBPREFIX."projectpos
                                      SET prpos_name    = '%s',
                                          prpos_comment = '%s',
                                          prpos_changed = %d,
                                          prpos_changed_from=%d,
                                          prpos_status  = %d
                                    WHERE prpos_id      = %d",
                                    escape_string($this->projectposition_foo->prpos_name),
                                    escape_string($this->projectposition_foo->prpos_comment),
                                    time(),
                                    (int) $user->empl_id,
                                    (int) $this->projectposition_foo->prpos_status,
                                    (int) $this->projectposition_foo->prpos_id
                                )))
            $event = false;

        if (isset($this->projectposition_foo->noupdate))
        {
            return $event;
        }

        if (!$this->setNewOrderNumber( $this->projectposition_foo->prpos_id,
                                       $this->projectposition_foo->prpos_ordernumber,
                                       $this->projectposition_foo->prpos_parent_id))
        {
            return false;
        }
        else
        {
            $this->sortOrderNumber($this->projectposition_foo->prpos_parent_id);
        }

        return $event;
    }

    /**
     * Switch employees - status for AJAX - function
     *
     * @param Integer $pr_id
     * @return Boolean
     */
    function switchStatus($prpos_id,$empl_id)
    {
        if (!$this->query(
                  sprintf('SELECT prpos_status
                           FROM '.DBPREFIX.'projectpos
                           WHERE prpos_id = %d',
                           (int) $prpos_id),SQL_INIT))
        {
            return false;
        }
        else
        {
            $this->newStatus = empty($this->record[0]) ? 1 : 0;
            if (!$this->query(
                      sprintf('UPDATE '.DBPREFIX."projectpos
                                  SET prpos_status = %d,
                                      prpos_changed = %d,
                                      prpos_changed_from = %d
                                WHERE prpos_id = '%d'",
                                        (int) $this->newStatus,
                                        time(),
                                        (int) $empl_id,
                                        (int) $prpos_id)))
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
    function initById($prpos_id)
    {
        if (empty($prpos_id)) return false;

        if ($this->query(
                 sprintf('SELECT prpos_id,
                                 prpos_ordernumber,
                                 prpos_parent_id,
                                 prpos_name,
                                 prpos_comment,
                                 prpos_created,
                                 prpos_created_from,
                                 prpos_changed,
                                 prpos_changed_from,
                                 prpos_status
                          FROM '.DBPREFIX.'projectpos
                          WHERE prpos_id = %d',
                          (int) $prpos_id),SQL_INIT,SQL_ASSOC))
		{
			$rs = $this->record;
    		$projectposition = new projectposition_foo();
			$projectposition->prpos_id           = $rs['prpos_id'];
			$projectposition->prpos_ordernumber  = $rs['prpos_ordernumber'];
			$projectposition->prpos_parent_id    = $rs['prpos_parent_id'];
			$projectposition->prpos_name         = $rs['prpos_name'];
			$projectposition->prpos_comment      = $rs['prpos_comment'];
			$projectposition->prpos_created      = $rs['prpos_created'];
			$projectposition->show_created       = !empty($projectposition->prpos_created) ?
			                                       strftime(SHORTDATE,$projectposition->prpos_created):
			                                       '';
			$projectposition->prpos_created_from = $rs['prpos_created_from'];
			$projectposition->show_created_name  = $this->getUserNameById($projectposition->prpos_created_from);
    		$projectposition->prpos_changed      = $rs['prpos_changed'];
			$projectposition->show_changed       = !empty($projectposition->prpos_changed) ?
			                                       strftime(SHORTDATE,$projectposition->prpos_changed):
			                                       '';
			$projectposition->prpos_changed_from = $rs['prpos_changed_from'];
			$projectposition->show_changed_name  = $this->getUserNameById($projectposition->prpos_changed_from);
			$projectposition->prpos_status       = $rs['prpos_status'];
		}
        return $projectposition;
    }

    /**
     * Delete Project
     *
     * @param integer $pr_id
     * @return boolean
     */
    function delete($prpos_id)
    {
        $event = true;

        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'projectpos
                           WHERE prpos_id = %d',
                           (int) $prpos_id)))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        return $event;
    }

	/**
	 * get true then this employee is deletable
	 *
	 * @param integer $pr_id
	 * @return boolean
	 */
	function isDeletable($prpos_id)
	{
        if ($this->nodeHasChildren($prpos_id))
        {
            return false;
        }
        else if($this->nodeHasActivities($prpos_id))
        {
            return false;
        }
        else
        {
            return true;
        }
	}

	function nodeHasActivities($prpos_id)
	{
	    if (!$this->query(
                  sprintf('SELECT COUNT(taet_id)
                           FROM '.DBPREFIX.'taet
	                       INNER JOIN '.DBPREFIX.'todolist
	                       ON '.DBPREFIX.'taet.taet_todo_id = '.DBPREFIX.'todolist.todo_id
	                       WHERE '.DBPREFIX.'todolist.todo_prpos_id = %d',
	                       (int) $prpos_id),SQL_INIT))
	    {
	        $this->errors[] = 'err_201';
	        return true;
	    }
	    else
	    {
	        return $this->record[0];
	    }
	}

    /**
     *  Get first enabled projectposition for default
     *
     * @param integer $project_id
     * @return integer prpos_id
     */
	function get_first_projectposition()
    {
        $sql = sprintf('SELECT prpos_id
                FROM '.DBPREFIX.'projectpos
                WHERE prpos_project_id = %d
                      prpos_status = 1
                ORDER BY prpos_parent_id ASC, prpos_ordernumber ASC',
                (int) $_SESSION['default_project_id']);

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
}

class projectposition_foo
{
    var $prpos_id           = 0;
    var $prpos_ordernumber  = 0;
    var $prpos_parent_id    = 0;
    var $prpos_project_id   = 0;
    var $prpos_name         = '';
    var $prpos_comment      = '';
    var $prpos_created      = 0;
    var $prpos_created_from = 0;
    var $prpos_changed      = 0;
    var $prpos_changed_from = 0;
    var $prpos_status       = 1;

    function __construct()
    {
        $this->prpos_project_id = $_SESSION['projectnr'];
    }

    function projectposition_foo()
    {
        $this->__construct();
    }
}
?>
