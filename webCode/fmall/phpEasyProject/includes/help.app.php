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

$content = '';

if (is_file('includes/lang/help/'.$language.'/activities.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/activities.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/activities.html'));
    fclose($fp);
}

if (is_file('includes/lang/help/'.$language.'/todo.current.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/todo.current.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/todo.current.html'));
    fclose($fp);
}


if ($user->empl_position >=50 && is_file('includes/lang/help/'.$language.'/projectmanagement.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/projectmanagement.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/projectmanagement.html'));
    fclose($fp);
}

if ($user->empl_position == 100 && is_file('includes/lang/help/'.$language.'/usermanagement.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/usermanagement.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/usermanagement.html'));
    fclose($fp);
}

if (is_file('includes/lang/help/'.$language.'/usersettings.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/usersettings.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/usersettings.html'));
    fclose($fp);
}

if ($user->empl_position == 100 && is_file('includes/lang/help/'.$language.'/configuration.html'))
{
    $fp = fopen('includes/lang/help/'.$language.'/configuration.html','r');
    $content .= fread($fp,filesize('includes/lang/help/'.$language.'/configuration.html'));
    fclose($fp);
}

$content .= '<div style="clear:both">&nbsp;</div>';

$PageTitle = $dict['help'];
$ContentTPL = 'help.tpl';
$JavaScript =<<<END
<script type="text/javascript" src="./scripts/todolist.js"></script>
END;
?>