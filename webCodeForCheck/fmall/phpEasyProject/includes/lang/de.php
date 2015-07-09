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

$loc = setlocale (LC_ALL, 'de_DE.utf8','de_DE@euro', 'de_DE', 'de', 'ge');

DEFINE('GUILANGUAGE','Deutsch');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d. %B %Y');
DEFINE('DATEFIELD','d.m.Y');
DEFINE('DATEFIELDCAL','%d.%m.%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['todolist']       = 'Aufgaben';
$dict['number_short']   = 'Nr.';
$dict['status']         = 'Status';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="Fertigstellungsgrad">Fsg.</acronym>';
$dict['degree_of_completion_full']
                        = 'Fertigstellungsgrad';
$dict['activity_acquisition']
                        = 'Tätigkeitserfassung';
$dict['usermanagement'] = 'Mitarbeiterverwaltung';
$dict['usersettings']   = 'Benutzereinstellungen';
$dict['help']           = 'Hilfe';
$dict['user']           = 'Benutzer';
$dict['logout']         = 'Abmelden';
$dict['login']          = 'Anmeldename';
$dict['todo']           = 'Aufgabe';
$dict['project']        = 'Projekt';
$dict['projects']       = 'Projekte';
$dict['archive']        = 'Archiv';
$dict['configuration']  = 'Konfiguration';
$dict['startdate']      = 'Anfang';
$dict['finishdate']     = 'Ende';
$dict['duration']       = 'Dauer';
$dict['prio']           = 'Prio.';
$dict['priority']       = 'Priorität';
$dict['privat']         = 'Privat';
$dict['agreed']         = 'Erledigt';
$dict['complete']       = 'Erledigt';
$dict['dontstartet']    = 'Noch nicht gestartet';
$dict['expired']        = 'Abgelaufen';
$dict['expiredperiod']  = 'Achtung! Die Zeit für diese Aufgabe läuft bald ab!';
$dict['nonaktiv']       = 'noch nicht aktiv!';
$dict['activ']          = 'Aktiv';
$dict['todoadd']        = 'Eintrag erstellen';
$dict['todoedit']       = 'Eintrag bearbeiten';
$dict['projectadd']     = 'Ein neues Projekt erstellen';
$dict['projectedit']    = 'Das Projekt bearbeiten';
$dict['projectpositions']
                        = 'Projektpositionen';
$dict['projectname']    = 'Projektname';
$dict['commentar']      = 'Kommentar';
$dict['dateselector']   = 'Datumsauswahl';
$dict['date']           = 'Datum';
$dict['warning']        = 'Warnung für Ablaufsdatum';
$dict['noname']         = 'Unbekannt';
$dict['1day']           = '1 Tag';
$dict['2days']          = '2 Tage';
$dict['3days']          = '3 Tage';
$dict['4days']          = '4 Tage';
$dict['5days']          = '5 Tage';
$dict['1week']          = '1 Woche';
$dict['2weeks']         = '2 Wochen';
$dict['newrecord']      = 'Leeres Formular';
$dict['saverecord']     = 'Speichern';
$dict['copy']           = 'Kopieren';
$dict['moveintoarchive']= 'Verschieben ins Archiv ';
$dict['none']           = 'Keine';
$dict['created']        = 'Erstellungsdatum';
$dict['changed']        = 'Änderungsdatum';
$dict['search']         = 'Suchbegriff';
$dict['show']           = 'Anzeige';
$dict['all_todos']      = 'Alle Aufgaben';
$dict['active_only']    = 'Nicht erledigte Aufgaben';
$dict['active']         = 'Aktuell';
$dict['completed_only'] = 'Erledigte Aufgaben';
$dict['all_projects']   = 'Alle Projekte';
$dict['reload']         = 'Neu laden';
$dict['restore']        = 'Wiederherstellen';
$dict['delete']         = 'Löschen';
$dict['delete_confirm'] = 'Möchten Sie diese Aufgabe wirklich endgültig löschen?';
$dict['areyousure']     = 'Sind Sie sicher?';
$dict['found']          = 'Gefunden';
$dict['pages']          = 'Seiten';
$dict['todos']          = 'Aufgaben';
$dict['trainee']        = 'Praktikant(in)';
$dict['trainee_short']  = 'PK';
$dict['employee']       = 'Mitarbeiter(in)';
$dict['employees']      = 'Mitarbeiter';
$dict['emplname']       = 'Mitarbeitername';
$dict['empl_active']    = 'Mitarbeiter freigeschaltet';
$dict['employeeadd']    = 'Mitarbeiter hinzufügen';
$dict['employeeedit']   = 'Mitarbeiterdaten bearbeiten';
$dict['position']       = 'Position';
$dict['project_manager']= 'Projektleiter(in)';
$dict['store_manager']  = 'Geschäftsführer(in)';
$dict['empl_short']     = 'MA';
$dict['PM']             = 'PL';
$dict['SM']             = 'GF';
$dict['noPosition']     = 'Position unbekannt';
$dict['surname']        = 'Nachname';
$dict['firstname']      = 'Vorname';
$dict['password']       = 'Kennwort';
$dict['password_retry'] = 'Kennwort wiederholen';
$dict['projectmembers'] = 'Projektteilnehmer';
$dict['memberinprojects']
                        = 'Teilnahme an Projekten';
$dict['employeeslist']  = 'Mitarbeiterliste';
$dict['projectlist']    = 'Liste aller verfügbaren Projekte';
$dict['all_employees']  = 'Alle Mitarbeiter';
$dict['enabled_only']   = 'Nur freigeschaltete Mitarbeiter';
$dict['disabled_only']  = 'Nur ausgeschaltete Mitarbeiter';
$dict['autologin']      = 'Automatisch anmelden';
$dict['loginform']      = 'Anmeldung';
$dict['projectmanagement']
                        = 'Projektverwaltung';
$dict['projectisactive']= 'Das Projekt ist aktiv';
$dict['all_projects']   = 'Alle Projekte';
$dict['pr_enabled_only']= 'Nur aktive Projekte';
$dict['pr_disabled_only']
                        = 'Nur nicht aktive Projekte';
$dict['emptylist']      = 'Keine Daten sind vorhanden';
$dict['projectposition']= 'Projektposition';
$dict['projectpositions']
                        = 'Projektpositionen';
$dict['prposisactive']  = 'Die Projektposition ist aktiv';
$dict['prposadd']       = 'Neue Position hinzufügen';
$dict['prposedit']      = 'Die Position bearbeiten';
$dict['order']          = 'Anordnung';
$dict['afterposition']  = 'Hinter ausgewählter Position';
$dict['asunderposition']= 'Als Unterposition';
$dict['today']          = 'Heute';
$dict['EmployeeHasOpenTodo']
                        = 'Der Mitarbeiter besitzt noch %d Einträg(e) in der Aufgabenliste.';
$dict['time']           = 'Zeit';
$dict ['activity']      = 'Tätigkeiten';
$dict['shortdescription']
                        = 'Kurzbeschreibung';
$dict['fulldescription']= 'Beschreibung';
$dict['activityedit']   = 'Die Tätigkeit editieren';
$dict['activityadd']    = 'Neue Tätigkeit eintragen';
$dict['dayback']        = 'Auf vorherigen Tag blättern';
$dict['dayforward']     = 'Auf nächsten Tag blättern';
$dict['staistic']       = 'Statistik';
$dict['hourshort']      = 'Std.';
$dict['week']           = 'KW%d';
$dict['selectedDate']   = 'Gewähltes Datum';
$dict['actuellDate']    = 'Aktuelles Datum';
$dict['export']         = 'Daten exportieren';
$dict['xmlformat']      = 'XML-Datei';
$dict['htmlformat']     = 'HTML-Datei';
$dict['makeexport']     = 'Exportieren';
$dict['markon']         = 'Alle auswählen';
$dict['markoff']        = 'Alle abwählen';
$dict['groupby']        = 'Gruppierungsart';
$dict['groupbytime']    = 'Nach Zeit';
$dict['months']         = 'Monate';
$dict['weeks']          = 'Wochen';
$dict['days']           = 'Tage';
$dict['summfor']        = 'Summe für %s:';
$dict['summtotal']      = 'Insgesamt:';
$dict['remove']         = 'Löschen';
$dict['fileisnotwritable']
                        = 'Die Config-Datei ist schreibgeschützt. Überprüfen Sie die Schreibrechte.';
$dict['webroot_path']   = 'Web-Root Verzeichnis';
$dict['databasetype']   = 'Datenbank';
$dict['hostname']       = 'DB Hostname';
$dict['dbname']         = 'DB Name';
$dict['dbuser']         = 'DB User';
$dict['dbpassword']     = 'DB Password';
$dict['dbsuffix']       = 'Tabellenprefix';
$dict['defaultlanguage']= 'Standardsprache';
$dict['language']       = 'Sprache';
$dict['taetmistep']     = 'Minutenschritt für die Tätigkeitserfassung';
$dict['showmistep']     = 'Schrittanzeige in Min.<br />in der Tätigkeitserfassung';
$dict['workdayfrom']    = 'Arbeitstag von';
$dict['workdayunto']    = 'Arbeitstag bis';
$dict['activityduration']
                        = 'Mittlere Dauer einer Tätigkeit';

// Install
$dict['installation']   = 'Installation';
$dict['step']           = 'Schritt';
$dict['readlicense']    = 'Bitte lesen Sie die folgende Lizenzvereinbarung. Benutzen Sie die Bildlaufleiste, um den Rest der Vereinbarung zu sehen.';
$dict['idontaccept']    = 'Ich akzeptiere die Bestimmungen der Lizenzvereinbarung NICHT.';
$dict['iaccept']        = 'Ich akzeptiere die Bestimmungen der Lizenzvereinbarung.';
$dict['forward']        = 'Weiter';
$dict['backward']       = 'Zurück';
$dict['phpversion']     = 'PHP-Version';
$dict['rightversion']   = 'Für Betrieb von phpEasyProject benötigen Sie die PHP-Version ab 4.3.x oder 5.x<br />Bitte installieren Sie neuere Version von <a href="http://www.php.net">http://www.php.net</a>';
$dict['DOMDocument']    = 'Export-Funktion ist verfügbar';
$dict['emptydomdocument']
                        = 'Achtung! Es fehlt die Unterstützung in PHP von XSLT-Funktionen. Sie können das Programm trotzdem benutzen, allerdings ohne Möglichkeiten für Export von Daten';
$dict['templ_dir_writable']
                        = '<strong>templates_c</strong> ist schreibbar';
$dict['templ_n_writable']
                        = 'Bitte stellen Sie sicher, dass "<strong>templates_c</strong>" nicht schreibgeschützt ist.';
$dict['conf_writable']  = 'Die Konfigurationsdatei ist schreibbar';
$dict['conf_n_writable']= 'Bitte stellen Sie sicher, dass das Verzeichnis "<strong>config/</strong>" nicht schreibgeschützt ist.';
$dict['config_saved']   = 'Die Konfigurationsdatei wurde erfolgreich erstellt.';
$dict['db_created']     = 'Die Datenbankstruktur wurde erfolgreich erstellt.';
$dict['congratulations'] = 'Installation war erfolgreich. Bitte vergessen sie nicht das Verzeichnis "install" vom Server zu löschen! Danach klicken Sie <a href="../">hier</a> für Login.';
$dict['mysqlcompatible']= 'Diese  Version von PHP unterstützt MySQL Client Bibliothek';
$dict['notmysqlcompatible']
                        = 'Diese Version von PHP unterstützt die MySQL Client Bibliothek nicht. Beim kompilieren von PHP benutzen Sie einfach  --with-mysql=[DIR], wobei [DIR] auf das Installationsverzeichnis von MySQL verweist';

// Fehlermeldungen
$dict['APP_CLOSED']     = 'Kritische Programmfehler';
$dict['err_100']        = 'Sie haben kein Titel eingegeben';
$dict['err_101']        = 'Man sollte Prioritäten setzen...';
$dict['err_102']        = 'Das Projekt &laquo;%s&raquo; ist schon geschlossen. Sie können zu einem geschlossen Projekt keine weiteren Aufgaben pflegen';
$dict['err_110']        = 'Der Anmeldename (login) darf nicht leer sein!';
$dict['err_111']        = 'Der Familienname ist nicht angegeben worden.';
$dict['err_112']        = 'Der Vorname ist nicht angegeben worden.';
$dict['err_113']        = 'Es wurde kein Password angegeben.';
$dict['err_114']        = 'Das Kennwort stimmt nicht überein';
$dict['err_115']        = 'Das Kennwort sollte länger als 5 Zeichen sein';
$dict['err_120']        = 'Sie haben keinen Projektnamen angegeben';
$dict['err_130']        = 'Sie haben keine Bezeichnung für die Projektposition angegeben';
$dict['err_140']        = 'Sie können eine Unterposition nicht unter eigener Baumstruktur verschieben!';
$dict['err_141']        = 'Konnte diese Position zu keinem Projekt zuweisen. Bitte stellen Sie sicher, dass Ihr Browser die Coockies akzeptiert, ggf. melden Sie dieses Problem bei Ihren Systemadministrator.';
$dict['err_200']        = 'Kritischer Fehler bei Initialisieren des Objektes.<br />
Wenden Sie sich bitte mit diesem Problem an Ihren Systemadministrator.';
$dict['err_201']        = 'Konnte in der Datenbank nicht schreiben.<br />Überprüfen Sie
die Datenbankeinstellungen in der Config-Datei oder wenden Sie sich an Ihren Systemadministrator.';
$dict['err_202']        = 'Kritischer Fehler beim Lesen aus der Datenbank.<br />
Wenden Sie sich bitte mit diesem Problem an Ihren Systemadministrator.';
$dict['err_300']        = 'Es fehlt die Beschreibung für die Tätigkeit';
$dict['err_301']        = 'Die Tätigkeit muss zu einer Bestimmten Projektposition  eines gültigen Projektes zugewiesen werden.';
$dict['err_302']        = 'Überprüfen Sie die Datumsangabe';
$dict['err_303']        = 'Überprüfen Sie die Zeitangabe';
$dict['err_401']        = 'Konnte den Ordner mit Sprachdateien nicht finden. Überprüfen Sie die Pfade in der Konfiguration.';
$dict['err_402']        = 'Die Configdatei ist schreibgeschützt';
$dict['err_404']        = 'Konnte die Konfigurationsdatei %s nicht finden';
$dict['err_410']        = 'Das Web-Root darf nicht leer sein.';
$dict['err_411']        = 'Der DB Hostname ist leer';
$dict['err_412']        = 'Der DB Name ist leer';
$dict['err_413']        = 'Der DB User ist leer';
$dict['err_414']        = 'Das DB Kennwort ist leer';
$dict['err_415']        = 'Konnte keine Verbindung zur Datenbank herstellen. Überprüfen Sie die Konfigurationsangaben';
$dict['err_416']        = 'BITTE ENTFERNEN SIE DAS VERZEICHNIS install';
$dict['err_501']        = 'Sie haben wahrscheinlich  keinen Anmeldenamen angegeben';
$dict['err_502']        = 'Sie haben wahrscheinlich  kein Kennwort angegeben';
$dict['err_503']        = 'Anmeldename oder Kennwort konnten nicht gefunden werden';
$dict['err_504']        = 'Ihr Konto ist deaktiviert. Bitte wenden Sie sich an Ihre Geschäftsleitung.';
$dict['err_600']        = 'Falsche Zeiteingabe';
$dict['error']          = "Fehler:";
?>