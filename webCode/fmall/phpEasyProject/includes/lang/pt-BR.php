<?php
/**
 * phpEasyProjects - a easy Projects based activity management and todo lists
 * Copyright (C) 2005  Arthur Harder
	* Translation to Brazilian Portuguese (pt_BR) by
	* Jose Carlos Medeiros <jose@psabs.com.br>
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

$loc = setlocale (LC_ALL, 'pt_BR', 'pt_BR.UTF-8', 'pt', 'Brazilian Portuguese');

DEFINE('GUILANGUAGE','Português');

DEFINE('SHORTDATE','%a, %d %b %Y %H:%M');
DEFINE('SHORTDATES','%a, %d %b %Y');
DEFINE('FULLDATE','%A, %d %B %Y');
DEFINE('DATEFIELD','m/d/Y');
DEFINE('DATEFIELDCAL','%m/%d/%Y');
DEFINE('MMYYYY', '%B %Y');

$dict['APP_CLOSED']     = 'Critical programm error';
$dict['todolist']       = 'Tarefas';
$dict['number_short']   = 'No.';
$dict['status']         = 'Estado';
$dict['degree_of_completion']
                        = '<acronym style="cursor:default; border-bottom:1px dotted Gray;" title="degree of completion">DoC</acronym>';
$dict['degree_of_completion_full']
                        = 'Porcentagem Completa';
$dict['activity_acquisition']
                        = 'Atividades';
$dict['usermanagement'] = 'Usuários';
$dict['usersettings']   = 'Preferências do Usuário';
$dict['help']           = 'Ajuda';
$dict['user']           = 'Usuário';
$dict['logout']         = 'Sair';
$dict['login']          = 'Usuário';
$dict['todo']           = 'A Fazer';
$dict['project']        = 'Projeto';
$dict['projects']       = 'Projetos';
$dict['archive']        = 'Arquivo';
$dict['configuration']  = 'Configuração';
$dict['startdate']      = 'Inicio';
$dict['finishdate']     = 'Término';
$dict['duration']       = 'Duração';
$dict['prio']           = 'Prio.';
$dict['priority']       = 'Prioridade';
$dict['privat']         = 'Privado';
$dict['agreed']         = 'Compl.';
$dict['complete']       = 'Completado';
$dict['dontstartet']    = 'Não Iniciado';
$dict['expired']        = 'Expirado';
$dict['expiredperiod']  = 'Aviso! Esta tarefa irá expirar em breve';
$dict['nonaktiv']       = 'Não Ativo';
$dict['activ']          = 'Ativo';
$dict['todoadd']        = 'Nova tarefa';
$dict['todoedit']       = 'Editar tarefa';
$dict['projectadd']     = 'Novo projeto';
$dict['projectedit']    = 'Editar projeto';
$dict['projectpositions']
                        = 'Posições do projeto';
$dict['projectname']    = 'Nome do projeto';
$dict['commentar']      = 'Comentário';
$dict['dateselector']   = 'Seleção de Data';
$dict['date']           = 'Data';
$dict['warning']        = 'Avisar antes de expirar';
$dict['noname']         = 'Desconhecido';
$dict['1day']           = '1 dia';
$dict['2days']          = '2 dias';
$dict['3days']          = '3 dias';
$dict['4days']          = '4 dias';
$dict['5days']          = '5 dias';
$dict['1week']          = '1 semana';
$dict['2weeks']         = '2 semanas';
$dict['newrecord']      = 'Limpar o formulário';
$dict['saverecord']     = 'Salvar';
$dict['copy']           = 'Copiar';
$dict['moveintoarchive']= 'Mover para o arquivo';
$dict['none']           = 'nada';
$dict['created']        = 'Criado';
$dict['changed']        = 'Alterado';
$dict['search']         = 'Procurar';
$dict['show']           = 'Exibir';
$dict['all_todos']      = 'Todas as tarefas';
$dict['active_only']    = 'Abrir apenas as tarefas';
$dict['active']         = 'Ativo';
$dict['completed_only'] = 'Apenas as completadas';
$dict['all_projects']   = 'Todos os projetos';
$dict['reload']         = 'Recarregar';
$dict['restore']        = 'Restaurar';
$dict['delete']         = 'Excluir';
$dict['delete_confirm'] = 'Deseja excluir esta tarefa?';
$dict['areyousure']     = 'Tem certeza?';
$dict['found']          = 'Encontrado';
$dict['pages']          = 'Páginas';
$dict['todos']          = 'Tarefas';
$dict['trainee']        = 'Trainee';
$dict['trainee_short']  = 'TR';
$dict['employee']       = 'Empregado';
$dict['employees']      = 'Empregados';
$dict['emplname']       = 'Nome';
$dict['empl_active']    = 'Ativo';
$dict['employeeadd']    = 'Adicionar empregado';
$dict['employeeedit']   = 'Editar a conta';
$dict['position']       = 'Posição';
$dict['project_manager']= 'Gerenciador de Projetos';
$dict['store_manager']  = 'Administrador';
$dict['empl_short']     = 'WO';
$dict['PM']             = 'PM';
$dict['SM']             = 'SM';
$dict['noPosition']     = 'Posição desconhecida';
$dict['surname']        = 'Sobrenome';
$dict['firstname']      = 'Nome';
$dict['password']       = 'Senha';
$dict['password_retry'] = 'Re-digite a senha';
$dict['projectmembers'] = 'Membros do projeto';
$dict['memberinprojects']
                        = 'Membro nos projetos';
$dict['employeeslist']  = 'Lista de membros';
$dict['projectlist']    = 'Lista dos projetos';
$dict['all_employees']  = 'Todos os empregados';
$dict['enabled_only']   = 'Habilitar usuários';
$dict['disabled_only']  = 'Desabilitar usuários';
$dict['autologin']      = 'Entrar automaticamente';
$dict['loginform']      = 'Entrar';
$dict['projectmanagement']
                        = 'Gerenciar Projeto';
$dict['projectisactive']= 'Projeto ativo';
$dict['all_projects']   = 'Todos os Projetos';
$dict['pr_enabled_only']= 'Apenas projetos ativos';
$dict['pr_disabled_only']
                        = 'Apenas projetos não ativos';
$dict['emptylist']      = 'Nenhum encontrado';
$dict['projectposition']= 'Posição no Projeto';
$dict['projectpositions']
                        = 'Posições no Projeto';
$dict['prposisactive']  = 'Posição no projeto ativa';
$dict['prposadd']       = 'Adicionar nova posição';
$dict['prposedit']      = 'Editar a posição';
$dict['order']          = 'Ordenar';
$dict['afterposition']  = 'Após a posição selecionada';
$dict['asunderposition']= 'Como na posição';
$dict['today']          = 'Hoje';
$dict['EmployeeHasOpenTodo']
                        = 'O empregador tem %d tarefas.';
$dict['time']           = 'Tempo';
$dict ['activity']      = 'Atividades';
$dict['shortdescription']
                        = 'Descrição curta';
$dict['fulldescription']= 'Descrição detalhada';
$dict['activityedit']   = 'Editar a atividade';
$dict['activityadd']    = 'Adicionar nova atividade';
$dict['dayback']        = 'anterior';
$dict['dayforward']     = 'próxima';
$dict['staistic']       = 'Estatística';
$dict['hourshort']      = 'h.';
$dict['week']           = '%dth semana';
$dict['selectedDate']   = 'Selecionar Data';
$dict['actuellDate']    = 'Data atual';
$dict['export']         = 'Exportar dados';
$dict['xmlformat']      = 'Arquivo XML';
$dict['htmlformat']     = 'Arquivo (X)HTML';
$dict['makeexport']     = 'Exportar';
$dict['markon']         = 'marcar todos';
$dict['markoff']        = 'desmarcar todos';
$dict['groupby']        = 'Agrupar por';
$dict['groupbytime']    = 'Tempo';
$dict['months']         = 'Meses';
$dict['weeks']          = 'Semanas';
$dict['days']           = 'Dias';
$dict['summfor']        = 'Sumarizar por %s:';
$dict['summtotal']      = 'Total:';
$dict['remove']         = 'Excluir';
$dict['fileisnotwritable']
                        = 'O arquivo de configuração esta sem permissão para gravação. Favor checar.';
$dict['webroot_path']   = 'Caminho no servidor web';
$dict['databasetype']   = 'Data base';
$dict['hostname']       = 'Servidor do Banco';
$dict['dbname']         = 'Nome do Banco';
$dict['dbuser']         = 'Usuário do Banco';
$dict['dbpassword']     = 'Senha do Banco';
$dict['dbsuffix']       = 'Sufixo das tabelas';
$dict['defaultlanguage']= 'Língua padrão';
$dict['language']       = 'Língua';
$dict['taetmistep']     = 'Minutos para o formulário de atividades';
$dict['showmistep']     = 'Minutos para a lista de atividades';
$dict['workdayfrom']    = 'Dia de trabalho começou';
$dict['workdayunto']    = 'Dia de trabalho terminou';
$dict['activityduration']
                        = 'Duração padrão para a atividade';

// Install
$dict['installation']   = 'Instalação';
$dict['step']           = 'Passo';
$dict['readlicense']    = 'Favor ler o Aceite de licença abaixo. Você deve aceitar os termos antes de continuar com a instalação.';
$dict['idontaccept']    = 'Eu não aceito os termos.';
$dict['iaccept']        = 'Eu aceito os termos.';
$dict['forward']        = 'Continuar';
$dict['backward']       = 'Voltar';
$dict['phpversion']     = 'PHP-Version';
$dict['rightversion']   = 'Você precisa da versão do PHP maior que 4.3.x ou 5.x<br />Favor instalar a nova versão do PHP <a href="http://www.php.net">http://www.php.net</a>';
$dict['DOMDocument']    = 'Funções de Exportação estão disponíveis';
$dict['emptydomdocument']
                        = 'Aviso! Sua instalação do PHP não suporta as funções XSLT. Você pode utilizar este programa, mas sem a possibilidade de exportação de dados.';
$dict['templ_dir_writable']
                        = '<strong>templates_c</strong> tem permissão para gravação';
$dict['templ_no_writable']
                        = 'Favor dar permissão de gravação para a pasta <strong>templates_c</strong>.';
$dict['conf_writable']  = 'O arquivo de configuração tem permissão para gravação';
$dict['conf_n_writable']= 'O diretório <strong>config</strong> - esta sem permissão para gravação.';
$dict['config_saved']   = 'O arquivo de configuração foi gerado com sucesso.';
$dict['db_created']     = 'A estrutura do banco de dados foi gerada com sucesso.';
$dict['congratulations'] = 'Instalação completa. Favor apagar o diretório "install" no servidor e clique <a href="../">aqui</a> para entrar.';
$dict['mysqlcompatible']= 'Suporte ao MySQL OK';
$dict['notmysqlcompatible']
                        = 'Sem suporte ao MySQL. Instale o módulo para acesso ao MySQL no PHP.';

// Fehlermeldungen
$dict['APP_CLOSED']     = 'Critical programm error';
$dict['err_100']        = 'Preencha o Título';
$dict['err_101']        = 'Preencha a Prioridade';
$dict['err_102']        = 'O projeto &laquo;%s&raquo; está fechado. Você não pode editar ou adicionar tarefas a projetos fechados';
$dict['err_110']        = 'Preencha o Usuário';
$dict['err_111']        = 'Preencha o Sobrenome';
$dict['err_112']        = 'Preencha o Nome';
$dict['err_113']        = 'Preencha a Senha';
$dict['err_114']        = 'Senha incorreta';
$dict['err_115']        = 'A senha deve ser maior que 5 caracteres';
$dict['err_120']        = 'Preencha o título do projeto';
$dict['err_130']        = 'Preecha a descrição da posição';
$dict['err_140']        = 'Você não pode deslocar uma posição sob sua própria estrutura!';
$dict['err_141']        = 'Nenhum projeto encontrado para esta posição.';
$dict['err_200']        = 'Erro crítico durante a inicialização dos objetos.';
$dict['err_201']        = 'Impossível gravar no banco de dados.';
$dict['err_202']        = 'Impossível ler o banco de dados.';
$dict['err_300']        = 'Preencha a descrição';
$dict['err_301']        = 'A atividade deve ser atribuida a uma posição de um projeto válido.';
$dict['err_302']        = 'Data incorreta';
$dict['err_303']        = 'Hora incorreta';
$dict['err_401']        = 'Diretório com os arquivos de línguas não encontrado. Cheque os caminhos na configuração.';
$dict['err_402']        = 'O arquivo de configuração não pode ser gravado (apenas leitura). Cheque as permissões.';
$dict['err_404']        = 'Impossível encontrar o arquivo de configuração %s';
$dict['err_410']        = 'Web - Root esta vazio';
$dict['err_411']        = 'DB Hostname esta vazio';
$dict['err_412']        = 'DB Name esta vazio';
$dict['err_413']        = 'DB Usuário esta vazio';
$dict['err_414']        = 'DB Senha esta vazio';
$dict['err_415']        = 'Impossível gravar no banco de dados. Cheque a configuração.';
$dict['err_416']        = 'FAVOR REMOVER O DIRETÓRIO "install"';
$dict['err_501']        = 'Preecha o usuário';
$dict['err_502']        = 'Preencha a senha';
$dict['err_503']        = 'Não encontrado.';
$dict['err_504']        = 'Sua conta esta desativada. Favor avisar seu gerente.';
$dict['err_600']        = 'Hora incorreta';
$dict['error']          = "Erros:";
?>