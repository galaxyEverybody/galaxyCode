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

$loc = setlocale (LC_ALL, 'it_IT.utf8', 'it_IT@euro', 'it', 'italian');

DEFINE('GUILANGUAGE','Italian');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d %B %Y');
DEFINE('DATEFIELD','m/d/Y');
DEFINE('DATEFIELDCAL','%m/%d/%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['APP_CLOSED']     = 'Critical programm error';
$dict['todolist']       = 'Compiti';
$dict['number_short']   = 'No.';
$dict['status']         = 'Stato';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="grado di completamento">GdC</acronym>';
$dict['degree_of_completion_full']
                        = 'Grado di completamento';
$dict['activity_acquisition']
                        = 'Coord. Attività';
$dict['usermanagement'] = 'Adm Utenti';
$dict['usersettings']   = 'Impostazioni Utenti';
$dict['help']           = 'Aiuto';
$dict['user']           = 'Utente';
$dict['logout']         = 'Logout';
$dict['login']          = 'Login';
$dict['todo']           = 'Compito';
$dict['project']        = 'Progetto';
$dict['projects']       = 'Progetti';
$dict['archive']        = 'Archivio';
$dict['configuration']  = 'Configurazione';
$dict['startdate']      = 'Inizio';
$dict['finishdate']     = 'Fine';
$dict['duration']       = 'Durata';
$dict['prio']           = 'Prio.';
$dict['priority']       = 'Priorità';
$dict['privat']         = 'Private';
$dict['agreed']         = 'Compl.';
$dict['complete']       = 'Completo';
$dict['dontstartet']    = 'Non iniziato';
$dict['expired']        = 'Scaduto';
$dict['expiredperiod']  = 'Attenzione! A breve questo compito va fuori tempo';
$dict['nonaktiv']       = 'Non ancora attivo';
$dict['activ']          = 'Attivo';
$dict['todoadd']        = 'Aggiungi compito';
$dict['todoedit']       = 'Modifica compito';
$dict['projectadd']     = 'Nuovo progetto';
$dict['projectedit']    = 'Modifica progetto';
$dict['projectpositions']
                        = 'Posizioni progetto';
$dict['projectname']    = 'Nome progetto';
$dict['commentar']      = 'Commento';
$dict['dateselector']   = 'Selezione data';
$dict['date']           = 'Data';
$dict['warning']        = 'Avviso prima della scadenza';
$dict['noname']         = 'Sconosciuto';
$dict['1day']           = '1 giorno';
$dict['2days']          = '2 giorni';
$dict['3days']          = '3 giorni';
$dict['4days']          = '4 giorni';
$dict['5days']          = '5 giorni';
$dict['1week']          = '1 settimana';
$dict['2weeks']         = '2 settimane';
$dict['newrecord']      = 'Form vuoto';
$dict['saverecord']     = 'Salva';
$dict['copy']           = 'Copia';
$dict['moveintoarchive']= 'Sposta in archivio';
$dict['none']           = 'none';
$dict['created']        = 'Creato';
$dict['changed']        = 'Modificato';
$dict['search']         = 'Ricerca';
$dict['show']           = 'Visualizza';
$dict['all_todos']      = 'Tutti compiti';
$dict['active_only']    = 'Solo compiti aperti';
$dict['active']         = 'Attivo';
$dict['completed_only'] = 'Solo completati';
$dict['all_projects']   = 'Tutti progetti';
$dict['reload']         = 'Ricarica';
$dict['restore']        = 'Recupera';
$dict['delete']         = 'Cancella';
$dict['delete_confirm'] = 'Vuoi cancellare questo compito?';
$dict['areyousure']     = 'Sei sicuro?';
$dict['found']          = 'Trovato';
$dict['pages']          = 'Pagine';
$dict['todos']          = 'Compiti';
$dict['trainee']        = 'Apprendista';
$dict['trainee_short']  = 'APR';
$dict['employee']       = 'Impiegato';
$dict['employees']      = 'Impiegati';
$dict['emplname']       = 'Nome';
$dict['empl_active']    = 'Attivo';
$dict['employeeadd']    = 'Aggiungi collaboratore';
$dict['employeeedit']   = 'Modifica account';
$dict['position']       = 'Posizione';
$dict['project_manager']= 'Conduttore progetto';
$dict['store_manager']  = 'Coordinatore Generale';
$dict['empl_short']     = 'IMP';
$dict['PM']             = 'CProg';
$dict['SM']             = 'Adm';
$dict['noPosition']     = 'Posizione sconosciuta';
$dict['surname']        = 'Cognome';
$dict['firstname']      = 'Nome';
$dict['password']       = 'Password';
$dict['password_retry'] = 'Conferma Password';
$dict['projectmembers'] = 'Membri progetto';
$dict['memberinprojects']
                        = 'Membro nel progetto';
$dict['employeeslist']  = 'Lista Membri';
$dict['projectlist']    = 'Lista progetti';
$dict['all_employees']  = 'Tutti impiegati';
$dict['enabled_only']   = 'Solo utenti abilitati';
$dict['disabled_only']  = 'Solo utenti disabilitati';
$dict['autologin']      = 'Autenticami atomaticamente ogni volta';
$dict['loginform']      = 'Login';
$dict['projectmanagement']
                        = 'Projectmanagement';
$dict['projectisactive']= 'Progetti attivi';
$dict['all_projects']   = 'Tutti progetti';
$dict['pr_enabled_only']= 'Solo progetti attivi';
$dict['pr_disabled_only']
                        = 'Solo progetti non attivi';
$dict['emptylist']      = 'Non trovati i dati';
$dict['projectposition']= 'Posizione progetto';
$dict['projectpositions']
                        = 'Posizioni progetto';
$dict['prposisactive']  = 'Posizione attiva del progetto';
$dict['prposadd']       = 'Aggiungi nuova posizione progetto';
$dict['prposedit']      = 'Modifica posizione progetto';
$dict['order']          = 'Ordine';
$dict['afterposition']  = 'Dopo la posizione selezionata';
$dict['asunderposition']= 'Sotto la posizione';
$dict['today']          = 'Oggi';
$dict['EmployeeHasOpenTodo']
                        = 'Impiegato ha %d inserzioni nella lista compiti.';
$dict['time']           = 'Tempo';
$dict ['activity']      = 'Attività';
$dict['shortdescription']
                        = 'Descr. breve';
$dict['fulldescription']= 'Descr. completa';
$dict['activityedit']   = 'Modifica attività';
$dict['activityadd']    = 'Aggiungi nuova attività';
$dict['dayback']        = 'precedente';
$dict['dayforward']     = 'successiva';
$dict['staistic']       = 'Statistiche';
$dict['hourshort']      = 'h.';
$dict['week']           = '%d settimana';
$dict['selectedDate']   = 'Data selezionata';
$dict['actuellDate']    = 'Data corrente';
$dict['export']         = 'Esporta';
$dict['xmlformat']      = 'XML-File';
$dict['htmlformat']     = '(X)HTML-File';
$dict['makeexport']     = 'Esporta';
$dict['markon']         = 'seleziona tutto';
$dict['markoff']        = 'deseleziona tutto';
$dict['groupby']        = 'Ragruppa per';
$dict['groupbytime']    = 'Tempo';
$dict['months']         = 'Mesi';
$dict['weeks']          = 'Settimane';
$dict['days']           = 'Giorni';
$dict['summfor']        = 'Somma per %s:';
$dict['summtotal']      = 'Totale:';
$dict['remove']         = 'Cancella';
$dict['fileisnotwritable']
                        = 'File di configurazione è di sola lettura. Verifica diritti di accesso.';
$dict['webroot_path']   = 'path di server web';
$dict['databasetype']   = 'Data base';
$dict['hostname']       = 'DB Nome host';
$dict['dbname']         = 'Nome DB';
$dict['dbuser']         = 'DB User';
$dict['dbpassword']     = 'DB Password';
$dict['dbsuffix']       = 'Table suffix';
$dict['defaultlanguage']= 'Lingua predefinita';
$dict['language']       = 'Linguaggio';
$dict['taetmistep']     = 'minuti per form form di attività';
$dict['showmistep']     = 'minuti per la lista di attività';
$dict['workdayfrom']    = 'Inizio giorno lavorativo';
$dict['workdayunto']    = 'Fine giorno lavorativo';
$dict['activityduration']
                        = 'Durata predefinita di attività';

// Install
$dict['installation']   = 'Installazione';
$dict['step']           = 'Step';
$dict['readlicense']    = 'Please read the following License Agreement. You must accept the terms of this adreement before continuing with the installation.';
$dict['idontaccept']    = 'I do not accept the agreement.';
$dict['iaccept']        = 'I accept the agreement.';
$dict['forward']        = 'Avanti';
$dict['backward']       = 'Indiettro';
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
$dict['err_100']        = 'Titolo vuoto';
$dict['err_101']        = 'Vuota la priorit&agrave';
$dict['err_102']        = 'Progetto &laquo;%s&raquo; &egrave chiuso. Non puoi aggiungere o modificare i compiti al progetto chiuso';
$dict['err_110']        = 'Vuoto login name';
$dict['err_111']        = 'Vuoto congome';
$dict['err_112']        = 'Vuoto nome';
$dict['err_113']        = 'Vuoto password';
$dict['err_114']        = 'Password sbagliato';
$dict['err_115']        = 'Password deve essere lungo più di 5 caratteri';
$dict['err_120']        = 'Titolo progetto vuoto';
$dict['err_130']        = 'Vuota descrizione per la posizione del progetto';
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
