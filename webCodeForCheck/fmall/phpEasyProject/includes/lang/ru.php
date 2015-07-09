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

$loc = setlocale (LC_ALL, 'ru_RU.UTF-8', 'ru_RU', 'russian');
//echo "На этой системе русская локаль имеет имя '$loc'";
DEFINE('GUILANGUAGE','Русский');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d. %B %Y');
DEFINE('DATEFIELD','d.m.Y');
DEFINE('DATEFIELDCAL','%d.%m.%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['todolist']       = 'Что сделать';
$dict['number_short']   = 'Ном.';
$dict['status']         = 'Статус';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="Степень готовности">Гот.</acronym>';
$dict['degree_of_completion_full']
                        = 'Степень готовности';
$dict['activity_acquisition']
                        = 'Учёт рабочего времени';
$dict['usermanagement'] = 'Сотрудники';
$dict['usersettings']   = 'Настройки польз.';
$dict['help']           = 'Помощь';
$dict['user']           = 'Пользователь';
$dict['logout']         = 'Выйти';
$dict['login']          = 'Логин';
$dict['todo']           = 'Задание';
$dict['project']        = 'Проект';
$dict['projects']       = 'Проекты';
$dict['archive']        = 'Архив';
$dict['configuration']  = 'Конфигурация';
$dict['startdate']      = 'Начало';
$dict['finishdate']     = 'Окончание';
$dict['duration']       = 'Продолжительность';
$dict['prio']           = 'Прио.';
$dict['priority']       = 'Приоритет';
$dict['privat']         = 'Личное';
$dict['agreed']         = 'Вып.';
$dict['complete']       = 'Выполнено';
$dict['dontstartet']    = 'Не начато';
$dict['expired']        = 'Просрочено';
$dict['expiredperiod']  = 'Скоро будет просрочено';
$dict['nonaktiv']       = 'Не активно';
$dict['activ']          = 'Акт.';
$dict['todoadd']        = 'Добавить запись';
$dict['todoedit']       = 'Редактировать запись';
$dict['projectadd']     = 'Создать новый проект';
$dict['projectedit']    = 'Редактировать проект';
$dict['projectpositions']
                        = 'Позиции проекта';
$dict['projectname']    = 'Наименование проекта';
$dict['commentar']      = 'Комментарии';
$dict['dateselector']   = 'Выбор даты';
$dict['date']           = 'Дата';
$dict['warning']        = 'Предупреждение о просрочивании';
$dict['noname']         = 'Неизвестно';
$dict['1day']           = '1 день';
$dict['2days']          = '2 дня';
$dict['3days']          = '3 дня';
$dict['4days']          = '4 дня';
$dict['5days']          = '5 дней';
$dict['1week']          = '1 неделя';
$dict['2weeks']         = '2 недели';
$dict['newrecord']      = 'Чистая форма';
$dict['saverecord']     = 'Записать';
$dict['copy']           = 'Копировать';
$dict['moveintoarchive']= 'Переместить в архив';
$dict['none']           = 'отсутст.';
$dict['created']        = 'Создано';
$dict['changed']        = 'Изменено';
$dict['search']         = 'Поиск';
$dict['show']           = 'Показывать';
$dict['all_todos']      = 'Все задания';
$dict['active_only']    = 'Невыполненные задания';
$dict['active']         = 'Актуально';
$dict['completed_only'] = 'Только выполненные';
$dict['all_projects']   = 'Все проекты';
$dict['reload']         = 'Перезагрузка';
$dict['restore']        = 'Восстановить';
$dict['delete']         = 'Удалить';
$dict['delete_confirm'] = 'Вы действительно хотите удалить это задание?';
$dict['areyousure']     = 'Вы уверенны?';
$dict['found']          = 'Найдено';
$dict['pages']          = 'Страниц';
$dict['todos']          = 'Задания';
$dict['trainee']        = 'Практикант';
$dict['trainee_short']  = 'Пркт';
$dict['employee']       = 'Сотрудник';
$dict['employees']      = 'Сотрудники';
$dict['emplname']       = 'Имя сотрудника';
$dict['empl_active']    = 'Запись активировать';
$dict['employeeadd']    = 'Добавить запись';
$dict['employeeedit']   = 'Редактировать данные пользователя';
$dict['position']       = 'Позиция';
$dict['project_manager']= 'Менеджер проекта';
$dict['store_manager']  = 'Руководитель организации';
$dict['empl_short']     = 'Сотр.';
$dict['PM']             = 'Менедж.';
$dict['SM']             = 'Рук.';
$dict['noPosition']     = 'Неизвестная позиция';
$dict['surname']        = 'Фамилия';
$dict['firstname']      = 'Имя';
$dict['password']       = 'Пароль';
$dict['password_retry'] = 'Пароль повторить';
$dict['projectmembers'] = 'Участники проекта';
$dict['memberinprojects']
                        = 'Участие в проектах';
$dict['employeeslist']  = 'Список сотрудников';
$dict['projectlist']    = 'Список всех доступных проектов';
$dict['all_employees']  = 'Все сотрудники';
$dict['enabled_only']   = 'Действительные сотрудники';
$dict['disabled_only']  = 'Бывшие сотрудники';
$dict['autologin']      = 'Авторегистрация';
$dict['loginform']      = 'Регистрация';
$dict['projectmanagement']
                        = 'Управление проектами';
$dict['projectisactive']= 'Открытый проект';
$dict['all_projects']   = 'Все проекты';
$dict['pr_enabled_only']= 'Только открытые проекты';
$dict['pr_disabled_only']
                        = 'Только закрытые проекты';
$dict['emptylist']      = 'Данные отсутствуют';
$dict['projectposition']= 'Позиция проекта';
$dict['prposisactive']  = 'Открытая позиция';
$dict['prposadd']       = 'Добавить позицию';
$dict['prposedit']      = 'Редактировать позицию';
$dict['order']          = 'Установить';
$dict['afterposition']  = 'Ниже выбранной позиции';
$dict['asunderposition']= 'В качестве подпозиции к выбранной';
$dict['today']          = 'Сегодня';
$dict['EmployeeHasOpenTodo']
                        = 'У сотрудника ещё %d записей в списке заданий.';
$dict['time']           = 'Время';
$dict ['activity']      = 'Деятельности';
$dict['shortdescription']
                        = 'Краткое описание';
$dict['fulldescription']= 'Подробности деятельности';
$dict['activityedit']   = 'Редактировать';
$dict['activityadd']    = 'Добавить';
$dict['dayback']        = 'Листать назад';
$dict['dayforward']     = 'Листать вперёд';
$dict['staistic']       = 'Статистика';
$dict['hourshort']      = 'ч.';
$dict['week']           = '%d неделя';
$dict['selectedDate']   = 'Выбранная дата';
$dict['actuellDate']    = 'Сегодняшняя дата';
$dict['export']         = 'Экспорт данных';
$dict['xmlformat']      = 'XML-Файл';
$dict['htmlformat']     = 'HTML-Файл';
$dict['makeexport']     = 'Экспортировать';
$dict['markon']         = 'Отметить все';
$dict['markoff']        = 'Снять отметку со всех';
$dict['groupby']        = 'группировать по';
$dict['groupbytime']    = 'времени';
$dict['months']         = 'месяцам';
$dict['weeks']          = 'неделям';
$dict['days']           = 'дням';
$dict['summfor']        = 'Сумма для %s:';
$dict['summtotal']      = 'Всего:';
$dict['remove']         = 'Удалить';
$dict['fileisnotwritable']
                        = 'Файл конфигурации защищён от записи. Проверьте права на запись.';
$dict['webroot_path']   = 'Web-Root - директория';
$dict['databasetype']   = 'База данных';
$dict['hostname']       = 'DB Hostname';
$dict['dbname']         = 'DB Name';
$dict['dbuser']         = 'DB User';
$dict['dbpassword']     = 'DB Password';
$dict['dbsuffix']       = 'Суффикс таблиц';
$dict['defaultlanguage']= 'Язык по дефолту';
$dict['language']       = 'Язык';
$dict['taetmistep']     = 'Минимальный шаг в минутах для ведения учёта рабочего времени';
$dict['showmistep']     = 'Показывать шаг в минутах в списке учёта рабочего времени';
$dict['workdayfrom']    = 'Начало рабочего дня';
$dict['workdayunto']    = 'Конец рабочего дня';
$dict['activityduration']
                        = 'Средняя продолжительность одной деятельности';

// Install
$dict['installation']   = 'Установка';
$dict['step']           = 'Шаг';
$dict['readlicense']    = 'Пожалуйта, прочтите нежеследующее лицензионное соглашение.<br />Используйте прокрутку, чтобы прочесть это соглашение до конца.';
$dict['idontaccept']    = 'Я НЕ согласен со всеми условиями этого лицензионного соглашения';
$dict['iaccept']        = 'Я СОГЛАСЕН со всеми условиями этого лицензионного соглашения';
$dict['forward']        = 'Дальше';
$dict['backward']       = 'Назад';
$dict['phpversion']     = 'Версия PHP';
$dict['rightversion']   = 'Для работы с phpEasyProject Вам необходимо установить версию PHP начиная с 4.3.x или 5.x<br />Пожалуйста, установите более новую версию с <a href="http://www.php.net">http://www.php.net</a>';
$dict['DOMDocument']    = 'Функция экспорта данных поддерживается';
$dict['emptydomdocument']
                        = 'Внимание! Ваша инсталляция PHP не поддерживает функции эскпорта XSLT. Это не влияет на общую работоспособность программы, но не даёт возможности экспорта данных для отчётов.';
$dict['templ_dir_writable']
                        = 'Директория <strong>templates_c</strong> разрешена для записи';
$dict['templ_no_writable']
                        = 'Убедитесь, что <strong>templates_c</strong> не защищена для записи.';
$dict['conf_writable']  = 'Файл конфигурации доступен для записи.';
$dict['conf_n_writable']= 'Файл конфигурации не доступен для записи. Убедитесь, что директория конфигурации <strong>config</strong> не защищена для записи.';
$dict['config_saved']   = 'Файл конфигурации успешно создан.';
$dict['db_created']     = 'Структура БД успешно создана.';
$dict['congratulations'] = 'Инсталляция успешно завершена. Пожалуйста, удалите теперь директорию install с сервера и нажмите <a href="../">здесь</a> для перехода в меню регистрации';
$dict['mysqlcompatible']= 'Поддержка MySQL включена.';
$dict['notmysqlcompatible']
                        = 'Отсутствует поддержка MySQL. Используйте --with-mysql[=DIR] при компиляции PHP для поддержки MySQL.';

// Fehlermeldungen
$dict['APP_CLOSED']     = 'Критическая ошибка при обращении к базе данных';
$dict['err_100']        = 'Отсутствует заголовок';
$dict['err_101']        = 'Вы забыли установить приоритет';
$dict['err_102']        = 'Проект &laquo;%s&raquo; закрыт. Изменение или добавление заданий к закрытому проекту не допускается.';
$dict['err_110']        = 'Пустое имя регистрации (login)!';
$dict['err_111']        = 'Отсутствует фамилия.';
$dict['err_112']        = 'Отсутствует имя.';
$dict['err_113']        = 'Отсутствует пароль.';
$dict['err_114']        = 'Проверьте правильность пароля';
$dict['err_115']        = 'Пароль не может быть короче 5 знаков';
$dict['err_120']        = 'Отсутствует наименование проекта';
$dict['err_130']        = 'Отсутствует наименование позиции проекта';
$dict['err_140']        = 'Запрещённая операция';
$dict['err_141']        = 'Не найден проект к этой позиции.<br />Убедитесь, что Ваш Броузер поддерживает Куки с этого домена,<br />в случае чего обращайтесь к Вашему Сисадмину.';
$dict['err_200']        = 'Невозможно ининциализировать объект.';
$dict['err_201']        = 'Невозможно записать в базу данных.<br />Проверьте настройки файла конфигурации или обратитесь к Сисадмину';
$dict['err_202']        = 'Невозможно прочитать из базы данных.<br />Проверьте настройки файла конфигурации или обратитесь к Сисадмину';
$dict['err_300']        = 'Опишите Вашу деятельность';
$dict['err_301']        = 'Деятельность должна относится к конкретной позиции проекта.';
$dict['err_302']        = 'Проверьте правильность ввода даты';
$dict['err_303']        = 'Проверьте правильность ввода времени';
$dict['err_401']        = 'Невозможно найти на сервере директорию с языковыми файлами. Проверьте правильность путей к директории в настройках.';
$dict['err_402']        = 'Файл конфигурации защищён от записи.';
$dict['err_404']        = 'Файл конфигурации %s не найден';
$dict['err_410']        = 'Поле Web-Root не может быть пустым.';
$dict['err_411']        = 'DB Hostname отсутствует';
$dict['err_412']        = 'DB Name отсутствует';
$dict['err_413']        = 'DB User отсутствует';
$dict['err_414']        = 'DB Password отсутствует';
$dict['err_415']        = 'Невозможно соединиться с Базой Данных. Проверьте правильность данных конфигурации.';
$dict['err_416']        = 'ПОЖАЛУЙСТА УДАЛИТЕ ДИРЕКТОРИЮ install';
$dict['err_501']        = 'Введите Имя Регистрации (Логин)';
$dict['err_502']        = 'Введите Пароль';
$dict['err_503']        = 'Пользователь или пароль не найдены';
$dict['err_504']        = 'Ваша регистрационная запись не акивна. Обратитесь к руководителю Вашей организации.';
$dict['err_600']        = 'Запрещённая операция';
$dict['error']          = "Внимание:";
?>