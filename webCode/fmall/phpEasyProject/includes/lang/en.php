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

$loc = setlocale (LC_ALL, 'en_GB', 'en_GB.UTF-8', 'en', 'english');

DEFINE('GUILANGUAGE','English');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d %B %Y');
DEFINE('DATEFIELD','m/d/Y');
DEFINE('DATEFIELDCAL','%m/%d/%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['todolist']       = 'Tasks';
$dict['number_short']   = 'No.';
$dict['status']         = 'Status';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="degree of completion">DoC</acronym>';
$dict['degree_of_completion_full']
                        = 'Degree of completion';
$dict['activity_acquisition']
                        = 'Activity Manager';
$dict['usermanagement'] = 'User Management';
$dict['usersettings']   = 'User Settings';
$dict['help']           = 'Help';
$dict['user']           = 'User';
$dict['logout']         = 'Logout';
$dict['login']          = 'Login';
$dict['todo']           = 'ToDo';
$dict['project']        = 'Project';
$dict['projects']       = 'Projects';
$dict['archive']        = 'Archive';
$dict['configuration']  = 'Configuration';
$dict['startdate']      = 'Start';
$dict['finishdate']     = 'Termination';
$dict['duration']       = 'Duration';
$dict['prio']           = 'Prio.';
$dict['priority']       = 'Priority';
$dict['privat']         = 'Private';
$dict['agreed']         = 'Compl.';
$dict['complete']       = 'Complete';
$dict['dontstartet']    = 'Not yet started';
$dict['expired']        = 'Expired';
$dict['expiredperiod']  = 'Warning! The time for this task runs out soon';
$dict['nonaktiv']       = 'Not yet active';
$dict['activ']          = 'Active';
$dict['todoadd']        = 'Add new task';
$dict['todoedit']       = 'Task edit';
$dict['projectadd']     = 'New project';
$dict['projectedit']    = 'Edit project';
$dict['projectpositions']
                        = 'Project positions';
$dict['projectname']    = 'Project name';
$dict['commentar']      = 'Commentary';
$dict['dateselector']   = 'Date selection';
$dict['date']           = 'Date';
$dict['warning']        = 'Warning before expired';
$dict['noname']         = 'Unknow';
$dict['1day']           = '1 day';
$dict['2days']          = '2 days';
$dict['3days']          = '3 days';
$dict['4days']          = '4 days';
$dict['5days']          = '5 Tdays';
$dict['1week']          = '1 week';
$dict['2weeks']         = '2 weeks';
$dict['newrecord']      = 'Empty form';
$dict['saverecord']     = 'Save';
$dict['copy']           = 'Copy';
$dict['moveintoarchive']= 'Move into archive';
$dict['none']           = 'none';
$dict['created']        = 'Created';
$dict['changed']        = 'Changed';
$dict['search']         = 'Search';
$dict['show']           = 'Show';
$dict['all_todos']      = 'All tasks';
$dict['active_only']    = 'Open tasks only';
$dict['active']         = 'Active';
$dict['completed_only'] = 'Completed only';
$dict['all_projects']   = 'All projects';
$dict['reload']         = 'Reload';
$dict['restore']        = 'Restore';
$dict['delete']         = 'Delete';
$dict['delete_confirm'] = 'Would you like to delete this task?';
$dict['areyousure']     = 'Are you sure?';
$dict['found']          = 'Found';
$dict['pages']          = 'Pages';
$dict['todos']          = 'Tasks';
$dict['trainee']        = 'Trainee';
$dict['trainee_short']  = 'TR';
$dict['employee']       = 'Employee';
$dict['employees']      = 'Employees';
$dict['emplname']       = 'Name';
$dict['empl_active']    = 'Enabled';
$dict['employeeadd']    = 'Add employee';
$dict['employeeedit']   = 'Edit account';
$dict['position']       = 'Position';
$dict['project_manager']= 'Project Manager';
$dict['store_manager']  = 'Store Manager';
$dict['empl_short']     = 'WO';
$dict['PM']             = 'PM';
$dict['SM']             = 'SM';
$dict['noPosition']     = 'Position unknow';
$dict['surname']        = 'Last name';
$dict['firstname']      = 'First name';
$dict['password']       = 'Password';
$dict['password_retry'] = 'Password retry';
$dict['projectmembers'] = 'Project members';
$dict['memberinprojects']
                        = 'Member in projects';
$dict['employeeslist']  = 'Member list';
$dict['projectlist']    = 'Project list';
$dict['all_employees']  = 'All employees';
$dict['enabled_only']   = 'Enabled users only';
$dict['disabled_only']  = 'Disabled users only';
$dict['autologin']      = 'Log me on automatically each visit';
$dict['loginform']      = 'Login';
$dict['projectmanagement']
                        = 'Projectmanagement';
$dict['projectisactive']= 'Active project';
$dict['all_projects']   = 'All projects';
$dict['pr_enabled_only']= 'Only active projects';
$dict['pr_disabled_only']
                        = 'Only not active projects';
$dict['emptylist']      = 'No data found';
$dict['projectposition']= 'Project position';
$dict['projectpositions']
                        = 'Projeсt positions';
$dict['prposisactive']  = 'Active project position';
$dict['prposadd']       = 'Add new project position';
$dict['prposedit']      = 'Edit projectposition';
$dict['order']          = 'Order';
$dict['afterposition']  = 'After selected position';
$dict['asunderposition']= 'As underposition';
$dict['today']          = 'Today';
$dict['EmployeeHasOpenTodo']
                        = 'The Employee has %d entries in the task list.';
$dict['time']           = 'Time';
$dict ['activity']      = 'Activities';
$dict['shortdescription']
                        = 'Short description';
$dict['fulldescription']= 'Detail description';
$dict['activityedit']   = 'Edit activity';
$dict['activityadd']    = 'Add new activity';
$dict['dayback']        = 'previous';
$dict['dayforward']     = 'next';
$dict['staistic']       = 'Statistic';
$dict['hourshort']      = 'h.';
$dict['week']           = '%dth week';
$dict['selectedDate']   = 'Selected Date';
$dict['actuellDate']    = 'Current Date';
$dict['export']         = 'Data export';
$dict['xmlformat']      = 'XML-File';
$dict['htmlformat']     = '(X)HTML-File';
$dict['makeexport']     = 'Export';
$dict['markon']         = 'mark all';
$dict['markoff']        = 'unmark all';
$dict['groupby']        = 'Group by';
$dict['groupbytime']    = 'Time';
$dict['months']         = 'Months';
$dict['weeks']          = 'Weeks';
$dict['days']           = 'Days';
$dict['summfor']        = 'Summ for %s:';
$dict['summtotal']      = 'Total:';
$dict['remove']         = 'Delete';
$dict['fileisnotwritable']
                        = 'The config file is read only. Please check the access rights.';
$dict['webroot_path']   = 'The path to web root';
$dict['databasetype']   = 'Data base';
$dict['hostname']       = 'DB Hostname';
$dict['dbname']         = 'DB Name';
$dict['dbuser']         = 'DB User';
$dict['dbpassword']     = 'DB Password';
$dict['dbsuffix']       = 'Table suffix';
$dict['defaultlanguage']= 'Default language';
$dict['language']       = 'Language';
$dict['taetmistep']     = 'minutes step for activity form';
$dict['showmistep']     = 'minutes step for activity list';
$dict['workdayfrom']    = 'Workday beginning';
$dict['workdayunto']    = 'Workday end';
$dict['activityduration']
                        = 'Default duration for activity';

// Install
$dict['installation']   = 'Installation';
$dict['step']           = 'Step';
$dict['readlicense']    = 'Please read the following License Agreement. You must accept the terms of this adreement before continuing with the installation.';
$dict['idontaccept']    = 'I do not accept the agreement.';
$dict['iaccept']        = 'I accept the agreement.';
$dict['forward']        = 'Forward';
$dict['backward']       = 'Backward';
$dict['phpversion']     = 'PHP-Version';
$dict['rightversion']   = 'You need the PHP version up to 4.3.x or 5.x<br />Please install new php version from <a href="http://www.php.net">http://www.php.net</a>';
$dict['DOMDocument']    = 'Export-functions are available';
$dict['emptydomdocument']
                        = 'Warning! Your PHP - installation has not support the PHP XSLT functions. You can use this program, , however without possibilities for export of data.';
$dict['templ_dir_writable']
                        = '<strong>templates_c</strong> is writable';
$dict['templ_no_writable']
                        = 'Please make <strong>templates_c</strong> as writable.';
$dict['conf_writable']  = 'The config file is writable';
$dict['conf_n_writable']= 'The <strong>config</strong> - directory is not writable.';
$dict['config_saved']   = 'The configuration file was produced successfully.';
$dict['db_created']     = 'The data base structure was produced successfully.';
$dict['congratulations'] = 'Installation was successful. Please delete install directory from the server and click <a href="../">here</a> for login.';
$dict['mysqlcompatible']= 'The MySQL Client Bibliothek is supported';
$dict['notmysqlcompatible']
                        = 'The MySQL Client Bibliothek is not supported. Use the --with-mysql[=DIR] configure option to include MySQL support.';

// Fehlermeldungen
$dict['APP_CLOSED']     = 'Critical programm error';
$dict['err_100']        = 'Empty title';
$dict['err_101']        = 'Empty priority';
$dict['err_102']        = 'The project &laquo;%s&raquo; is closed. You cannot edit or add the tasks to the closed projects';
$dict['err_110']        = 'Empty login name';
$dict['err_111']        = 'Empty surname';
$dict['err_112']        = 'Empty firstname';
$dict['err_113']        = 'Empty password';
$dict['err_114']        = 'Wrong password';
$dict['err_115']        = 'The password should be more than 5 charcter';
$dict['err_120']        = 'Empty project title';
$dict['err_130']        = 'Empty description for project position';
$dict['err_140']        = 'You cannot shift a projectposition under own tree structure!';
$dict['err_141']        = 'No projects found for this position.';
$dict['err_200']        = 'Critical error during initialize this objects.';
$dict['err_201']        = 'Could not write in the data base.';
$dict['err_202']        = 'Could not read from the data base.';
$dict['err_300']        = 'Empty description';
$dict['err_301']        = 'The activity must be assigned to a certain Projekposition of a valid project.';
$dict['err_302']        = 'Wrong date input';
$dict['err_303']        = 'Wrong time input';
$dict['err_401']        = 'Could not find the directory with language files. Check the paths in the configuration.';
$dict['err_402']        = 'The config file cannot be written (read only). Check the access rights.';
$dict['err_404']        = 'Could not find the config file %s';
$dict['err_410']        = 'Empty Web - Root';
$dict['err_411']        = 'Empty DB Hostname';
$dict['err_412']        = 'Empty DB Name';
$dict['err_413']        = 'Empty DB User';
$dict['err_414']        = 'Empty DB Password';
$dict['err_415']        = 'Could not write in the data base. Check the config data.';
$dict['err_416']        = 'PLEASE REMOVE THE DIRECTORY "install"';
$dict['err_501']        = 'Empty login name';
$dict['err_502']        = 'Empty password';
$dict['err_503']        = 'Cannot be found.';
$dict['err_504']        = 'Your account is deactivated. Please turn ro your management.';
$dict['err_600']        = 'Wrong time input';
$dict['error']          = "Errors:";
?>