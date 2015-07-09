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

define('CONFIGFILE',ROOT_PATH.'config/config.php');
define('LANGUAGESORDER',ROOT_PATH.'includes/lang');

class settings
{
	var $webroot_path = '';
	var $default_language = 'de';
	var $dbtype_Array = Array( 'mysql3'=>'MySQL 3.23.x',
	                           'mysql4'=>'MySQL 4.1.x',
	                           'mysql5'=>'MySQL 5.0.x');
	var $active_dbtype = 'mysql5';
	var $dbhost = 'localhost';
	var $dbname = 'phpeasyproject';
	var $dbuser = 'dbuser';
	var $dbpassword = '';
	var $dbprefix = '';
	var $languages_array = array();
	var $taetminstep = 15;

	function settings()
	{
		//$this->default_language_Array = Array('ru'=>$dict['russian'],'de'=>$dict['german'],'en'=>$dict['english']);
		$erg = is_writable(dirname(CONFIGFILE));
		if (!$erg)
		  $this->configWritable = false;
		else
		  $this->configWritable = is_writable(CONFIGFILE);

		if (function_exists('mysql_connect'))
		{
		    $this->dbtype_Array = array( 'mysql3'=>'MySQL 3.23.x',
	                           'mysql4'=>'MySQL 4.1.x',
	                           'mysql5'=>'MySQL 5.0.x');
		}
		else
		{
		    $this->dbtype_Array = array();
		}
	}

	function __construct()
	{
	   $this->settings();
    }

	function getLanguages()
	{
        if (!is_dir(LANGUAGESORDER))
        {
            return false;
        }
        else
        {
            $handle = @opendir(LANGUAGESORDER);
            while (false !== ($file = @readdir ($handle)))
            {
                $file_array = @file(LANGUAGESORDER.'/'.$file);
                $file_string = @implode(";", $file_array);
                if (preg_match("/GUILANGUAGE','(.*)'/",$file_string,$match))
                {
                    $this->languages_array[substr($file,0,-4)] = $match[1];
                }
            }
            closedir($handle);
        }

        return true;
    }

	function getConfigData()
	{
		if (is_file(CONFIGFILE))
		{
			$file = file(CONFIGFILE);

			foreach ($file as $rs)
			{
				switch (true)
				{
					case preg_match("/WEBROOT_PATH','(.*)'/",$rs,$match):
						$this->webroot_path = $match[1];
					break;

					case preg_match("/DATABASETYPE','(.*)'/",$rs,$match):
						$this->active_dbtype = $match[1];
					break;

					case preg_match("/DBHOST','(.*)'/",$rs,$match):
						$this->dbhost = $match[1];
					break;

					case preg_match("/DBNAME','(.*)'/",$rs,$match):
						$this->dbname = $match[1];
					break;

					case preg_match("/DBUSER','(.*)'/",$rs,$match):
						$this->dbuser = $match[1];
					break;

					case preg_match("/DBPASSWORD','(.*)'/",$rs,$match):
						$this->dbpassword = $match[1];
					break;

					case preg_match("/DBPREFIX','(.*)'/",$rs,$match):
						$this->dbprefix = $match[1];
					break;

					case preg_match("/DEFAULTLANGUAGE','(.*)'/",$rs,$match):
						$this->default_language = $match[1];
					break;

					case preg_match("/TAETMINSTEP','(.*)'/",$rs,$match):
						$this->taetminstep = $match[1];
					break;
				}
			}
			if (!$this->getLanguages())
			{
			    $this->errrors[] = 'err_401';
			    return false;
			}
		}
		else
		{
		  $this->errrors[] = 'err_404';
		  return false;
        }
        return true;
	}

	function getPostData()
	{
		$this->errors             = Array();
		$this->webroot_path       = $_POST['webrootpath'];
		$this->active_dbtype      = $_POST['dbtype'];
		$this->dbhost             = $_POST['dbhost'];
		$this->dbname             = $_POST['dbname'];
		$this->dbuser             = $_POST['dbuser'];
		$this->dbpassword         = $_POST['dbpassword'];
		$this->dbprefix           = $_POST['dbprefix'];
		$this->default_language   = $_POST['defaultlanguage'];
		if (isset($_POST['taetminstep']))
		      $this->taetminstep  = $_POST['taetminstep'];

		if (empty($this->webroot_path))
		{
		    $this->errors[] = 'err_410';
        }
        else
        {
            if (substr($this->webroot_path,strlen($this->webroot_path)-1,1) !== '/')
                $this->webroot_path .= '/';
        }

        if (empty($this->dbhost))
		{
		    $this->errors[] = 'err_411';
        }

        if (empty($this->dbname))
		{
		    $this->errors[] = 'err_412';
        }

        if (empty($this->dbuser))
		{
		    $this->errors[] = 'err_413';
        }

        if (empty($this->dbpassword))
		{
		    $this->errors[] = 'err_414';
        }

		if (count($this->errors)>0) return false;
		return true;
	}

	function saveConfigFile()
	{
		$this->errors = Array();
		if (empty($this->dbpassword)) $this->getPassword();
		if ($this->configWritable || !is_file(CONFIGFILE))
		{
			if (!$handle = @fopen(CONFIGFILE, "w"))
			{
				$this->errors[] = 'err_402';
				return false;
			}
			$configcontent =<<<END
<?php
error_reporting(0);
define('WEBROOT_PATH','$this->webroot_path');
define('DATABASETYPE','$this->active_dbtype');
define('DBHOST','$this->dbhost');
define('DBNAME','$this->dbname');
define('DBUSER','$this->dbuser');
define('DBPASSWORD','$this->dbpassword');
define('DBPREFIX','$this->dbprefix');
define('DEFAULTLANGUAGE','$this->default_language');
define('TAETMINSTEP','$this->taetminstep');
define('DEVELOPMENT',false);
define('UTFEXPICIT',true);
define('RECORDPERPAGE',50);
?>

END;

			if (!fwrite($handle, $configcontent))
			{
				$this->errors[] = 'err_402';
				return false;
			}

			fclose($handle);
			@chmod(CONFIGFILE,0666);
			return true;
		}
		$this->errors[] = 'err_402';
		return false;
	}
}
?>