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

$loc = setlocale (LC_ALL, 'es_GB', 'es_GB.UTF-8', 'es', 'Español');

DEFINE('GUILANGUAGE','Español');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d %B %Y');
DEFINE('DATEFIELD','d/m/Y');
DEFINE('DATEFIELDCAL','%d/%m/%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['todolist']       = 'Tareas';
$dict['number_short']   = 'No.';
$dict['status']         = 'Estado';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="grado de realización">DoC</acronym>';
$dict['degree_of_completion_full']
                        = 'Grado de realización';
$dict['activity_acquisition']
                        = 'Gestión de Actividades
';
$dict['usermanagement'] = 'Gestión de Usuarios';
$dict['usersettings']   = 'Ajustes de Usuario';
$dict['help']           = 'Ayuda';
$dict['user']           = 'Usuario';
$dict['logout']         = 'Salir';
$dict['login']          = 'Entrar';
$dict['todo']           = 'Pendientes';
$dict['project']        = 'Proyecto';
$dict['projects']       = 'Proyectos';
$dict['archive']        = 'Archivo';
$dict['configuration']  = 'Configuración';
$dict['startdate']      = 'Inicio';
$dict['finishdate']     = 'Finalización';
$dict['duration']       = 'Duración';
$dict['prio']           = 'Prio.';
$dict['priority']       = 'Prioridad';
$dict['privat']         = 'Privado';
$dict['agreed']         = 'Compl.';
$dict['complete']       = 'Completa';
$dict['dontstartet']    = 'Aun no iniciada';
$dict['expired']        = 'Expirada';
$dict['expiredperiod']  = 'Advertencia! El tiempo para esta tarea esta pronto a acabarse';
$dict['nonaktiv']       = 'No activa aún';
$dict['activ']          = 'Activa';
$dict['todoadd']        = 'Agregue una nueva tarea';
$dict['todoedit']       = 'Editor de tareas';
$dict['projectadd']     = 'Nuevo proyecto';
$dict['projectedit']    = 'Editar proyecto';
$dict['projectpositions']
                        = 'Posiciones del proyecto';
$dict['projectname']    = 'Nombre del proyecto';
$dict['commentar']      = 'Comentario';
$dict['dateselector']   = 'Selección de fecha';
$dict['date']           = 'Fecha';
$dict['warning']        = 'Advertencia previa a expirar';
$dict['noname']         = 'Desconocido';
$dict['1day']           = '1 día';
$dict['2days']          = '2 días';
$dict['3days']          = '3 días';
$dict['4days']          = '4 días';
$dict['5days']          = '5 días';
$dict['1week']          = '1 semana';
$dict['2weeks']         = '2 semanas';
$dict['newrecord']      = 'Formulario vacío';
$dict['saverecord']     = 'Guardar';
$dict['copy']           = 'Copiar';
$dict['moveintoarchive']= 'Pasar al archivo';
$dict['none']           = 'nada';
$dict['created']        = 'Creado';
$dict['changed']        = 'Modificado';
$dict['search']         = 'Buscar';
$dict['show']           = 'Mostrar';
$dict['all_todos']      = 'Todas las tareas';
$dict['active_only']    = 'Sólo tareas abiertas';
$dict['active']         = 'Actividad';
$dict['completed_only'] = 'Sólo completas';
$dict['all_projects']   = 'Todos los proyectos';
$dict['reload']         = 'Recargar';
$dict['restore']        = 'Restaurar';
$dict['delete']         = 'Eliminar';
$dict['delete_confirm'] = '¿Le gustaría eliminar esta tarea?';
$dict['areyousure']     = '¿Esta seguro?';
$dict['found']          = 'Encontrada';
$dict['pages']          = 'Paginas';
$dict['todos']          = 'Tareas';
$dict['trainee']        = 'A prueba';
$dict['trainee_short']  = 'AP';
$dict['employee']       = 'Empleado';
$dict['employees']      = 'Empleados';
$dict['emplname']       = 'Nombre';
$dict['empl_active']    = 'Activo';
$dict['employeeadd']    = 'Agregar empleado';
$dict['employeeedit']   = 'Editar cuenta';
$dict['position']       = 'Posición';
$dict['project_manager']= 'Gerente de Proyecto';
$dict['store_manager']  = 'Gerente de Departamento';
$dict['empl_short']     = 'EM';
$dict['PM']             = 'GP';
$dict['SM']             = 'GD';
$dict['noPosition']     = 'Puesto desconocido';
$dict['surname']        = 'Apellido';
$dict['firstname']      = 'Nombre';
$dict['password']       = 'Contraseña';
$dict['password_retry'] = 'Confirmación de contraseña';
$dict['projectmembers'] = 'Miembros del Proyecto';
$dict['memberinprojects']
                        = 'Miembros en proyectos';
$dict['employeeslist']  = 'Listado de miembros';
$dict['projectlist']    = 'Listado de Proyectos';
$dict['all_employees']  = 'Todos los empleados';
$dict['enabled_only']   = 'Sólo usuarios activos';
$dict['disabled_only']  = 'Sólo usuarios inactivos';
$dict['autologin']      = 'Ingresar automáticamente en cada visita';
$dict['loginform']      = 'Entrar';
$dict['projectmanagement']
                        = 'Gestión de Proyecto';
$dict['projectisactive']= 'Proyecto activo';
$dict['all_projects']   = 'Todos los proyectos';
$dict['pr_enabled_only']= 'Sólo proyectos activos';
$dict['pr_disabled_only']
                        = 'Sólo proyectos inactivos';
$dict['emptylist']      = 'No se encontraron datos';
$dict['projectposition']= 'Posición del proyecto';
$dict['projectpositions']
                        = 'Posiciones del proyecto';
$dict['prposisactive']  = 'Posición de proyecto activa';
$dict['prposadd']       = 'Agregar una nueva posición de proyecto';
$dict['prposedit']      = 'Editar posición de proyecto';
$dict['order']          = 'Orden';
$dict['afterposition']  = 'Posición seleccionada después';
$dict['asunderposition']= 'Como sobreposición';
$dict['today']          = 'Hoy';
$dict['EmployeeHasOpenTodo']
                        = 'El empleado tiene %d entradas en la lista de tareas.';
$dict['time']           = 'Tiempo';
$dict ['activity']      = 'Actividades';
$dict['shortdescription']
                        = 'Descripción corta';
$dict['fulldescription']= 'Descripción detallada';
$dict['activityedit']   = 'Editar actividad';
$dict['activityadd']    = 'Agregar nueva actividad';
$dict['dayback']        = 'Previo';
$dict['dayforward']     = 'Próximo';
$dict['staistic']       = 'Estadística';
$dict['hourshort']      = 'h.';
$dict['week']           = '%dº semana';
$dict['selectedDate']   = 'Fecha seleccionada';
$dict['actuellDate']    = 'Fecha actual';
$dict['export']         = 'Exportar datos';
$dict['xmlformat']      = 'Archivo-XML';
$dict['htmlformat']     = 'Archivo-(X)HTML';
$dict['makeexport']     = 'Exportar';
$dict['markon']         = 'marcar todos';
$dict['markoff']        = 'desmarcar todos';
$dict['groupby']        = 'Agrupar por';
$dict['groupbytime']    = 'Tiempo';
$dict['months']         = 'Meses';
$dict['weeks']          = 'Semanas';
$dict['days']           = 'Días';
$dict['summfor']        = 'Suma para %s:';
$dict['summtotal']      = 'Total:';
$dict['remove']         = 'Borrar';
$dict['fileisnotwritable']
                        = 'El archivo de configuración es de sólo lectura. Por favor chequeé los derechos de acceso.';
$dict['webroot_path']   = 'La ruta a la raíz de la web';
$dict['databasetype']   = 'Base de datos';
$dict['hostname']       = 'Nombre de host de la Base de Datos';
$dict['dbname']         = 'Nombre de la Base de Datos';
$dict['dbuser']         = 'Usuario de la Base de Datos';
$dict['dbpassword']     = 'Contraseña de la Base de Datos';
$dict['dbsuffix']       = 'Sufijo de la tabla';
$dict['defaultlanguage']= 'Lenguaje por defecto';
$dict['language']       = 'Lenguaje';
$dict['taetmistep']     = 'paso de los minutos para el formulario de actividades';
$dict['showmistep']     = 'paso de los minutos para la lista de actividades';
$dict['workdayfrom']    = 'Comienzo del día de trabajo';
$dict['workdayunto']    = 'Fin del día de trabajo';
$dict['activityduration']
                        = 'Duración de la actividad por defecto';

// Install
$dict['installation']   = 'Instalación';
$dict['step']           = 'Paso';
$dict['readlicense']    = 'Por favor lea el siguiente Acuerdo de Licencia. Debes aceptar los terminos de este acuerdo antes de continuar con la instalación.';
$dict['idontaccept']    = 'No acepto el acuerdo.';
$dict['iaccept']        = 'Acepto el acuerdo.';
$dict['forward']        = 'Avanzar';
$dict['backward']       = 'Retroceder';
$dict['phpversion']     = 'Versión de PHP';
$dict['rightversion']   = 'Necesitas una versión de PHP superior a 4.3.x o 5.x<br />Por favor instale una nueva versión de PH desde <a href="http://www.php.net">http://www.php.net</a>';
$dict['DOMDocument']    = 'Las funciones de exportación están disponibles';
$dict['emptydomdocument']
                        = 'Cuidado! Tu instalación de PHP no soporta las funciones PHP XSLT. Puedes usar este programa, sin embargo, sin posibilidades de exportar datos.';
$dict['templ_dir_writable']
                        = '<strong>templates_c</strong> es escribible';
$dict['templ_no_writable']
                        = 'Por favor haga <strong>templates_c</strong> escribible.';
$dict['conf_writable']  = 'El archivo de configuración es escribible';
$dict['conf_n_writable']= 'El directorio <strong>config</strong> no es escribible.';
$dict['config_saved']   = 'El archivo de configuración fue producido satisfactorio.';
$dict['db_created']     = 'La estructura de la base de dato fue producida satisfactoriamente.';
$dict['congratulations'] = 'La instalación fue satisfactoria. Por favor borre el directorio install del servidor y cliqueé <a href="../">aquí</a> para ingresar.';
$dict['mysqlcompatible']= 'El cliente MySQL Bibliothek es soportado';
$dict['notmysqlcompatible']
                        = 'El cliente MySQL Bibliothek no es soportado. Use la --with-mysql[=DIR] opción de configuración para incluir soporte a MySQL.';

// Fehlermeldungen
$dict['err_100']        = 'Título vacío';
$dict['err_101']        = 'Prioridad vacía';
$dict['err_102']        = 'El proyecto &laquo;%s&raquo; esta cerrado. No puedes editar o agregar tareas a proyectos cerrados';
$dict['err_110']        = 'Nombre de ingreso vacío';
$dict['err_111']        = 'Apellido vacío';
$dict['err_112']        = 'Nombre vacío';
$dict['err_113']        = 'Contraseña vacía';
$dict['err_114']        = 'Contraseña incorrecta';
$dict['err_115']        = 'La contraseña debe tener el menos 5 caracteres';
$dict['err_120']        = 'Título del proyecto vacío';
$dict['err_130']        = 'Descripción vacía para la posición del proyecto';
$dict['err_140']        = 'No puedes desplazar una posición de proyecto sobre su propia estructura de arbol!';
$dict['err_141']        = 'No se encontraron proyectos para esta posición.';
$dict['err_200']        = 'Error crítico durante la inicialización de estos objetos.';
$dict['err_201']        = 'No se pudo escribir en la base de datos.';
$dict['err_202']        = 'No se pudo leer desde la base de datos.';
$dict['err_300']        = 'Descripción vacía';
$dict['err_301']        = 'La actividad debe ser asignada a una cierta posición de proyecto o un proyecto valido.';
$dict['err_302']        = 'Ingreso de fecha erróneo';
$dict['err_303']        = 'Ingreso de hora erróneo';
$dict['err_401']        = 'No se pudo encontrar el directorio con los archivos de lenguaje. Chequeé las rutas en la configuración.';
$dict['err_402']        = 'El archivo de configuración no puede ser escrito (sólo leído). Chequeé los derechos de acceso.';
$dict['err_404']        = 'No puedo encontrar el archivo de configuración %s';
$dict['err_410']        = 'Raíz de la web vacía';
$dict['err_411']        = 'Nombre de host de la Base de Datos vacío';
$dict['err_412']        = 'Nombre de la Base de Datos vacío';
$dict['err_413']        = 'Usuario de la Base de Datos vacío';
$dict['err_414']        = 'Contraseña de la Base de Datos vacía';
$dict['err_415']        = 'No se pudo escribir en la base de datos. Chequeé la información de configuración.';
$dict['err_416']        = 'POR FAVOR REMUEVA EL DIRECTORIO "install"';
$dict['err_501']        = 'Nombre de ingreso vacío';
$dict['err_502']        = 'Contraseña vacía';
$dict['err_503']        = 'No pudo ser encontrado.';
$dict['err_504']        = 'Tu cuenta está desactivada. Por favor contacta a tu administrador.';
$dict['err_600']        = 'Ingreso de hora erróneo';
$dict['error']          = "Errores:";
?>
