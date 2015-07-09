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
define('ROOT_PATH','');

require(ROOT_PATH.'includes/init.php');
$datatype = $_POST['exptype'];

/**
 * Initialize the todo class. If it fails then there is no reason to continue
 * and therefore send Server Error 500
 */
if (!$todo = new todo())
{
    header('HTTP/1.0 500 Internal Server Error');
}


// We have to identify the user first
if (!$user = new user())
{
    // Undefined users cannot use this programm
    header('HTTP/1.0 500 Internal Server Error');
}

if (!empty($_COOKIE['pep']))
{
    $login = cookie_to_object($_COOKIE['pep']);
}
elseif (!empty($_SESSION['pep']))
{
    $login = cookie_to_object($_SESSION['pep']);
}
elseif (isset($_POST['username']) && isset($_POST['password']))
{
    $autologin = isset($_POST['autologin']) ? true : false;
    $login = array($_POST['username'],md5($_POST['password']),$autologin);
}
else
{
    $login = array('','',true);
}

// The user must login before performing next functions
if ($user->login($login))
{
    // load the configuration values
    if (!$usrcfg = new usrcfg())
    {
        header('HTTP/1.0 500 Internal Server Error');
        ob_flush();
    }
    elseif (!$usrcfg->initCfgVars($user->empl_id))
    {
        header('HTTP/1.0 500 Internal Server Error');
        ob_flush();
    }


    if (empty($usrcfg->language))
    {
        $language = DEFAULTLANGUAGE;
    }
    else
    {
        $language = $usrcfg->language;
    }

    require_once(ROOT_PATH.'includes/lang/'.$language.'.php');

    if (isset($_POST['users']))
    {
        $users = $user->empl_position >= 50 ? $_POST['users'] : array($user->empl_id);
    }
    else
    {
        $users = array($user->empl_id);
    }
    $taet           = new taet();
    $expstart       = getDateTime($_POST['expstart']);
    $expfinish      = getDateTime($_POST['expfinish'])+60*60*24;
    $projectsarr    = $_POST['expprojectid'];
    $groupby        = $_POST['groupby'];
    $options1       = isset($_POST['options1']) ? $_POST['options1'] : array();
    if (isset($_POST['taetexport']))
    {
        $options1[] = 'users';
    }
    $options2       = isset($_POST['options2']) ? $_POST['options2'] : array();
    $options3       = isset($_POST['options3']) ? $_POST['options3'] : array();

    switch ($groupby)
    {
        case 'userprojects':
            $options = $options1;
            $zusatz  = '';
            $xsl_template = 'export.xsl';
        break;

        case 'projects':
            $options = $options3;
            $zusatz  = '_projects';
            $xsl_template = 'export_projects.xsl';
        break;

        default:
            $options = $options2;
            $zusatz  = '_time';
            $xsl_template = 'export_time.xsl';
    }

    $xml = $taet->getExport($expstart,$expfinish,$users,$projectsarr,$groupby,$options);
    $erg = '';

    foreach ($xml as $rs)
        $erg .= $rs."\n";

    if (!class_exists('DOMDocument') && !function_exists('xslt_process'))
    {
        $datatype = 'xml';
    }

    if ($datatype == 'html')
    {
        if (function_exists('xslt_process'))
        {
            echo XtDataWithFile($erg,$xsl_template);
        }
        else if (class_exists('DOMDocument'))
        {
            echo getHTML($erg,$xsl_template);
        }
        else
        {
            $datatype = 'xml';
            echo $erg;
        }
    }
    else
    {
        echo $erg;
    }

}
else
{
    echo <<<END
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>{$dict['error']}</title>
<meta http-equiv="expires" content="0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
    background-color:white;
}
-->
</style>

</head>

<body>

END;
    echo $dict['err_502'];
    $datatype = 'html';

echo <<<END
</body>
</html>
END;
}
$filecontent=ob_get_contents();
$zusatz = date('-Y-m-d-Hi');
$downloadfile="export".$zusatz.".".$datatype;

header("Content-disposition: attachment; filename=$downloadfile");
//header("Content-Type: application/force-download");
//header("Content-Transfer-Encoding: binary");
header("Content-Length: ".strlen($filecontent));
header("Pragma: no-cache");
header("Expires: 0");


function getHTML($xmlSource,$xsl_template)
{
    // Load the XML source
    $xml = new DOMDocument;
    $xml->loadXML($xmlSource);

    $xsl = new DOMDocument;
    $xsl->load($xsl_template);

    // Configure the transformer
    $proc = new XSLTProcessor;
    $proc->importStyleSheet($xsl); // attach the xsl rules

    return $proc->transformToXML($xml);

}

function XtDataWithFile($xmlData, $uriXSLT) {
   $args = array ( '/_xml' => $xmlData );
   $xp = xslt_create();
   $out = xslt_process($xp, 'arg:/_xml', $uriXSLT, NULL, $args);
   xslt_free($xp);
   return $out;
}
?>