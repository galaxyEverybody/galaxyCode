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

class taet extends SQL
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
	 * Construct
	 *
	 * @return taet
	 */
	function taet()
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
        $taet_foo = new taet_foo();
        $event = true;

        if (empty($_POST['activitydescription']))
        {
            $this->errors[] = 'err_300';
            $event = false;
        }
        else
        {
            $taet_foo->taet_short_desc = clearVars($_POST['activitydescription']);
        }

        $taet_foo->taet_full_desc = empty($_POST['description']) ? '' : clearVars($_POST['description']);

        if (!empty($_POST['taetid']))
        {
            $taet_foo->taet_id = $_POST['taetid'];
        }

        $taet_foo->shourActive = $_POST['shour'];
        $taet_foo->sminActive  = $_POST['smin'];
        $taet_foo->dhourActive = $_POST['dhour'];
        $taet_foo->dminActive  = $_POST['dmin'];
        $taet_foo->fhourActive = $_POST['fhour'];
        $taet_foo->fminActive  = $_POST['fmin'];

        if ($taet_foo->fhourActive > 23) $taet_foo->fminActive = 0;

        if (!empty($_POST['taetdate']))
        {
            $taet_start = getDateTime($_POST['taetdate']);
            if (!$taet_start)
            {
                $this->errors[] = 'err_302';
                $event = false;
            }

            $taet_foo->show_taetdate = $_POST['taetdate'];
            $taet_foo->taet_start = mktime($taet_foo->shourActive,$taet_foo->sminActive,0,(int) date('m',$taet_start),(int) date('d',$taet_start),(int) date('Y',$taet_start));
            $taet_foo->taet_finish = mktime($taet_foo->fhourActive,$taet_foo->fminActive,0,(int) date('m',$taet_start),(int) date('d',$taet_start),(int) date('Y',$taet_start));
            $_SESSION['taetdate'] = $taet_foo->taet_start;
        }
        else
        {
            $taet_foo->show_taetdate = '';
            $this->errors[] = 'err_302';
            $event = false;
        }




        if (empty($_POST['projectposid']) || empty($_POST['projectid']))
        {
            $this->errors[] = 'err_301';
            $event = false;
        }
        else
        {
            $taet_foo->taet_prpos_id   = $_POST['projectposid'];
            $_SESSION['prpos_id']      = $_POST['projectposid'];
            $_SESSION['projectnr']     = $_POST['projectid'];
            $taet_foo->projectActive   = $_POST['projectid'];
        }

        $this->taet_foo =  $taet_foo;

        return $event;
    }

        /**
     * Set ini data for project-Object and return this as foo-object
     *
     * @param Integer $pr_id
     * @return Object
     */
    function initById($taet_id)
    {
        if (empty($taet_id)) return false;

        if ($this->query(
                 sprintf('SELECT *
                          FROM '.DBPREFIX.'taet
                          WHERE taet_id=%d',
                          (int) $taet_id),SQL_INIT,SQL_ASSOC))
		{
			$rs = $this->record;
    		$taetObj = new taet_foo();
			$taetObj->taet_id            = $rs['taet_id'];
			$taetObj->taet_start         = $rs['taet_start'];
			$taetObj->taet_finish        = $rs['taet_finish'];
			$taetObj->taet_prpos_id      = $rs['taet_prpos_id'];
			$taetObj->projectActive      = $this->getProjectIdByPrPos($taetObj->taet_prpos_id);
			$taetObj->taet_added         = $rs['taet_added'];
			$taetObj->show_created       = !empty($taetObj->taet_added) ?
			                                       strftime(SHORTDATE,$taetObj->taet_added):
			                                       '';
			$taetObj->taet_added_from    = $rs['taet_added_from'];
			$taetObj->show_created_name  = $this->getUserNameById($taetObj->taet_added_from);
    		$taetObj->taet_changed       = $rs['taet_changed'];
			$taetObj->show_changed       = !empty($taetObj->taet_changed) ?
			                                       strftime(SHORTDATE,$taetObj->taet_changed):
			                                       '';
			$taetObj->taet_changed_from  = $rs['taet_changed_from'];
			$taetObj->show_changed_name  = $this->getUserNameById($taetObj->taet_changed_from);
			$taetObj->taet_short_desc    = $rs['taet_short_desc'];
			$taetObj->taet_full_desc     = $rs['taet_full_desc'];

			$taetObj->shourActive = (int) date('H',$taetObj->taet_start);
    	    $taetObj->sminActive  = (int) date('i',$taetObj->taet_start);
    	    $diff = $taetObj->taet_finish - $taetObj->taet_start;
    	    $diffTimeStamp = mktime(0,0,0,6,14,1971)+$diff;
    	    $taetObj->dhourActive = (int) date('H',$diffTimeStamp);
    	    $taetObj->dminActive  = (int) date('i',$diffTimeStamp);
    	    $taetObj->fhourActive = (int) date('H',$taetObj->taet_finish);
    	    $taetObj->fminActive  = (int) date('i',$taetObj->taet_finish);

	       $taetObj->show_taetdate = date(DATEFIELD,$taetObj->taet_start);
		}
        return $taetObj;
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

        if (!isset($this->taet_foo) || !is_object($this->taet_foo))
        {
           $this->errors[] = 'err_200';
           $event = false;
        }
        else
        {
            if (!$this->isSaveEnabled($this->taet_foo->taet_start,$this->taet_foo->taet_finish))
            {
                $event = false;
            }
            else if (!$this->_updateRecord())
            {
                $this->errors[] = 'err_201';
                $event = false;
            }
        }

        return $event;
    }

    function isSaveEnabled($start_date,$finish_date)
    {
        global $user;
        $where = $this->taet_foo->taet_id ? ' AND taet_id<>'.$this->taet_foo->taet_id : '';

        if (!$this->query(
                  sprintf('SELECT COUNT(taet_id)
                           FROM '.DBPREFIX.'taet
                           WHERE taet_added_from = %d
                           %s
                           AND (taet_start BETWEEN %d AND %d
                            OR taet_finish BETWEEN %d AND %d)',
                           (int) $user->empl_id,
                           $where,
                           (int) $start_date,
                           $finish_date - 1,
                           $start_date + 1,
                           $finish_date),SQL_INIT))
        {
            $this->errors[] = 'err_201';
            return false;
        }
        else
        {
            if ($this->record[0]>0)
            {
                $this->errors[] = 'err_303';
                return false;
            }
            else
            {
                if (!$this->query(
                          sprintf('SELECT taet_start
                                   FROM '.DBPREFIX.'taet
                                   WHERE taet_added_from = %d
                                   %s
                                   AND taet_finish >= %d
                                   ORDER BY taet_finish ASC',
                                   (int) $user->empl_id,
                                   $where,
                                   $finish_date),SQL_INIT))
                {
                    $this->errors[] = 'err_201';
                    return false;
                }
                else
                {
                    if (empty($this->record[0]))
                    {
                        return true;
                    }
                    else if ($this->record[0]<=$start_date)
                    {
                        $this->errors[] = 'err_303';
                        return false;
                    }
                }
            }
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
        $this->taet_foo->taet_id = $this->get_last_id('taet','taet_id') + 1;
        if (!$this->query(sprintf('INSERT INTO '.DBPREFIX."taet
                                   VALUES (%d, %d, %d, %d, %d, %d, %d, %d, '%s', '%s')",
                                   (int) $this->taet_foo->taet_id,
                                   (int) $this->taet_foo->taet_start,
                                   (int) $this->taet_foo->taet_finish,
                                   (int) $this->taet_foo->taet_prpos_id,
                                   time(),
                                   (int) $user->empl_id,
                                   time(),
                                   (int) $user->empl_id,
                                   escape_string($this->taet_foo->taet_short_desc),
                                   escape_string($this->taet_foo->taet_full_desc))))
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
        if (empty($this->taet_foo->taet_id)) return $this->_addRecord();

        if (!$this->query(
                  sprintf('UPDATE '.DBPREFIX."taet
                              SET taet_short_desc   = '%s',
                                  taet_full_desc    = '%s',
                                  taet_start        = %d,
                                  taet_finish       = %d,
                                  taet_prpos_id     = %d,
                                  taet_changed      = %d,
                                  taet_changed_from = %d
                            WHERE taet_id           = %d",
                            escape_string($this->taet_foo->taet_short_desc),
                            escape_string($this->taet_foo->taet_full_desc),
                            (int) $this->taet_foo->taet_start,
                            (int) $this->taet_foo->taet_finish,
                            (int) $this->taet_foo->taet_prpos_id,
                            time(),
                            (int) $user->empl_id,
                            (int) $this->taet_foo->taet_id)))
            return false;
        else
            return true;
    }

	/**
	 * List with activity acquisition
	 *
	 * List with activity acquisition for $date as mktime(0,0,0,(int)mm,(int)dd,(int)YYYY)
	 * and for User with $userid.
	 * Save the result as $this->taetObjList
	 * Return true or false for error handling
	 *
	 * @param integer $date
	 * @param integer $userid
	 * @return boolean
	 */
	function getTaetObjList($date, $userid=0)
	{
	    global $user;
	    if (!$userid) $userid = $user->empl_id;

	    $date1 = mktime(0,0,0,(int)date('m',$date),(int)date('d',$date),(int)date('Y',$date));
	    $date2 = mktime(23,59,59,(int)date('m',$date),(int)date('d',$date),(int)date('Y',$date));

	    $event = true;
	    if (!$this->query(
	              sprintf('SELECT taet_id,
	                              taet_start,
	                              taet_finish,
	                              taet_prpos_id,
	                              taet_prpos_id,
	                              taet_added,
	                              taet_added_from,
	                              taet_changed,
	                              taet_changed_from,
	                              taet_short_desc,
	                              taet_full_desc
	                       FROM '.DBPREFIX.'taet
	                       WHERE taet_added_from = %d
	                         AND taet_start BETWEEN %d AND %d
	                         ORDER BY taet_start',
	                       $userid,
	                       $date1,
	                       $date2),SQL_ALL,SQL_ASSOC))
        {
            $this->errors[] = 'err_201';
            $event = false;
        }
        else
        {
            $this->taetObjList = Array();
            foreach ($this->record as $rs)
            {
                $taet_foo                    = new taet_foo();
                $taet_foo->taet_id           = $rs['taet_id'];
                $taet_foo->taet_start        = $rs['taet_start'];
                $taet_foo->taet_finish       = $rs['taet_finish'];
                $taet_foo->taet_prpos_id     = $rs['taet_prpos_id'];
                $taet_foo->taet_added        = $rs['taet_added'];
                $taet_foo->taet_added_from   = $rs['taet_added_from'];
                $taet_foo->taet_changed      = $rs['taet_changed'];
                $taet_foo->taet_changed_from = $rs['taet_changed_from'];
                $taet_foo->taet_short_desc   = $rs['taet_short_desc'];
                $taet_foo->taet_full_desc    = $rs['taet_full_desc'];
                $this->taetObjList[]         = $taet_foo;
            }
        }
        return $event;
	}

    /**
     * Find out if the given time is already occupied by some activity.
     *
     * @param String $time the time to check
     * @return Wether the given time is already occupied.
     */
    function isTimeOccupied($time)
    {
        foreach ($this->taetObjList as $activity)
        {
            if ($time >= $activity->taet_start
                && $time < $activity->taet_finish)
            {
        		return true;
        	}
        }
        return false;
    }

	/**
	 * Get time list for template.
	 *
	 * @param integer $date
	 * @param integer $userid
	 * @return array
	 */
	function getTaetTableList($date,$userid)
	{
        global $usrcfg;
        $starttoday  = mktime($usrcfg->starthour,
                              $usrcfg->startmin,
                              0,
                              (int) date('m',$date),
                              (int) date('d',$date),
                              (int) date('Y',$date));
        $finishtoday = mktime($usrcfg->finishhour,
                              $usrcfg->finishmin,
                              0,
                              (int) date('m',$date),
                              (int) date('d',$date),
                              (int) date('Y',$date));

	    if (!$this->getTaetObjList($date,$userid)) {
            return array();
        }
        $first_taet_start = count($this->taetObjList) > 0
                          ? $this->taetObjList[0]->taet_start : $starttoday;
        if ($first_taet_start > $starttoday) {
            $first_taet_start = $starttoday;
        }

        $last_taet_start = count($this->taetObjList) > 0
                         ? $this->taetObjList[count($this->taetObjList) - 1]->taet_finish
                         : $finishtoday;
        if ($last_taet_start < $finishtoday) {
            $last_taet_start = $finishtoday;
        }

        $taetTableListObjArr = array();
        for ($i = $first_taet_start; $i <= $last_taet_start; $i += $usrcfg->minstep*60)
        {
            $timeObj = new tabletime;
            $timeObj->hour = date('H',$i);
            $timeObj->min  = date('i',$i);
            $timeObj->isOccupied = $this->isTimeOccupied($i);
            $taetTableListObjArr[] = $timeObj;
        }
        $this->height = ceil($usrcfg->minstep*1.4);
        $this->KTA = $first_taet_start;
        $this->STEP = $usrcfg->minstep;
        return $taetTableListObjArr;
	}

    /**
     * Get all projects for $empl_id as Member these projects
     * changed am 24. Jul 2006: Get all ACTIVE project ....
     *
     * Return true or false for error handling
     *
     * @param integer $empl_id
     * @return boolean
     */
    function getMemberProjects($empl_id=0)
    {
       global $dict;
       $event = true;
       $this->projectsArray = array();
       $where = $empl_id ? ' WHERE '.DBPREFIX.'projectmembers.'.'member_id='.$empl_id : '';
       if ($this->query(
                sprintf('SELECT pr_name,
                                pr_id
                         FROM '.DBPREFIX.'projects
                         LEFT JOIN '.DBPREFIX.'projectmembers
                         ON '.DBPREFIX.'projects.pr_id = '.DBPREFIX.'projectmembers.project_id
                         %s
                         ORDER BY pr_name',
                         $where), SQL_ALL, SQL_ASSOC))
		{
			foreach ($this->record as $rs)
			{
				$this->projectsArray[$rs['pr_id']] = $rs['pr_name'];
			}
		}
		else
		{
		  $this->errors[] = 'err_202'    ;
		  $event = false;
		}
        return $event;
    }

    /**
     * Get the project ID for Project position
     *
     * @param integer $prpos_id
     * @return boolean
     */
    function getProjectIdByPrPos($prpos_id)
    {
        $pr_id = 0;
        if (!$this->query(
                  sprintf('SELECT prpos_project_id
                           FROM '.DBPREFIX.'projectpos
                           WHERE prpos_id = %d',
                           (int) $prpos_id),SQL_INIT))
        {
            $this->errors[]='err_201';
        }
        else
        {
            $pr_id = $this->record[0];
        }
        return $pr_id;
    }

    function delete($taet_id)
    {
        if (!$this->query(
                  sprintf('DELETE FROM '.DBPREFIX.'taet
                           WHERE taet_id = %d',
                           (int) $taet_id)))
        {
            $this->errors[]='err_202';
            return false;
        }
        else
            return true;
    }

    /**
     * get the statistic for $timestamp for (all) $users and (all) $projectpos
     *
     * @param integer $timestamp
     * @param integer $users
     * @param integer $projectpos
     * @return array
     */
    function getStatistic($timestamp,$users,$projectpos)
    {
        global $dict;
        if (!$timestamp) $timestamp = time();

        $thisDay    = (int) date('d',$timestamp);
        $thisMonth  = (int) date('m',$timestamp);
        $thisYear   = (int) date('Y',$timestamp);
        $dayOfWeek  = (int) date('w',$timestamp);
        if ($dayOfWeek == 0) $dayOfWeek = 7;
        //$dayOfWeek  = $dayOfWeek == 0 ? 7 : $dayOfWeek + 1;
        $dayOfWeek--;
        $lastDayOfMonth = (int) date('t',$timestamp);

        $startThisDay   = mktime(0,0,0,$thisMonth,$thisDay,$thisYear);
        $startThisWeek  = $startThisDay - $dayOfWeek*24*60*60;
        $startThisMonth = mktime(0,0,0,$thisMonth,1,$thisYear);
        $startThisYear  = mktime(0,0,0,1,1,$thisYear);

        $finishThisDay  = $startThisDay + 24*60*60;
        $finishThisWeek = $startThisWeek+24*60*60*7;
        $finishThisMonth = mktime(23,59,59,$thisMonth,$lastDayOfMonth,$thisYear)+1;
        $finishThisYear  = mktime(23,59,59,12,31,$thisYear)+1;

        $erg['thisDayName']   = strftime(SHORTDATES,$timestamp);
        $erg['thisWeekName']  = sprintf($dict['week'],date('W',$timestamp)) .
                             '<br />'.date(DATEFIELD,$startThisWeek).
                             ' - '.date(DATEFIELD,$finishThisWeek-1);
        $erg['thisMonthName'] = '1 '.strftime(MMYYYY,$startThisMonth)
                                    .' -<br />'
                                    .date('t',$startThisMonth)
                                    .' '
                                    .strftime(MMYYYY,$startThisMonth);
        $erg['thisYearName']  = '1 '.strftime(MMYYYY,$startThisYear)
                                    .' -<br />'
                                    .date('t',$timestamp)
                                    .' '
                                    .strftime(MMYYYY,$finishThisYear-1);
        $erg['thisDay']   = $this->getHours($startThisDay,$finishThisDay,$users,$projectpos);
        $erg['thisWeek']  = $this->getHours($startThisWeek,$finishThisWeek,$users,$projectpos);
        $erg['thisMonth'] = $this->getHours($startThisMonth,$finishThisMonth,$users,$projectpos);
        $erg['thisYear']  = $this->getHours($startThisYear,$finishThisYear,$users,$projectpos);
        $erg['thisMonthStartTime']   = $startThisMonth;
        $erg['thisMonthFinishTime']  = $finishThisMonth-1;
        return $erg;
    }

    /**
     * Get sum of hours between two dates for (all) users and (all) projects
     *
     * @param integer $from
     * @param integer $upto
     * @param array $users
     * @param array $projectpos
     * @return integer
     */
    function getHours( $from,
                       $upto,
                       $users,
                       $projectpos )
    {
        foreach ($users as $user_id)
        {
            empty($userswhere) ? $userswhere = '(taet_added_from='.$user_id :
                                 $userswhere.' OR taet_added_from='.$user_id;
        }

        $userswhere = empty($userswhere) ? '' :
                      $userswhere . ') AND ';

        foreach ($projectpos as $prpos_id)
        {
            empty($projectposwhere) ? $projectposwhere = '(taet_prpos_id='.$prpos_id :
                                      $projectposwhere.' OR taet_prpos_id='.$prpos_id;
        }

        $projectposwhere = empty($projectposwhere) ? '' :
                           $projectposwhere . ') AND ';

        if (!$this->query(
                  sprintf('SELECT taet_start,
                                  taet_finish,
                                  taet_id
                           FROM '.DBPREFIX.'taet
                           WHERE %s %s
                           taet_start BETWEEN %d AND %d',
                           $projectposwhere,
                           $userswhere,
                           $from,
                           --$upto),SQL_ALL,SQL_ASSOC))
        {
            $this->errors[] = 'err_201';
            return 0;
        }
        else
        {
            $std = 0;
            foreach ($this->record as $rs)
            {
                $std += ($rs['taet_finish']-$rs['taet_start'])/60;
            }
            $stdFull = $std%60;

            $minRest = $std  - $stdFull*60;
            $minDec = $minRest/60;
            return $stdFull+$minDec;
        }
    }

    function getExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options)
    {
        if ($groupby == 'time')
        {
            return $this->getTimeExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options);
        }

        if ($groupby == 'projects')
        {
            return $this->getProjectsExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options);
        }

        global $dict;

        $show_users = false;
        $show_prpos = false;
        foreach ($options as $option)
        {
            if ($option == 'users')
                $show_users = true;

            if ($option == 'prpos')
                $show_prpos = true;
        }

        foreach ($users as $user_id)
        {
            empty($userswhere) ? $userswhere = '(taet_added_from='.$user_id :
                                 $userswhere = $userswhere.' OR taet_added_from='.$user_id;
        }
        $userswhere = empty($userswhere) ? '' :
                      $userswhere . ') AND ';

        foreach ($projectsarr as $pr_id)
        {
            empty($projectswhere) ? $projectswhere = '(pr_id='.$pr_id :
                                    $projectswhere = $projectswhere.' OR pr_id='.$pr_id;
        }

        $projectswhere = empty($projectswhere) ? 'pr_id=0 ' :
                         $projectswhere . ') AND ';

        if (empty($user_id) || $expstart < mktime(0,0,0,1,1,2000) || $expfinish < mktime(0,0,0,1,1,2000) || empty($pr_id)) return '';

        $orderAddon = $show_users ? 'taet_added_from, ' : '';

        $sql = sprintf('SELECT empl_id,
                               empl_surname,
                               empl_firstname,
                               pr_id,
                               prpos_id,
                               SUM((taet_finish - taet_start)/60) as time,
                               pr_name,
                               prpos_name
                        FROM (('.DBPREFIX.'taet INNER JOIN '.DBPREFIX.'projectpos
                            ON prpos_id = taet_prpos_id)
                        INNER JOIN '.DBPREFIX.'projects
                            ON  prpos_project_id = pr_id)
                        INNER JOIN '.DBPREFIX.'employees
                            ON empl_id = taet_added_from
                        WHERE %s %s taet_finish BETWEEN %d AND %d
                        GROUP BY taet_prpos_id
                        ORDER BY %s pr_id, prpos_name, taet_start',
                        $projectswhere,
                        $userswhere,
                        $expstart,
                        $expfinish,
                        $orderAddon);

        if (!$this->query($sql,SQL_ALL,SQL_ASSOC))
        {
            return array();
        }
        else
        {
            $startdate = date(DATEFIELD,$expstart);
            $finishdate = date(DATEFIELD,$expfinish-1);
            $domain = $_SERVER['HTTP_HOST'].WEBROOT_PATH;
            $erg[] = <<<END
<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/xsl" href="http://{$domain}export.xsl" ?>
<activity title="{$dict['activity_acquisition']}" startdate="$startdate" finishdate="$finishdate">
END;
            $empl_id    = 0;
            $pr_id      = 0;
            $project_name = '';
            $user_name  = '';
            $sumproject = 0;
            $sumuser    = 0;
            $sumtotal   = 0;
            $first_record = true;

            if (empty($this->record))
            {
                $erg[]      = '</activity>';
                return $erg;
            }

            foreach ($this->record as $rs)
            {
                $timeinsecond = $rs['time'];

                $user_new       = $empl_id    == $rs['empl_id'] ? false : true;
                $project_new    = $project_name == htmlspecialchars($rs['pr_name']) ? false : true;

                if ($user_new)
                {
                    $project_new = true;
                }


                if ($user_new || $project_new)
                {
                    if (!$first_record)
                    {
                        if ($project_new)
                        {
                            $erg[]      = "\t\t\t".'<projectsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$project_name).'">'.getHoursFormatted($sumproject).'</projectsum>';
                            $erg[]      = "\t\t".'</project>';
                            $sumproject = 0;
                        }

                        if ($show_users && $user_new)
                        {
                            if (count($users) > 1)
                                $erg[] = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$user_name).'">'.getHoursFormatted($sumuser).'</usersum>';
                            $erg[]      = '</user>';
                            $sumuser    = 0;
                        }
                    }


                    $first_record = false;
                    $project_name = htmlspecialchars($rs['pr_name']);
                    $user_name    = $rs['empl_surname'].', '.$rs['empl_firstname'];
                    $empl_id      = $rs['empl_id'];

                    if ($show_users && $user_new)
                    {
                        $erg[] = '<user id="'.$empl_id.'" surname="'.$rs['empl_surname'].'" firstname="'.$rs['empl_firstname'].'">';
                    }

                    if ($project_new)
                    {
                        $erg [] = "\t".'<project projectid="'.$rs['pr_id'].'" name="'.$project_name.'">';
                    }
                }

                $prpos_name = htmlspecialchars($rs['prpos_name']);

                if ($show_prpos)
                {
                    $erg[] = "\t\t".'<prposition>';
                    $erg[] = "\t\t\t".'<prposname>'.$prpos_name.'</prposname>';
                    $erg[] = "\t\t\t".'<duration suffix="'.$dict['hourshort'].'">'.getHoursFormatted($timeinsecond).'</duration>';
                    $erg[] = "\t\t".'</prposition>';
                }

                $sumproject += $timeinsecond;
                $sumuser    += $timeinsecond;
                $sumtotal   += $timeinsecond;
            }

            $erg[]      = "\t\t\t".'<projectsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$project_name).'">'.getHoursFormatted($sumproject).'</projectsum>';
            $erg[]      = "\t\t".'</project>';

            if ($show_users)
            {
                if (count($users) > 1)
                    $erg[]      = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$user_name).'">'.getHoursFormatted($sumuser).'</usersum>';
                else
                    $erg[]      = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.$dict['summtotal'].'">'.getHoursFormatted($sumuser).'</usersum>';
                $erg[]      = '</user>';
            }

            if (count($users)>1)
                $erg[]      = '<totalsum suffix="'.$dict['hourshort'].'" name="'.$dict['summtotal'].'">'.getHoursFormatted($sumtotal).'</totalsum>';
            $erg[]      = '</activity>';
            return $erg;
        }
    }

    function getTimeExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options)
    {
        global $dict;

        $show_month = false;
        $show_week  = false;
        $show_day   = false;
        $show_taet  = false;
        foreach ($options as $option)
        {
            if ($option == 'month') {
                $show_month = true;
            }

            if ($option == 'week') {
                $show_week = true;
            }

            if ($option == 'day') {
                $show_day = true;
            }

            if ($option == 'activity') {
                $show_taet = true;
            }
        }

        foreach ($users as $user_id)
        {
            empty($userswhere) ? $userswhere = '(taet_added_from='.$user_id :
                                 $userswhere = $userswhere.' OR taet_added_from='.$user_id;
        }
        $userswhere = empty($userswhere) ? '' :
                      $userswhere . ') AND ';

        foreach ($projectsarr as $pr_id)
        {
            empty($projectswhere) ? $projectswhere = '(pr_id='.$pr_id :
                                    $projectswhere = $projectswhere.' OR pr_id='.$pr_id;
        }

        $projectswhere = empty($projectswhere) ? 'pr_id=0 ' :
                         $projectswhere . ') AND ';

        if ( empty($user_id) ||
             $expstart < mktime(0,0,0,1,1,2000) ||
             $expfinish < mktime(0,0,0,1,1,2000) ||
             empty($pr_id))
        {
            return '';
        }

        $sql = sprintf('SELECT taet_id,
                               empl_id,
                               empl_surname,
                               empl_firstname,
                               pr_id,
                               prpos_id,
                               (taet_finish - taet_start)/60 as time,
                               taet_start,
                               taet_finish,
                               pr_name,
                               prpos_name
                        FROM (('.DBPREFIX.'taet INNER JOIN '.DBPREFIX.'projectpos
                            ON prpos_id = taet_prpos_id)
                        INNER JOIN '.DBPREFIX.'projects
                            ON  prpos_project_id = pr_id)
                        INNER JOIN '.DBPREFIX.'employees
                            ON empl_id = taet_added_from
                        WHERE %s %s taet_finish BETWEEN %d AND %d
                        ORDER BY taet_added_from, taet_start',
                        $projectswhere,
                        $userswhere,
                        (int) $expstart,
                        (int) $expfinish);

        if (!$this->query($sql,SQL_ALL,SQL_ASSOC))
        {
            return array();
        }
        else
        {
            $startdate = date(DATEFIELD,$expstart);
            $finishdate = date(DATEFIELD,$expfinish-1);
            $domain = $_SERVER['HTTP_HOST'].WEBROOT_PATH;
            $erg[] = <<<END
<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/xsl" href="http://{$domain}export_time.xsl" ?>
<activity title="{$dict['activity_acquisition']}" startdate="$startdate" finishdate="$finishdate">
END;
            $empl_id    = 0;
            $month_name = '';
            $day_name   = '';
            $user_name  = '';
            $sumtotal   = 0;
            $sumuser    = 0;
            $summonth   = 0;
            $sumweek    = 0;
            $sumday     = 0;
            $first_record = true;

            if (empty($this->record))
            {
                $erg[]      = '</activity>';
                return $erg;
            }

            foreach ($this->record as $rs)
            {
                $timeinsecond = $rs['time'];

                $user_new     = $empl_id    == $rs['empl_id'] ? false : true;
                $month_new    = $month_name == strftime(MMYYYY,$rs['taet_start']) ? false : true;
                $day_new      = $day_name   == strftime(FULLDATE,$rs['taet_start']) ? false : true;

                if ($user_new)
                {
                    $month_new = true;
                    $day_new   = true;
                }

                if ($month_new)
                {
                    $day_new   = true;
                }

                if ($user_new || $month_new || $day_new)
                {
                    if (!$first_record)
                    {
                        if ($show_day && $day_new)
                        {
                            $erg[]      = "\t\t\t".'<daysum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$day_name).'">'.getHoursFormatted($sumday).'</daysum>';
                            $erg[]      = "\t\t".'</day>';
                            $sumday     = 0;
                        }

                        if ($show_month && $month_new)
                        {
                            $erg[]      = "\t\t".'<monthsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$month_name).'">'.getHoursFormatted($summonth).'</monthsum>';
                            $erg[]      = "\t".'</month>';
                            $summonth   = 0;
                        }

                        if ($user_new)
                        {
                            if (count($users) > 1)
                                $erg[]      = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$user_name).'">'.getHoursFormatted($sumuser).'</usersum>';
                            $erg[]      = '</user>';
                            $sumuser    = 0;
                        }
                    }

                    $first_record = false;

                    $month_name   = strftime(MMYYYY,$rs['taet_start']);
                    $day_name     = strftime(FULLDATE,$rs['taet_start']);
                    $user_name     = $rs['empl_surname'].', '.$rs['empl_firstname'];
                    $empl_id      = $rs['empl_id'];


                    if ($user_new)
                    {
                        $erg[] = '<user id="'.$empl_id.'" surname="'.$rs['empl_surname'].'" firstname="'.$rs['empl_firstname'].'">';
                    }

                    if ($show_month && $month_new)
                    {
                        $erg[] = "\t".'<month name="'.$month_name.'">';
                    }

                    if ($show_day && $day_new)
                    {
                        $erg[] = "\t\t".'<day name="'.$day_name.'">';
                    }
                }

                $project_name = htmlspecialchars($rs['pr_name']);
                $position_name= htmlspecialchars($rs['prpos_name']);

                if ($show_taet)
                {
                  $erg[]      = "\t\t\t".'<record taetnumb="'.$rs['taet_id'].'">';
                  $erg[]      = "\t\t\t\t".'<projectname>'.$project_name.'</projectname>';
                  $erg[]      = "\t\t\t\t".'<prposname>'.$position_name.'</prposname>';
                  $erg[]      = "\t\t\t\t".'<start>'.date('H:i',$rs['taet_start']).'</start>';
                  $erg[]      = "\t\t\t\t".'<finish>'.date('H:i',$rs['taet_finish']).'</finish>';
                  $erg[]      = "\t\t\t\t".'<duration suffix="'.$dict['hourshort'].'">'.getHoursFormatted($timeinsecond).'</duration>';
                  $erg[]      = "\t\t\t".'</record>';
                }

                $sumday   += $timeinsecond;
                $summonth += $timeinsecond;
                $sumuser  += $timeinsecond;
                $sumtotal += $timeinsecond;
            }

            if ($show_day)
            {
                $erg[]      = "\t\t\t".'<daysum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$day_name).'">'.getHoursFormatted($sumday).'</daysum>';
                $erg[]      = "\t\t".'</day>';
            }

            if ($show_month)
            {
                $erg[]      = "\t\t".'<monthsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$month_name).'">'.getHoursFormatted($summonth).'</monthsum>';
                $erg[]      = "\t".'</month>';
            }

            if (count($users) > 1)
                $erg[]      = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$user_name).'">'.getHoursFormatted($sumuser).'</usersum>';
            else
                $erg[]      = "\t".'<usersum suffix="'.$dict['hourshort'].'" name="'.$dict['summtotal'].'">'.getHoursFormatted($sumuser).'</usersum>';
            $erg[]      = '</user>';
            $erg[]      = '<totalsum suffix="'.$dict['hourshort'].'" name="'.$dict['summtotal'].'">'.getHoursFormatted($sumtotal).'</totalsum>';
            $erg[]      = '</activity>';
            return $erg;
        }
    }

    function getProjectsExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options)
    {
        if ($groupby == 'time') return $this->getTimeExport($expstart, $expfinish, $users, $projectsarr, $groupby, $options);

        global $dict;

        $show_prpos = false;
        $show_users = false;
        foreach ($options as $option)
        {
            if ($option == 'users') {
                $show_users = true;
            }

            if ($option == 'prpos') {
                $show_prpos = true;
            }
        }

        foreach ($users as $user_id)
        {
            empty($userswhere) ? $userswhere = '(taet_added_from='.$user_id :
                                 $userswhere = $userswhere.' OR taet_added_from='.$user_id;
        }
        $userswhere = empty($userswhere) ? '' :
                      $userswhere . ') AND ';

        foreach ($projectsarr as $pr_id)
        {
            empty($projectswhere) ? $projectswhere = '(pr_id='.$pr_id :
                                    $projectswhere = $projectswhere.' OR pr_id='.$pr_id;
        }

        $projectswhere = empty($projectswhere) ? 'pr_id=0 ' : $projectswhere . ') AND ';

        if ( empty($user_id) ||
             $expstart < mktime(0,0,0,1,1,2000) ||
             $expfinish < mktime(0,0,0,1,1,2000) ||
             empty($pr_id))
        {
            return '';
        }

        $orderAddon = $show_prpos ? 'prpos_name, ' : '';

        $sql = sprintf('SELECT empl_id,
                               empl_surname,
                               empl_firstname,
                               pr_id,
                               prpos_id,
                               (taet_finish - taet_start)/60 as time,
                               pr_name,
                               prpos_name
                        FROM (('.DBPREFIX.'taet INNER JOIN '.DBPREFIX.'projectpos
                            ON prpos_id = taet_prpos_id)
                        INNER JOIN '.DBPREFIX.'projects
                            ON  prpos_project_id = pr_id)
                        INNER JOIN '.DBPREFIX.'employees
                            ON empl_id = taet_added_from
                        WHERE %s
                        %s
                        taet_finish BETWEEN %d AND %d
                        ORDER BY pr_id, %s empl_surname, taet_start',
                        $projectswhere,
                        $userswhere,
                        $expstart,
                        $expfinish,
                        $orderAddon);

        if (!$this->query($sql,SQL_ALL,SQL_ASSOC))
        {
            return array();
        }
        else
        {
            $startdate = date(DATEFIELD,$expstart);
            $finishdate = date(DATEFIELD,$expfinish-1);
            $domain = $_SERVER['HTTP_HOST'].WEBROOT_PATH;
            $erg[] = <<<END
<?xml version="1.0" encoding="UTF-8" ?>
<?xml-stylesheet type="text/xsl" href="http://{$domain}export_projects.xsl" ?>
<activity title="{$dict['activity_acquisition']}" startdate="$startdate" finishdate="$finishdate">
END;
            $empl_id    = 0;
            $pr_id      = 0;
            $project_name = '';
            $prpos_name = '';
            $user_name  = '';
            $sumuser    = 0;
            $sumproject = 0;
            $sumprpos   = 0;
            $sumtotal   = 0;
            $first_record = true;

            if (empty($this->record))
            {
                $erg[]      = '</activity>';
                return $erg;
            }

            foreach ($this->record as $rs)
            {
                $timeinsecond = $rs['time'];

                $project_new    = $project_name == htmlspecialchars($rs['pr_name']) ? false : true;
                $prpos_new      = $prpos_name   == htmlspecialchars($rs['prpos_name']) ? false : true;
                $user_new       = $empl_id      == $rs['empl_id'] ? false : true;

                if ($project_new)
                {
                    $prpos_new = true;
                    $user_new  = true;
                }

                if ($prpos_new && $show_prpos)
                {
                    $user_new  = true;
                }

                if ($prpos_new || $project_new || $user_new)
                {
                    if (!$first_record)
                    {
                        if ($show_users && $user_new)
                        {
                            $erg[] = "\t\t\t\t".'<username>'.$user_name.'</username>';
                            $erg[] = "\t\t\t\t".'<duration suffix="'.$dict['hourshort'].'">'.getHoursFormatted($sumuser).'</duration>';
                            $erg[] = "\t\t\t".'</user>';
                            $sumuser   = 0;
                        }

                        if ($show_prpos && $prpos_new)
                        {
                            $erg[] = "\t\t\t".'<prpossum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$prpos_name).'">'.getHoursFormatted($sumprpos).'</prpossum>';
                            $erg[]      = "\t\t".'</prposition>';
                            $sumprpos   = 0;
                        }

                        if ($project_new)
                        {
                            $erg[]      = "\t\t".'<projectsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$project_name).'">'.getHoursFormatted($sumproject).'</projectsum>';
                            $erg[]      = "\t".'</project>';
                            $sumproject = 0;
                        }

                    }

                    $first_record = false;
                    $user_name    = $rs['empl_surname'].', '.$rs['empl_firstname'];
                    $empl_id      = $rs['empl_id'];
                    $project_name = htmlspecialchars($rs['pr_name']);
                    $prpos_name   = htmlspecialchars($rs['prpos_name']);
                    $prpos_id     = $rs['prpos_id'];

                    if ($project_new)
                    {
                        $erg [] = "\t".'<project projectid="'.$rs['pr_id'].'" name="'.$project_name.'">';
                    }

                    if ($prpos_new && $show_prpos)
                    {
                        $erg [] = "\t\t".'<prposition prposid="'.$prpos_id.'" name="'.$prpos_name.'">';
                    }
                     if ($user_new && $show_users)
                    {
                        $erg[] = "\t\t\t".'<user userid="'.$empl_id.'">';
                    }
                }


                $sumuser    += $timeinsecond;
                $sumproject += $timeinsecond;
                $sumprpos   += $timeinsecond;
                $sumtotal   += $timeinsecond;
            }

            if ($show_users)
            {
                $erg[] = "\t\t\t\t".'<username>'.$user_name.'</username>';
                $erg[] = "\t\t\t\t".'<duration suffix="'.$dict['hourshort'].'">'.getHoursFormatted($sumuser).'</duration>';
                $erg[] = "\t\t\t".'</user>';
            }

            if ($show_prpos)
            {
                $erg[] = "\t\t\t".'<prpossum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$prpos_name).'">'.getHoursFormatted($sumprpos).'</prpossum>';
                $erg[]      = "\t\t".'</prposition>';
            }

            $erg[]      = "\t\t".'<projectsum suffix="'.$dict['hourshort'].'" name="'.sprintf($dict['summfor'],$project_name).'">'.getHoursFormatted($sumproject).'</projectsum>';
            $erg[]      = "\t".'</project>';

            $erg[]      = '<totalsum suffix="'.$dict['hourshort'].'" name="'.$dict['summtotal'].'">'.getHoursFormatted($sumtotal).'</totalsum>';
            $erg[]      = '</activity>';
            return $erg;
        }
    }
}

class tabletime
{
    var $hour = 0;
    var $min  = 0;
    var $isOccupied = false;
}

class taet_foo
{
    var $taet_id           = 0;
	var $taet_start        = 0;
	var $taet_finish       = 0;
	var $taet_todo_id      = 0;
	var $taet_added        = 0;
	var $taet_added_from   = 0;
	var $taet_changed      = 0;
	var $taet_changed_from = 0;
	var $taet_short_desc   = '';
	var $taet_full_desc    = '';

	function __construct()
	{
	    // Constructor
	    if (!isset($_SESSION['taetdate'])) $_SESSION['taetdate'] = time();
	    $this->setTimeScala();
	    $this->projectActive = isset($_SESSION['projectnr']) ? $_SESSION['projectnr'] : 0;
	    $_SESSION['projectnr'] = $this->projectActive;

	    $this->taet_prpos_id = isset($_SESSION['prpos_id']) ? $_SESSION['prpos_id'] : 0;
	    $_SESSION['prpos_id'] = $this->taet_prpos_id;
	}

	function taet_foo()
	{
	    // Constructor for php4
	    $this->__construct();
	}

	function setTimeScala()
	{
	    global $usrcfg;

	    $this->taet_start = mktime($usrcfg->starthour,
	                               $usrcfg->startmin,
	                               0,
	                               (int) date('m',$_SESSION['taetdate']),
	                               (int) date('d',$_SESSION['taetdate']),
	                               (int) date('Y',$_SESSION['taetdate']));
	    $this->taet_finish     = $this->taet_start + $usrcfg->durhour*60*60 + $usrcfg->durmin*60;
	    $this->shourActive     = $usrcfg->starthour;
	    $this->sminActive      = $usrcfg->startmin;
	    $this->dhourActive     = $usrcfg->durhour;
	    $this->dminActive      = $usrcfg->durmin;
	    $this->_shourActive    = $usrcfg->starthour;
	    $this->_sminActive     = $usrcfg->startmin;
	    $this->_dhourActive    = $usrcfg->durhour;
	    $this->_dminActive     = $usrcfg->durmin;
	    $this->fhourActive     = (int) date('H',$this->taet_finish);
	    $this->fminActive      = (int) date('i',$this->taet_finish);
	    $this->show_taetdate   = date(DATEFIELD,$this->taet_start);

	    for ($i = 0; $i < 25; $i++)
	    {
	        $this->hoursArr[$i] = sprintf('%02d',$i);
	        if ($i < 24)
	           $this->dhoursArr[$i] = sprintf('%02d',$i);
	    }

	    $step = TAETMINSTEP < 10 ? 10 : TAETMINSTEP;
	    for ($i = 0; $i < 60; $i += $step)
	    {
	        $this->minArr[$i] = sprintf('%02d',$i);
	    }
	    return true;
	}
}
?>