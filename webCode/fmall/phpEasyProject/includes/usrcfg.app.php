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

$formvars = &$usrcfg;

if (!empty($_POST['formsend']))
{
   if ($formvars->getPostVars())
   {
       $formvars->saveRecord();
       header("Location: index.php");
       ob_flush();
   }
   else
   {
       foreach ($formvars->errors as $errnumber)
       $errors[] = isset($dict[$errnumber]) ? $dict[$errnumber] : $errnumber;
       $formvars->errors = $errors;
   }
}

$formvars->taetminstep_array = array(15=>'15',30=>'30',60=>'60');
$formvars->t = new taet_foo();

$PageTitle = $dict['usersettings'];
$ContentTPL = 'usrcfg.tpl';
$JavaScript =<<<END
<script type="text/javascript" src="./scripts/todolist.js"></script>
END;
?>