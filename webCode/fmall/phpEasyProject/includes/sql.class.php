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


// define the query types
define('SQL_NONE', 1);
define('SQL_ALL', 2);
define('SQL_INIT', 3);

// define the query formats
define('SQL_ASSOC', 1);
define('SQL_INDEX', 2);

class SQL {

    var $db = null;
    var $result = null;
    var $error = null;
    var $record = null;

    /**
     * class constructor
     */
    function SQL() { }

    /**
     * connect to the database
     *
     * @param string $dsn the data source name
     */
    function connect($dsn) {
        $this->db = DB::connect($dsn);
        if(DB::isError($this->db)) {
            $this->error = $this->db->getMessage();
            return false;
        }

        if (!defined('UTFEXPICIT'))
        {
            define('UTFEXPICIT',false);
        }

        if (UTFEXPICIT == true)
        {
            $this->db->query("SET NAMES 'utf8'");
            $this->db->query("SET CHARACTER SET 'utf8'");
        }
        return true;
    }

    /**
     * disconnect from the database
     */
    function disconnect() {
        $this->db->disconnect();
    }

    /**
     * query the database
     *
     * @param string $query the SQL query
     * @param string $type the type of query
     * @param string $format the query format
     */
    function query($query, $type = SQL_NONE, $format = SQL_INDEX) {
		if (defined('DEBUG') && DEBUG === true) echo "<span style=\"font-size:11px; color: blue;\">$query</span><br /><br />";
        $this->record = array();
        $_data = array();

        // determine fetch mode (index or associative)
        $_fetchmode = ($format == SQL_ASSOC) ? DB_FETCHMODE_ASSOC : null;

        $this->result = $this->db->query($query);
        if (DB::isError($this->result)) {
            $this->error = $this->result->getMessage();
            return false;
        }
        switch ($type) {
            case SQL_ALL:
                // get all the records
                while($_row = $this->result->fetchRow($_fetchmode)) {
                    $_data[] = $_row;
                }
                $this->result->free();
                $this->record = $_data;
                break;
            case SQL_INIT:
                // get the first record
                $this->record = $this->result->fetchRow($_fetchmode);
                break;
            case SQL_NONE:
            default:
                // records will be looped over with next()
                break;
        }
        return true;
    }

    /**
     * connect to the database
     *
     * @param string $format the query format
     */
    function next($format = SQL_INDEX) {
        // fetch mode (index or associative)
        $_fetchmode = ($format == SQL_ASSOC) ? DB_FETCHMODE_ASSOC : null;
        if ($this->record = $this->result->fetchRow($_fetchmode)) {
            return true;
        } else {
            $this->result->free();
            return false;
        }
    }

	function get_last_id($table,$idField)
	{
		$this->query('SELECT MAX('.$idField.') FROM '.DBPREFIX.$table,SQL_INIT);
		return $this->record[0];
	}

	function getUserNameById($empl_id)
    {
        if ($this->query(
                 sprintf('SELECT empl_surname,
                                 empl_firstname
                          FROM '.DBPREFIX.'employees
                          WHERE empl_id = %d',
                          (int) $empl_id),SQL_INIT,SQL_ASSOC))
		{
			if (!empty($this->record))
			{
		      $rs = $this->record;
			  return $rs['empl_surname'].', '.$rs['empl_firstname'];
			}
			else
			{
			    return '';
			}
		}
		else
		{
		  return '';
		}
    }
}

?>