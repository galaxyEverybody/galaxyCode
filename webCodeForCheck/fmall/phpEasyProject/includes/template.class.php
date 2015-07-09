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

class template extends Smarty
{
    function template()
    {
        $this->Smarty(); /* Der Konstruktor von Smarty wird initialisiert */
        $this->template_dir = ROOT_PATH.'templates/';
        $this->compile_dir  = ROOT_PATH.'templates_c/';
        $this->config_dir   = ROOT_PATH.'configs/';
        $this->cache_dir    = ROOT_PATH.'cache/';
        //$this->register_block("logoformat", "logoformat");
		//$this->debugging = true;
        $this->caching = false;
   }
}

?>