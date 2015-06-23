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

/**
 * Encoding any php-objects into string for Coockie - Save
 *
 * @param mixed $obj
 * @return string
 */
function object_to_cookie($obj){
	$z = serialize($obj);
	$z = gzcompress($z);
	$z = base64_encode($z);
	$z = urlencode($z);
  return $z;
}

/**
 * Decoding with object_to_coockie ecoded sting into php-object
 *
 * @param string $cookie
 * @return mixed
 */
function cookie_to_object($cookie){
	$z = urldecode($cookie);
	$z = base64_decode($z);
	$z = gzuncompress($z);
	$z = unserialize($z);
  return $z;
}

/**
 * For debugging only!
 *
 * @param Mixed $var
 */
function debugVar($var)
{
    echo "<pre>";
    print_r($var);
    echo "</pre>";
}

function saveLog($string)
{
    if ($o = fopen('log.txt','a'))
    {
        fputs($o,$string."\n");
        fclose($o);
    }

}

/**
 * Convert String to Unix-Timestamp
 *
 * You may convert three several formats of string:
 * dd.mm.YYYY, mm/dd/YYYY or YYYY-mm-dd into Unix Timestamp
 * Last option $last with 'true' set the biggest value for this date
 *
 * @param String $dateString
 * @param Boolean $last
 * @return Integer Unix-Timestamp
 */
function getDateTime($dateString,$last=false)
{
    $arr = array();
    $hour   = 0;
    $min    = 0;
    $sec    = 0;
    $month  = 1;
    $day    = 1;
    $year   = 1970;

    if (!preg_match('/([0-9]{1,4})(\.|-|\/)([0-9]{1,2})(\.|-|\/)([0-9]{1,4})/',$dateString,$arr))
        return 0;
    else
    {
        if ($arr[2] == '/')
        {
            $day   = $arr[3];
            $month = $arr[1];
            $year  = $arr[5];
        }
        elseif($arr[2] == '.')
        {
            $day   = $arr[1];
            $month = $arr[3];
            $year  = $arr[5];
        }
        else
        {
            $day   = $arr[5];
            $month = $arr[3];
            $year  = $arr[1];
        }
    }

    if ($last)
    {
        $hour = 23;
        $min  = 59;
        $sec  = 59;
    }
    else
    {
        $hour = 0;
        $min  = 0;
        $sec  = 0;
    }

    return mktime($hour,$min,$sec,$month,$day,$year);
}

/**
 * Clear Vars from very, very bad character
 *
 * @param String $var
 * @return String
 */
function clearVars($var)
{
    $var = trim($var);
    $var = stripslashes($var);
    $var = strip_tags($var);
    //$var = htmlspecialchars($var);
    //$var = preg_replace(array('/</', '/>/','/&/'), array('&lt;', '&gt;', '&amp;'), $var);
    $var = preg_replace(array('/</', '/>/'), array('&lt;', '&gt;'), $var);
    return $var;
}

/**
 * Convert the time from seconds into decimal format
 *
 * @param integer $timeinseconds
 * @return decimal
 */
function getHoursFormatted($timeinseconds)
{
    $stdFull  = $timeinseconds%60;
    $minRest  = $timeinseconds - $stdFull*60;
    $minDecPr = $minRest/60;
    return $stdFull + $minDecPr;
}

function orderedLanguages()
{
   $http_accept_language = isset($_SERVER['HTTP_ACCEPT_LANGUAGE']) ? $_SERVER['HTTP_ACCEPT_LANGUAGE'] : 'de;q=1';
   $languages = split(",", $_SERVER['HTTP_ACCEPT_LANGUAGE'] );
   $lang_q = Array();
   foreach( $languages as $aLang ) {
       $lang_array = split(";q=", trim( $aLang ) );
       $lang = trim( $lang_array[0] );
       if( !isset( $lang_array[1] ) )
           $q = 1;
       else
           $q = trim($lang_array[1]);
       $lang_q["$lang"] = (float)$q;
   }
   arsort($lang_q);
   //extra code for making the languages key indexed
   $i = 0;
   $lang_index = Array();
   foreach($lang_q as $lang => $q) {
   //    $lang_q[$i] = $lang; //add to the same array the index key/language
       $lang_index[$i] = $lang; //add to a new array the index key/language
       $i++;
   }

   //return $lang_index; // uncomment for returning array with keys={0..n-1}, values={most..least preferred}
   return $lang_index;
}

function escape_string ($string)
{
	return mysql_escape_string($string);
}

function set_pep($login)
{
    $_SESSION['pep'] = object_to_cookie($login);
    if ($login[2])
    {
        setcookie('pep',$_SESSION['pep'],time()+60*60*24*30);
    }
}

function logfile($logmessage)
{
    $lognumber = 1;
    if (empty($_SESSION['lognumber']))
    {
        $_SESSION['lognumber'] = $lognumber;
    }
    else
    {
        $lognumber = ++$_SESSION['lognumber'];
    }
    $log_file_path = $_SERVER['DOCUMENT_ROOT'].'/templates_c/log_'.date('d-m-y').'.txt';
    /*if (file_exists($log_file_path))
    {
        unlink($log_file_path);
    }*/
    if ($fp = @fopen($log_file_path,'a'))
    {
        fputs($fp,date('d-m-Y H:i:s   ').$lognumber."\n".$logmessage."\n\n");
        fclose($fp);
        chmod($log_file_path,0666);
    }

}
?>