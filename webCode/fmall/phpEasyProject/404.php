<?php
/**
 * phpEasyProjects
 * - an easy solution for activity management and todo lists based on projects.
 *
 * Web: http://www.phpEasyProject.net
 *
 * Copyright (C) 2005  Arthur Harder
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

ob_start();
require(ROOT_PATH.'includes/init.php');

$ContentTPL = 'error.tpl';
$content =<<<END

<div style="width:100%">
<div style="margin:auto;width:800px;"><h1>HTTP Error 404 - Not found</h1>

<p><strong>Introduction</strong></p>

<p>The Web Server thinks that the HTTP data stream sent by the client
(e.g. your Web Browser) was correct, but simply can not provide the access to
the resource specified by the URL. This is equivalent to the
'return to sender - address unknown' response for conventional postal
mail services.</p>

<p>This error is easily shown in a Web Browser if you try a URL with valid
domain name but invalid page e.g. http://www.google.com/sdghsgdh.html</p>

<p><strong>404 errors in the HTTP cycle</strong></p>

<p>Any client (e.g. your Web Browser) goes through the following cycle when it
communicates with the Web Server:</p>
<ul>
    <li>Obtain an IP address from the IP name of your site (your site URL
        without the leading 'http://'). This lookup (conversion of IP name to
        IP address) is provided by domain name servers (DNSs).</li>
    <li>Open an IP socket connection to that IP address.</li>
    <li>Write an HTTP data stream through that socket.</li>
    <li>Receive an HTTP data stream back from your Web Server in response.
        This data stream contains status codes whose values are determined by
        the HTTP protocol. Parse this data stream for status codes and other
        useful information.</li>
</ul>

<p>This error occurs in the final step above when the client receives an
HTTP status code that it recognises as '404'.</p>

<p><strong>Resolving 404 errors - general</strong></p>

<p>For top level URLs (such as www.isp.com), the first possibility is that the
request for the site URL has been directed to a Web Server that thinks it never
had any pages for the Web site. This is possible if DNS entries are
fundamentally corrupt, or if your Web Server has corrupt internal records.
The second possibility is that the Web Server once hosted the Web site,
but now no longer does so and can not or will not provide a redirection to
another computer which now hosts the site. If the site is completely dead -
now effectively nowhere to be found on the Internet - then the 404 message
makes sense. However if the site has recently moved, then an 404 message may
also be triggered. This is also a DNS issue, because the old Web Server should
no longer be accessed at all - as soon as global DNS entries are updated,
only the new Web Server should be accessed.</p>
</div></div>

END;
$template = new template();
$template->assign('SiteTitle','phpEasyProject - 404 - Not found');
$template->assign('ContentTPL',$ContentTPL);
$template->assign('content',$content);

$template->display('index.tpl');

?>