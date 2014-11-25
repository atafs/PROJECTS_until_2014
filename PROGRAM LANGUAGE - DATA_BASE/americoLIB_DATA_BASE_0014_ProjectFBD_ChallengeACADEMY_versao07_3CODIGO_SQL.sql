/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     27/10/2014 20:29:21                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ALUNO_ASSOCIATI_DOCENTE') then
    alter table Aluno
       delete foreign key FK_ALUNO_ASSOCIATI_DOCENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUNO_ASSOCIATI_LOCALIDA') then
    alter table Aluno
       delete foreign key FK_ALUNO_ASSOCIATI_LOCALIDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUNO_GENERALIZ_UTILIZAD') then
    alter table Aluno
       delete foreign key FK_ALUNO_GENERALIZ_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ALUNO_INSCRICAO_UNIVERSI') then
    alter table Aluno
       delete foreign key FK_ALUNO_INSCRICAO_UNIVERSI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ORADOR') then
    alter table Association_16
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ORADOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_TIPO_EVE') then
    alter table Association_16
       delete foreign key FK_ASSOCIAT_ASSOCIATI_TIPO_EVE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_CATEGORI') then
    alter table Association_20
       delete foreign key FK_ASSOCIAT_ASSOCIATI_CATEGORI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_UTILIZAD') then
    alter table Association_20
       delete foreign key FK_ASSOCIAT_ASSOCIATI_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ALUNO') then
    alter table Association_24
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ALUNO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_EVENTO') then
    alter table Association_24
       delete foreign key FK_ASSOCIAT_ASSOCIATI_EVENTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_EVENTO') then
    alter table Association_25
       delete foreign key FK_ASSOCIAT_ASSOCIATI_EVENTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_UNIVERSI') then
    alter table Association_25
       delete foreign key FK_ASSOCIAT_ASSOCIATI_UNIVERSI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_TIPO_PRO') then
    alter table Association_34
       delete foreign key FK_ASSOCIAT_ASSOCIATI_TIPO_PRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_UTILIZAD') then
    alter table Association_34
       delete foreign key FK_ASSOCIAT_ASSOCIATI_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_DOCENTE') then
    alter table Association_37
       delete foreign key FK_ASSOCIAT_ASSOCIATI_DOCENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_EVENTO') then
    alter table Association_37
       delete foreign key FK_ASSOCIAT_ASSOCIATI_EVENTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_EVENTO') then
    alter table Association_8
       delete foreign key FK_ASSOCIAT_ASSOCIATI_EVENTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ASSOCIAT_ASSOCIATI_ORADOR') then
    alter table Association_8
       delete foreign key FK_ASSOCIAT_ASSOCIATI_ORADOR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CATEGORI_ASSOCIATI_CATEGORI') then
    alter table Categoria
       delete foreign key FK_CATEGORI_ASSOCIATI_CATEGORI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMENTAR_ASSOCIATI_POST') then
    alter table Comentario
       delete foreign key FK_COMENTAR_ASSOCIATI_POST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMENTAR_ASSOCIATI_UTILIZAD') then
    alter table Comentario
       delete foreign key FK_COMENTAR_ASSOCIATI_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DATA_FIN_DATA_INGR_DATA_ENT') then
    alter table Data_Finalizacao
       delete foreign key FK_DATA_FIN_DATA_INGR_DATA_ENT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DATA_FIN_DATA_INGR_TITULO_U') then
    alter table Data_Finalizacao
       delete foreign key FK_DATA_FIN_DATA_INGR_TITULO_U
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DATA_DOS_DATA_DOS__HORA') then
    alter table Data_dos_Objectivos
       delete foreign key FK_DATA_DOS_DATA_DOS__HORA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DATA_DOS_DATA_DOS__OBJECTIV') then
    alter table Data_dos_Objectivos
       delete foreign key FK_DATA_DOS_DATA_DOS__OBJECTIV
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DIA_ASSOCIATI_CALENDAR') then
    alter table Dia
       delete foreign key FK_DIA_ASSOCIATI_CALENDAR
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCENTE_ASSOCIATI_LOCALIDA') then
    alter table Docente
       delete foreign key FK_DOCENTE_ASSOCIATI_LOCALIDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCENTE_GENERALIZ_UTILIZAD') then
    alter table Docente
       delete foreign key FK_DOCENTE_GENERALIZ_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCUMENT_ASSOCIATI_PROJECTO') then
    alter table Documento
       delete foreign key FK_DOCUMENT_ASSOCIATI_PROJECTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCUMENT_ASSOCIATI_PARECER') then
    alter table Documento
       delete foreign key FK_DOCUMENT_ASSOCIATI_PARECER
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_DOCUMENT_ASSOCIATI_TIPO_DOC') then
    alter table Documento
       delete foreign key FK_DOCUMENT_ASSOCIATI_TIPO_DOC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EVENTO_ASSOCIATI_TIPO_EVE') then
    alter table Evento
       delete foreign key FK_EVENTO_ASSOCIATI_TIPO_EVE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_HORA_ASSOCIATI_DIA') then
    alter table Hora
       delete foreign key FK_HORA_ASSOCIATI_DIA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MODERADO_GENERALIZ_UTILIZAD') then
    alter table Moderador
       delete foreign key FK_MODERADO_GENERALIZ_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OBJECTIV_OBJECTIVO_OBJECTIV') then
    alter table Objectivos_do_Projecto
       delete foreign key FK_OBJECTIV_OBJECTIVO_OBJECTIV
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_OBJECTIV_OBJECTIVO_PROJECTO') then
    alter table Objectivos_do_Projecto
       delete foreign key FK_OBJECTIV_OBJECTIVO_PROJECTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ORGANIZA_GENERALIZ_UTILIZAD') then
    alter table Organizacao
       delete foreign key FK_ORGANIZA_GENERALIZ_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PARECER_ASSOCIATI_MODERADO') then
    alter table Parecer
       delete foreign key FK_PARECER_ASSOCIATI_MODERADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PERMISSA_PERMISSAO_MAIL') then
    alter table Permissao_de_Mail
       delete foreign key FK_PERMISSA_PERMISSAO_MAIL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PERMISSA_PERMISSAO_UTILIZAD') then
    alter table Permissao_de_Mail
       delete foreign key FK_PERMISSA_PERMISSAO_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_POST_ASSOCIATI_UTILIZAD') then
    alter table Post
       delete foreign key FK_POST_ASSOCIATI_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_POST_ASSOCIATI_CATEGORI') then
    alter table Post
       delete foreign key FK_POST_ASSOCIATI_CATEGORI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROCESSO_ASSOCIATI_MODERADO') then
    alter table Processo
       delete foreign key FK_PROCESSO_ASSOCIATI_MODERADO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROJECTO_ASSOCIATI_PROCESSO') then
    alter table Projecto
       delete foreign key FK_PROJECTO_ASSOCIATI_PROCESSO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROJECTO_ASSOCIATI_TIPO_PRO') then
    alter table Projecto
       delete foreign key FK_PROJECTO_ASSOCIATI_TIPO_PRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROJECTO_ASSOCIATI_PERMISSA') then
    alter table Projecto
       delete foreign key FK_PROJECTO_ASSOCIATI_PERMISSA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROJECTO_PROJECTO__PROJECTO') then
    alter table Projecto_Atribuido
       delete foreign key FK_PROJECTO_PROJECTO__PROJECTO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROJECTO_PROJECTO__UTILIZAD') then
    alter table Projecto_Atribuido
       delete foreign key FK_PROJECTO_PROJECTO__UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TIPO_PRO_ASSOCIATI_TIPO_PRO') then
    alter table Tipo_Projecto
       delete foreign key FK_TIPO_PRO_ASSOCIATI_TIPO_PRO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TITULO_U_TITULO_UN_UNIVERSI') then
    alter table Titulo_Universitario
       delete foreign key FK_TITULO_U_TITULO_UN_UNIVERSI
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TITULO_U_TITULO_UN_UTILIZAD') then
    alter table Titulo_Universitario
       delete foreign key FK_TITULO_U_TITULO_UN_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UNIVERSI_ASSOCIATI_LOCALIDA') then
    alter table Universidade
       delete foreign key FK_UNIVERSI_ASSOCIATI_LOCALIDA
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_UTILIZAD_ASSOCIATI_NACIONAL') then
    alter table Utilizador
       delete foreign key FK_UTILIZAD_ASSOCIATI_NACIONAL
end if;

drop index if exists Aluno.ALUNO_AK;

drop index if exists Aluno.GENERALIZATION_3_FK;

drop index if exists Aluno.ASSOCIATION_26_FK;

drop index if exists Aluno.INSCRICAO_FK;

drop index if exists Aluno.ASSOCIATION_21_FK;

drop index if exists Aluno.ALUNO_PK;

drop table if exists Aluno;

drop index if exists Association_16.ASSOCIATION_16_FK2;

drop index if exists Association_16.ASSOCIATION_16_FK;

drop index if exists Association_16.ASSOCIATION_16_PK;

drop table if exists Association_16;

drop index if exists Association_20.ASSOCIATION_20_FK2;

drop index if exists Association_20.ASSOCIATION_20_FK;

drop index if exists Association_20.ASSOCIATION_20_PK;

drop table if exists Association_20;

drop index if exists Association_24.ASSOCIATION_24_FK2;

drop index if exists Association_24.ASSOCIATION_24_FK;

drop index if exists Association_24.ASSOCIATION_24_PK;

drop table if exists Association_24;

drop index if exists Association_25.ASSOCIATION_25_FK2;

drop index if exists Association_25.ASSOCIATION_25_FK;

drop index if exists Association_25.ASSOCIATION_25_PK;

drop table if exists Association_25;

drop index if exists Association_34.ASSOCIATION_34_FK2;

drop index if exists Association_34.ASSOCIATION_34_FK;

drop index if exists Association_34.ASSOCIATION_34_PK;

drop table if exists Association_34;

drop index if exists Association_37.ASSOCIATION_37_FK2;

drop index if exists Association_37.ASSOCIATION_37_FK;

drop index if exists Association_37.ASSOCIATION_37_PK;

drop table if exists Association_37;

drop index if exists Association_8.ASSOCIATION_8_FK2;

drop index if exists Association_8.ASSOCIATION_8_FK;

drop index if exists Association_8.ASSOCIATION_8_PK;

drop table if exists Association_8;

drop index if exists Calendario.CALENDARIO_PK;

drop table if exists Calendario;

drop index if exists Categoria.ASSOCIATION_42_FK;

drop index if exists Categoria.CATEGORIA_PK;

drop table if exists Categoria;

drop index if exists Categoria_de_Profissional.CATEGORIA_DE_PROFISSIONAL_PK;

drop table if exists Categoria_de_Profissional;

drop index if exists Comentario.ASSOCIATION_40_FK;

drop index if exists Comentario.ASSOCIATION_38_FK;

drop index if exists Comentario.COMENTARIO_PK;

drop table if exists Comentario;

drop index if exists Data_Entrada.DATA_ENTRADA_PK;

drop table if exists Data_Entrada;

drop index if exists Data_Finalizacao.DATA_FINALIZACAO_AK;

drop index if exists Data_Finalizacao.DATA_INGRESSO_FK2;

drop index if exists Data_Finalizacao.DATA_INGRESSO_FK;

drop index if exists Data_Finalizacao.DATA_FINALIZACAO_PK;

drop table if exists Data_Finalizacao;

drop index if exists Data_dos_Objectivos.DATA_DOS_OBJECTIVOS_FK2;

drop index if exists Data_dos_Objectivos.DATA_DOS_OBJECTIVOS_FK;

drop index if exists Data_dos_Objectivos.DATA_DOS_OBJECTIVOS_PK;

drop table if exists Data_dos_Objectivos;

drop index if exists Dia.ASSOCIATION_6_FK;

drop index if exists Dia.DIA_PK;

drop table if exists Dia;

drop index if exists Docente.DOCENTE_AK;

drop index if exists Docente.GENERALIZATION_4_FK;

drop index if exists Docente.ASSOCIATION_22_FK;

drop index if exists Docente.DOCENTE_PK;

drop table if exists Docente;

drop index if exists Documento.ASSOCIATION_30_FK;

drop index if exists Documento.ASSOCIATION_29_FK;

drop index if exists Documento.ASSOCIATION_6_FK;

drop index if exists Documento.DOCUMENTO_PK;

drop table if exists Documento;

drop index if exists Evento.ASSOCIATION_7_FK;

drop index if exists Evento.EVENTO_PK;

drop table if exists Evento;

drop index if exists Hora.ASSOCIATION_7_FK;

drop index if exists Hora.HORA_PK;

drop table if exists Hora;

drop index if exists Localidade.LOCALIDADE_PK;

drop table if exists Localidade;

drop index if exists Mail.MAIL_PK;

drop table if exists Mail;

drop index if exists Moderador.MODERADOR_AK;

drop index if exists Moderador.GENERALIZATION_1_FK;

drop index if exists Moderador.MODERADOR_PK;

drop table if exists Moderador;

drop index if exists Nacionalidade.NACIONALIDADE_PK;

drop table if exists Nacionalidade;

drop index if exists Objectivo.OBJECTIVO_PK;

drop table if exists Objectivo;

drop index if exists Objectivos_do_Projecto.OBJECTIVOS_DO_DESAFIO_FK2;

drop index if exists Objectivos_do_Projecto.OBJECTIVOS_DO_DESAFIO_FK;

drop index if exists Objectivos_do_Projecto.OBJECTIVOS_DO_PROJECTO_PK;

drop table if exists Objectivos_do_Projecto;

drop index if exists Orador.ORADOR_PK;

drop table if exists Orador;

drop index if exists Organizacao.ORGANIZACAO_AK;

drop index if exists Organizacao.GENERALIZATION_2_FK;

drop index if exists Organizacao.ORGANIZACAO_PK;

drop table if exists Organizacao;

drop index if exists Parecer.ASSOCIATION_31_FK;

drop index if exists Parecer.PARECER_PK;

drop table if exists Parecer;

drop index if exists Permissao_de_Mail.PERMISSAO_DE_MAIL_FK2;

drop index if exists Permissao_de_Mail.PERMISSAO_DE_MAIL_FK;

drop index if exists Permissao_de_Mail.PERMISSAO_DE_MAIL_PK;

drop table if exists Permissao_de_Mail;

drop index if exists Post.ASSOCIATION_41_FK;

drop index if exists Post.ASSOCIATION_39_FK;

drop index if exists Post.POST_PK;

drop table if exists Post;

drop index if exists Processo.ASSOCIATION_28_FK;

drop index if exists Processo.PROCESSO_PK;

drop table if exists Processo;

drop index if exists Projecto.PROJECTO_AK;

drop index if exists Projecto.ASSOCIATION_36_FK;

drop index if exists Projecto.ASSOCIATION_32_FK;

drop index if exists Projecto.ASSOCIATION_27_FK;

drop index if exists Projecto.PROJECTO_PK;

drop table if exists Projecto;

drop index if exists Projecto_Atribuido.PROJECTO_ATRIBUIDO_FK2;

drop index if exists Projecto_Atribuido.PROJECTO_ATRIBUIDO_FK;

drop index if exists Projecto_Atribuido.PROJECTO_ATRIBUIDO_PK;

drop table if exists Projecto_Atribuido;

drop index if exists Tipo_Documento.TIPO_DOCUMENTO_PK;

drop table if exists Tipo_Documento;

drop index if exists Tipo_Evento.TIPO_EVENTO_PK;

drop table if exists Tipo_Evento;

drop index if exists Tipo_Projecto.ASSOCIATION_33_FK;

drop index if exists Tipo_Projecto.TIPO_PROJECTO_PK;

drop table if exists Tipo_Projecto;

drop index if exists Titulo_Universitario.TITULO_UNIVERSITARIO_AK;

drop index if exists Titulo_Universitario.TITULO_UNIVERSITARIO_FK2;

drop index if exists Titulo_Universitario.TITULO_UNIVERSITARIO_FK;

drop index if exists Titulo_Universitario.TITULO_UNIVERSITARIO_PK;

drop table if exists Titulo_Universitario;

drop index if exists Universidade.ASSOCIATION_23_FK;

drop index if exists Universidade.UNIVERSIDADE_PK;

drop table if exists Universidade;

drop index if exists Utilizador.ASSOCIATION_19_FK;

drop index if exists Utilizador.UTILIZADOR_PK;

drop table if exists Utilizador;

/*==============================================================*/
/* Table: Aluno                                                 */
/*==============================================================*/
create table Aluno 
(
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Codigo_Postal        integer                        null,
   Doc_BI               integer                        null,
   Doc_IdUtilizador     integer                        null,
   Nome                 varchar(254)                   null,
   Curso                varchar(254)                   null,
   constraint PK_ALUNO primary key (BI, IdUtilizador),
   constraint AK_IDENTIFIER_1_ALUNO unique (IdUtilizador),
   constraint AK_IDENTIFIER_2_ALUNO unique (IdUtilizador)
);

comment on table Aluno is 
'- integrar as Equipas';

/*==============================================================*/
/* Index: ALUNO_PK                                              */
/*==============================================================*/
create unique index ALUNO_PK on Aluno (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_21_FK                                     */
/*==============================================================*/
create index ASSOCIATION_21_FK on Aluno (
Doc_BI ASC,
Doc_IdUtilizador ASC
);

/*==============================================================*/
/* Index: INSCRICAO_FK                                          */
/*==============================================================*/
create index INSCRICAO_FK on Aluno (
Nome ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_26_FK                                     */
/*==============================================================*/
create index ASSOCIATION_26_FK on Aluno (
Codigo_Postal ASC
);

/*==============================================================*/
/* Index: GENERALIZATION_3_FK                                   */
/*==============================================================*/
create index GENERALIZATION_3_FK on Aluno (
BI ASC
);

/*==============================================================*/
/* Index: ALUNO_AK                                              */
/*==============================================================*/
create unique index ALUNO_AK on Aluno (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Association_16                                        */
/*==============================================================*/
create table Association_16 
(
   Tipo_Evento          varchar(254)                   not null,
   IdUtilizador         integer                        not null,
   constraint PK_ASSOCIATION_16 primary key clustered (Tipo_Evento, IdUtilizador)
);

/*==============================================================*/
/* Index: ASSOCIATION_16_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_16_PK on Association_16 (
Tipo_Evento ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_16_FK                                     */
/*==============================================================*/
create index ASSOCIATION_16_FK on Association_16 (
Tipo_Evento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_16_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_16_FK2 on Association_16 (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Association_20                                        */
/*==============================================================*/
create table Association_20 
(
   BI                   integer                        not null,
   Especialidade        varchar(254)                   not null,
   constraint PK_ASSOCIATION_20 primary key clustered (BI, Especialidade)
);

comment on table Association_20 is 
'- Um Utilizador por ter um Profissional com varias valencias.';

/*==============================================================*/
/* Index: ASSOCIATION_20_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_20_PK on Association_20 (
BI ASC,
Especialidade ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_20_FK                                     */
/*==============================================================*/
create index ASSOCIATION_20_FK on Association_20 (
BI ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_20_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_20_FK2 on Association_20 (
Especialidade ASC
);

/*==============================================================*/
/* Table: Association_24                                        */
/*==============================================================*/
create table Association_24 
(
   IdEvento             integer                        not null,
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   constraint PK_ASSOCIATION_24 primary key clustered (IdEvento, BI, IdUtilizador)
);

/*==============================================================*/
/* Index: ASSOCIATION_24_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_24_PK on Association_24 (
IdEvento ASC,
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_24_FK                                     */
/*==============================================================*/
create index ASSOCIATION_24_FK on Association_24 (
IdEvento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_24_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_24_FK2 on Association_24 (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Association_25                                        */
/*==============================================================*/
create table Association_25 
(
   IdEvento             integer                        not null,
   Nome                 varchar(254)                   not null,
   constraint PK_ASSOCIATION_25 primary key clustered (IdEvento, Nome)
);

/*==============================================================*/
/* Index: ASSOCIATION_25_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_25_PK on Association_25 (
IdEvento ASC,
Nome ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_25_FK                                     */
/*==============================================================*/
create index ASSOCIATION_25_FK on Association_25 (
IdEvento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_25_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_25_FK2 on Association_25 (
Nome ASC
);

/*==============================================================*/
/* Table: Association_34                                        */
/*==============================================================*/
create table Association_34 
(
   Tipo                 integer                        not null,
   BI                   integer                        not null,
   constraint PK_ASSOCIATION_34 primary key clustered (Tipo, BI)
);

/*==============================================================*/
/* Index: ASSOCIATION_34_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_34_PK on Association_34 (
Tipo ASC,
BI ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_34_FK                                     */
/*==============================================================*/
create index ASSOCIATION_34_FK on Association_34 (
Tipo ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_34_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_34_FK2 on Association_34 (
BI ASC
);

/*==============================================================*/
/* Table: Association_37                                        */
/*==============================================================*/
create table Association_37 
(
   IdEvento             integer                        not null,
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   constraint PK_ASSOCIATION_37 primary key clustered (IdEvento, BI, IdUtilizador)
);

/*==============================================================*/
/* Index: ASSOCIATION_37_PK                                     */
/*==============================================================*/
create unique clustered index ASSOCIATION_37_PK on Association_37 (
IdEvento ASC,
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_37_FK                                     */
/*==============================================================*/
create index ASSOCIATION_37_FK on Association_37 (
IdEvento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_37_FK2                                    */
/*==============================================================*/
create index ASSOCIATION_37_FK2 on Association_37 (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Association_8                                         */
/*==============================================================*/
create table Association_8 
(
   IdEvento             integer                        not null,
   IdUtilizador         integer                        not null,
   constraint PK_ASSOCIATION_8 primary key clustered (IdEvento, IdUtilizador)
);

/*==============================================================*/
/* Index: ASSOCIATION_8_PK                                      */
/*==============================================================*/
create unique clustered index ASSOCIATION_8_PK on Association_8 (
IdEvento ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_8_FK                                      */
/*==============================================================*/
create index ASSOCIATION_8_FK on Association_8 (
IdEvento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_8_FK2                                     */
/*==============================================================*/
create index ASSOCIATION_8_FK2 on Association_8 (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Calendario                                            */
/*==============================================================*/
create table Calendario 
(
   Mes_do_Ano           timestamp                      not null,
   Tipo_de_Calendario   varchar(254)                   null,
   constraint PK_CALENDARIO primary key (Mes_do_Ano),
   constraint AK_IDENTIFIER_1_CALENDAR unique (Mes_do_Ano)
);

/*==============================================================*/
/* Index: CALENDARIO_PK                                         */
/*==============================================================*/
create unique index CALENDARIO_PK on Calendario (
Mes_do_Ano ASC
);

/*==============================================================*/
/* Table: Categoria                                             */
/*==============================================================*/
create table Categoria 
(
   IdCategoria          integer                        not null,
   Cat_IdCategoria      integer                        null,
   Nome                 varchar(254)                   null,
   constraint PK_CATEGORIA primary key (IdCategoria)
);

/*==============================================================*/
/* Index: CATEGORIA_PK                                          */
/*==============================================================*/
create unique index CATEGORIA_PK on Categoria (
IdCategoria ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_42_FK                                     */
/*==============================================================*/
create index ASSOCIATION_42_FK on Categoria (
Cat_IdCategoria ASC
);

/*==============================================================*/
/* Table: Categoria_de_Profissional                             */
/*==============================================================*/
create table Categoria_de_Profissional 
(
   Especialidade        varchar(254)                   not null,
   constraint PK_CATEGORIA_DE_PROFISSIONAL primary key (Especialidade)
);

comment on table Categoria_de_Profissional is 
'- Gestor, Gestor de RH, Engenheiro Informatico, Redes, Base de Dados, etc...';

/*==============================================================*/
/* Index: CATEGORIA_DE_PROFISSIONAL_PK                          */
/*==============================================================*/
create unique index CATEGORIA_DE_PROFISSIONAL_PK on Categoria_de_Profissional (
Especialidade ASC
);

/*==============================================================*/
/* Table: Comentario                                            */
/*==============================================================*/
create table Comentario 
(
   IdPost               integer                        not null,
   IdComentario         integer                        not null,
   BI                   integer                        null,
   Titulo               varchar(254)                   null,
   Data                 varchar(254)                   null,
   Conteudo             varchar(254)                   null,
   constraint PK_COMENTARIO primary key (IdPost, IdComentario)
);

/*==============================================================*/
/* Index: COMENTARIO_PK                                         */
/*==============================================================*/
create unique index COMENTARIO_PK on Comentario (
IdPost ASC,
IdComentario ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_38_FK                                     */
/*==============================================================*/
create index ASSOCIATION_38_FK on Comentario (
IdPost ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_40_FK                                     */
/*==============================================================*/
create index ASSOCIATION_40_FK on Comentario (
BI ASC
);

/*==============================================================*/
/* Table: Data_Entrada                                          */
/*==============================================================*/
create table Data_Entrada 
(
   Data_Ingresso        timestamp                      not null,
   constraint PK_DATA_ENTRADA primary key (Data_Ingresso),
   constraint AK_IDENTIFIER_1_DATA_ENT unique (Data_Ingresso)
);

/*==============================================================*/
/* Index: DATA_ENTRADA_PK                                       */
/*==============================================================*/
create unique index DATA_ENTRADA_PK on Data_Entrada (
Data_Ingresso ASC
);

/*==============================================================*/
/* Table: Data_Finalizacao                                      */
/*==============================================================*/
create table Data_Finalizacao 
(
   Data_Ingresso        timestamp                      not null,
   Nome                 varchar(254)                   not null,
   BI                   integer                        not null,
   Sigla                varchar(254)                   not null,
   Data_Conclusao       timestamp                      not null,
   constraint PK_DATA_FINALIZACAO primary key (Nome, BI, Data_Ingresso, Sigla, Data_Conclusao),
   constraint AK_IDENTIFIER_1_DATA_FIN unique (Data_Conclusao)
);

/*==============================================================*/
/* Index: DATA_FINALIZACAO_PK                                   */
/*==============================================================*/
create unique index DATA_FINALIZACAO_PK on Data_Finalizacao (
Nome ASC,
BI ASC,
Data_Ingresso ASC,
Sigla ASC,
Data_Conclusao ASC
);

/*==============================================================*/
/* Index: DATA_INGRESSO_FK                                      */
/*==============================================================*/
create index DATA_INGRESSO_FK on Data_Finalizacao (
Data_Ingresso ASC
);

/*==============================================================*/
/* Index: DATA_INGRESSO_FK2                                     */
/*==============================================================*/
create index DATA_INGRESSO_FK2 on Data_Finalizacao (
Nome ASC,
BI ASC,
Sigla ASC
);

/*==============================================================*/
/* Index: DATA_FINALIZACAO_AK                                   */
/*==============================================================*/
create unique index DATA_FINALIZACAO_AK on Data_Finalizacao (
Data_Conclusao ASC
);

/*==============================================================*/
/* Table: Data_dos_Objectivos                                   */
/*==============================================================*/
create table Data_dos_Objectivos 
(
   idObjectivo          integer                        not null,
   IdProcesso           integer                        not null,
   IdProjecto           integer                        not null,
   Mes_do_Ano           timestamp                      not null,
   Dia_do_Mes           timestamp                      not null,
   Hora_do_Dia          timestamp                      not null,
   Data_Limite_Entrega  timestamp                      not null,
   Data_Criacao         timestamp                      null,
   constraint PK_DATA_DOS_OBJECTIVOS primary key (idObjectivo, IdProcesso, IdProjecto, Mes_do_Ano, Dia_do_Mes, Hora_do_Dia, Data_Limite_Entrega)
);

/*==============================================================*/
/* Index: DATA_DOS_OBJECTIVOS_PK                                */
/*==============================================================*/
create unique index DATA_DOS_OBJECTIVOS_PK on Data_dos_Objectivos (
idObjectivo ASC,
IdProcesso ASC,
IdProjecto ASC,
Mes_do_Ano ASC,
Dia_do_Mes ASC,
Hora_do_Dia ASC,
Data_Limite_Entrega ASC
);

/*==============================================================*/
/* Index: DATA_DOS_OBJECTIVOS_FK                                */
/*==============================================================*/
create index DATA_DOS_OBJECTIVOS_FK on Data_dos_Objectivos (
Mes_do_Ano ASC,
Dia_do_Mes ASC,
Hora_do_Dia ASC
);

/*==============================================================*/
/* Index: DATA_DOS_OBJECTIVOS_FK2                               */
/*==============================================================*/
create index DATA_DOS_OBJECTIVOS_FK2 on Data_dos_Objectivos (
idObjectivo ASC,
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Table: Dia                                                   */
/*==============================================================*/
create table Dia 
(
   Mes_do_Ano           timestamp                      not null,
   Dia_do_Mes           timestamp                      not null,
   constraint PK_DIA primary key (Mes_do_Ano, Dia_do_Mes)
);

/*==============================================================*/
/* Index: DIA_PK                                                */
/*==============================================================*/
create unique index DIA_PK on Dia (
Mes_do_Ano ASC,
Dia_do_Mes ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_6_FK                                      */
/*==============================================================*/
create index ASSOCIATION_6_FK on Dia (
Mes_do_Ano ASC
);

/*==============================================================*/
/* Table: Docente                                               */
/*==============================================================*/
create table Docente 
(
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Codigo_Postal        integer                        null,
   Departamento         varchar(254)                   null,
   constraint PK_DOCENTE primary key (BI, IdUtilizador),
   constraint AK_IDENTIFIER_1_DOCENTE unique (IdUtilizador)
);

comment on table Docente is 
'- responder aos Desafios';

/*==============================================================*/
/* Index: DOCENTE_PK                                            */
/*==============================================================*/
create unique index DOCENTE_PK on Docente (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_22_FK                                     */
/*==============================================================*/
create index ASSOCIATION_22_FK on Docente (
Codigo_Postal ASC
);

/*==============================================================*/
/* Index: GENERALIZATION_4_FK                                   */
/*==============================================================*/
create index GENERALIZATION_4_FK on Docente (
BI ASC
);

/*==============================================================*/
/* Index: DOCENTE_AK                                            */
/*==============================================================*/
create unique index DOCENTE_AK on Docente (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Documento                                             */
/*==============================================================*/
create table Documento 
(
   IdProcesso           integer                        not null,
   IdProjecto           integer                        not null,
   IdDocumento          integer                        not null,
   Tipo_Documento       varchar(254)                   not null,
   IdParecer            integer                        null,
   Titulo               varchar(254)                   null,
   Data_Entrega         timestamp                      null,
   constraint PK_DOCUMENTO primary key (IdProcesso, IdProjecto, IdDocumento)
);

/*==============================================================*/
/* Index: DOCUMENTO_PK                                          */
/*==============================================================*/
create unique index DOCUMENTO_PK on Documento (
IdProcesso ASC,
IdProjecto ASC,
IdDocumento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_6_FK                                      */
/*==============================================================*/
create index ASSOCIATION_6_FK on Documento (
Tipo_Documento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_29_FK                                     */
/*==============================================================*/
create index ASSOCIATION_29_FK on Documento (
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_30_FK                                     */
/*==============================================================*/
create index ASSOCIATION_30_FK on Documento (
IdParecer ASC
);

/*==============================================================*/
/* Table: Evento                                                */
/*==============================================================*/
create table Evento 
(
   IdEvento             integer                        not null,
   Tipo_Evento          varchar(254)                   null,
   Data_Evento          varchar(254)                   null,
   Hora                 timestamp                      null,
   Numero_Inscricoes    integer                        null,
   Local                varchar(254)                   null,
   Descricao            varchar(254)                   null,
   Limite_Participacoes varchar(254)                   null,
   Idade_Inferior       integer                        null,
   Idade_Superior       integer                        null,
   constraint PK_EVENTO primary key (IdEvento),
   constraint AK_IDENTIFIER_1_EVENTO unique (IdEvento)
);

/*==============================================================*/
/* Index: EVENTO_PK                                             */
/*==============================================================*/
create unique index EVENTO_PK on Evento (
IdEvento ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_7_FK                                      */
/*==============================================================*/
create index ASSOCIATION_7_FK on Evento (
Tipo_Evento ASC
);

/*==============================================================*/
/* Table: Hora                                                  */
/*==============================================================*/
create table Hora 
(
   Mes_do_Ano           timestamp                      not null,
   Dia_do_Mes           timestamp                      not null,
   Hora_do_Dia          timestamp                      not null,
   constraint PK_HORA primary key (Mes_do_Ano, Dia_do_Mes, Hora_do_Dia)
);

/*==============================================================*/
/* Index: HORA_PK                                               */
/*==============================================================*/
create unique index HORA_PK on Hora (
Mes_do_Ano ASC,
Dia_do_Mes ASC,
Hora_do_Dia ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_7_FK                                      */
/*==============================================================*/
create index ASSOCIATION_7_FK on Hora (
Mes_do_Ano ASC,
Dia_do_Mes ASC
);

/*==============================================================*/
/* Table: Localidade                                            */
/*==============================================================*/
create table Localidade 
(
   Codigo_Postal        integer                        not null,
   Localidade           integer                        null,
   constraint PK_LOCALIDADE primary key (Codigo_Postal),
   constraint AK_IDENTIFIER_1_LOCALIDA unique (Codigo_Postal)
);

/*==============================================================*/
/* Index: LOCALIDADE_PK                                         */
/*==============================================================*/
create unique index LOCALIDADE_PK on Localidade (
Codigo_Postal ASC
);

/*==============================================================*/
/* Table: Mail                                                  */
/*==============================================================*/
create table Mail 
(
   IdMail               integer                        not null,
   Data_Envio           timestamp                      null,
   Conteudo             varchar(254)                   null,
   constraint PK_MAIL primary key (IdMail)
);

/*==============================================================*/
/* Index: MAIL_PK                                               */
/*==============================================================*/
create unique index MAIL_PK on Mail (
IdMail ASC
);

/*==============================================================*/
/* Table: Moderador                                             */
/*==============================================================*/
create table Moderador 
(
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Empresa              varchar(254)                   null,
   constraint PK_MODERADOR primary key (BI, IdUtilizador),
   constraint AK_IDENTIFIER_1_MODERADO unique (IdUtilizador)
);

comment on table Moderador is 
'- aprovacao do texto submetido';

/*==============================================================*/
/* Index: MODERADOR_PK                                          */
/*==============================================================*/
create unique index MODERADOR_PK on Moderador (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: GENERALIZATION_1_FK                                   */
/*==============================================================*/
create index GENERALIZATION_1_FK on Moderador (
BI ASC
);

/*==============================================================*/
/* Index: MODERADOR_AK                                          */
/*==============================================================*/
create unique index MODERADOR_AK on Moderador (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Nacionalidade                                         */
/*==============================================================*/
create table Nacionalidade 
(
   Pais                 varchar(254)                   not null,
   constraint PK_NACIONALIDADE primary key (Pais),
   constraint AK_IDENTIFIER_1_NACIONAL unique (Pais)
);

/*==============================================================*/
/* Index: NACIONALIDADE_PK                                      */
/*==============================================================*/
create unique index NACIONALIDADE_PK on Nacionalidade (
Pais ASC
);

/*==============================================================*/
/* Table: Objectivo                                             */
/*==============================================================*/
create table Objectivo 
(
   idObjectivo          integer                        not null,
   Tipo_Desafio         varchar(254)                   null,
   Nome                 varchar(254)                   null,
   constraint PK_OBJECTIVO primary key (idObjectivo),
   constraint AK_IDENTIFIER_1_OBJECTIV unique (idObjectivo)
);

/*==============================================================*/
/* Index: OBJECTIVO_PK                                          */
/*==============================================================*/
create unique index OBJECTIVO_PK on Objectivo (
idObjectivo ASC
);

/*==============================================================*/
/* Table: Objectivos_do_Projecto                                */
/*==============================================================*/
create table Objectivos_do_Projecto 
(
   idObjectivo          integer                        not null,
   IdProcesso           integer                        not null,
   IdProjecto           integer                        not null,
   Conteudo             varchar(254)                   null,
   Sumario              varchar(254)                   null,
   constraint PK_OBJECTIVOS_DO_PROJECTO primary key clustered (idObjectivo, IdProcesso, IdProjecto)
);

/*==============================================================*/
/* Index: OBJECTIVOS_DO_PROJECTO_PK                             */
/*==============================================================*/
create unique clustered index OBJECTIVOS_DO_PROJECTO_PK on Objectivos_do_Projecto (
idObjectivo ASC,
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Index: OBJECTIVOS_DO_DESAFIO_FK                              */
/*==============================================================*/
create index OBJECTIVOS_DO_DESAFIO_FK on Objectivos_do_Projecto (
idObjectivo ASC
);

/*==============================================================*/
/* Index: OBJECTIVOS_DO_DESAFIO_FK2                             */
/*==============================================================*/
create index OBJECTIVOS_DO_DESAFIO_FK2 on Objectivos_do_Projecto (
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Table: Orador                                                */
/*==============================================================*/
create table Orador 
(
   IdUtilizador         integer                        not null,
   Nome_                varchar(254)                   null,
   Telefone_Fixo        integer                        null,
   Telefone_Movel       integer                        null,
   Mail                 varchar(254)                   null,
   constraint PK_ORADOR primary key (IdUtilizador),
   constraint AK_IDENTIFIER_1_ORADOR unique (IdUtilizador),
   constraint AK_IDENTIFIER_2_ORADOR unique (IdUtilizador)
);

/*==============================================================*/
/* Index: ORADOR_PK                                             */
/*==============================================================*/
create unique index ORADOR_PK on Orador (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Organizacao                                           */
/*==============================================================*/
create table Organizacao 
(
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Empresa              varchar(254)                   null,
   constraint PK_ORGANIZACAO primary key (BI, IdUtilizador),
   constraint AK_IDENTIFIER_2_ORGANIZA unique (IdUtilizador)
);

comment on table Organizacao is 
'- Colocar desafios
';

/*==============================================================*/
/* Index: ORGANIZACAO_PK                                        */
/*==============================================================*/
create unique index ORGANIZACAO_PK on Organizacao (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Index: GENERALIZATION_2_FK                                   */
/*==============================================================*/
create index GENERALIZATION_2_FK on Organizacao (
BI ASC
);

/*==============================================================*/
/* Index: ORGANIZACAO_AK                                        */
/*==============================================================*/
create unique index ORGANIZACAO_AK on Organizacao (
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Parecer                                               */
/*==============================================================*/
create table Parecer 
(
   IdParecer            integer                        not null,
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Data_Parecer         timestamp                      null,
   Sumario              varchar(254)                   null,
   Conteudo             varchar(254)                   null,
   constraint PK_PARECER primary key (IdParecer)
);

/*==============================================================*/
/* Index: PARECER_PK                                            */
/*==============================================================*/
create unique index PARECER_PK on Parecer (
IdParecer ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_31_FK                                     */
/*==============================================================*/
create index ASSOCIATION_31_FK on Parecer (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Permissao_de_Mail                                     */
/*==============================================================*/
create table Permissao_de_Mail 
(
   BI                   integer                        not null,
   IdMail               integer                        not null,
   Tipo_de_Permissao    varchar(254)                   not null,
   constraint PK_PERMISSAO_DE_MAIL primary key (BI, IdMail, Tipo_de_Permissao)
);

/*==============================================================*/
/* Index: PERMISSAO_DE_MAIL_PK                                  */
/*==============================================================*/
create unique index PERMISSAO_DE_MAIL_PK on Permissao_de_Mail (
BI ASC,
IdMail ASC,
Tipo_de_Permissao ASC
);

/*==============================================================*/
/* Index: PERMISSAO_DE_MAIL_FK                                  */
/*==============================================================*/
create index PERMISSAO_DE_MAIL_FK on Permissao_de_Mail (
BI ASC
);

/*==============================================================*/
/* Index: PERMISSAO_DE_MAIL_FK2                                 */
/*==============================================================*/
create index PERMISSAO_DE_MAIL_FK2 on Permissao_de_Mail (
IdMail ASC
);

/*==============================================================*/
/* Table: Post                                                  */
/*==============================================================*/
create table Post 
(
   IdPost               integer                        not null,
   BI                   integer                        not null,
   IdCategoria          integer                        null,
   Titulo               varchar(254)                   null,
   Data                 timestamp                      null,
   Sumario              varchar(254)                   null,
   Conteudo             varchar(254)                   null,
   Visitas              integer                        null,
   constraint PK_POST primary key (IdPost)
);

/*==============================================================*/
/* Index: POST_PK                                               */
/*==============================================================*/
create unique index POST_PK on Post (
IdPost ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_39_FK                                     */
/*==============================================================*/
create index ASSOCIATION_39_FK on Post (
BI ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_41_FK                                     */
/*==============================================================*/
create index ASSOCIATION_41_FK on Post (
IdCategoria ASC
);

/*==============================================================*/
/* Table: Processo                                              */
/*==============================================================*/
create table Processo 
(
   IdProcesso           integer                        not null,
   BI                   integer                        not null,
   IdUtilizador         integer                        not null,
   Estado_Processo      varchar(254)                   null,
   Data_Inicio          timestamp                      null,
   constraint PK_PROCESSO primary key (IdProcesso)
);

/*==============================================================*/
/* Index: PROCESSO_PK                                           */
/*==============================================================*/
create unique index PROCESSO_PK on Processo (
IdProcesso ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_28_FK                                     */
/*==============================================================*/
create index ASSOCIATION_28_FK on Processo (
BI ASC,
IdUtilizador ASC
);

/*==============================================================*/
/* Table: Projecto                                              */
/*==============================================================*/
create table Projecto 
(
   IdProcesso           integer                        not null,
   IdProjecto           integer                        not null,
   Tipo                 integer                        not null,
   BI                   integer                        null,
   IdMail               integer                        null,
   Tipo_de_Permissao    varchar(254)                   null,
   Conteudo             integer                        null,
   Estado_Projecto      varchar(254)                   null,
   Data_Entrada         timestamp                      null,
   Data_Aprovacao       timestamp                      null,
   constraint PK_PROJECTO primary key (IdProcesso, IdProjecto),
   constraint AK_IDENTIFIER_1_PROJECTO unique (IdProjecto),
   constraint AK_IDENTIFIER_2_PROJECTO unique (IdProjecto),
   constraint AK_IDENTIFIER_3_PROJECTO unique (IdProjecto)
);

/*==============================================================*/
/* Index: PROJECTO_PK                                           */
/*==============================================================*/
create unique index PROJECTO_PK on Projecto (
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_27_FK                                     */
/*==============================================================*/
create index ASSOCIATION_27_FK on Projecto (
IdProcesso ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_32_FK                                     */
/*==============================================================*/
create index ASSOCIATION_32_FK on Projecto (
Tipo ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_36_FK                                     */
/*==============================================================*/
create index ASSOCIATION_36_FK on Projecto (
BI ASC,
IdMail ASC,
Tipo_de_Permissao ASC
);

/*==============================================================*/
/* Index: PROJECTO_AK                                           */
/*==============================================================*/
create unique index PROJECTO_AK on Projecto (
IdProjecto ASC
);

/*==============================================================*/
/* Table: Projecto_Atribuido                                    */
/*==============================================================*/
create table Projecto_Atribuido 
(
   IdProcesso           integer                        not null,
   IdProjecto           integer                        not null,
   BI                   integer                        not null,
   Data_Atribuicao      timestamp                      not null,
   constraint PK_PROJECTO_ATRIBUIDO primary key (IdProcesso, IdProjecto, BI, Data_Atribuicao)
);

/*==============================================================*/
/* Index: PROJECTO_ATRIBUIDO_PK                                 */
/*==============================================================*/
create unique index PROJECTO_ATRIBUIDO_PK on Projecto_Atribuido (
IdProcesso ASC,
IdProjecto ASC,
BI ASC,
Data_Atribuicao ASC
);

/*==============================================================*/
/* Index: PROJECTO_ATRIBUIDO_FK                                 */
/*==============================================================*/
create index PROJECTO_ATRIBUIDO_FK on Projecto_Atribuido (
IdProcesso ASC,
IdProjecto ASC
);

/*==============================================================*/
/* Index: PROJECTO_ATRIBUIDO_FK2                                */
/*==============================================================*/
create index PROJECTO_ATRIBUIDO_FK2 on Projecto_Atribuido (
BI ASC
);

/*==============================================================*/
/* Table: Tipo_Documento                                        */
/*==============================================================*/
create table Tipo_Documento 
(
   Tipo_Documento       varchar(254)                   not null,
   constraint PK_TIPO_DOCUMENTO primary key (Tipo_Documento)
);

/*==============================================================*/
/* Index: TIPO_DOCUMENTO_PK                                     */
/*==============================================================*/
create unique index TIPO_DOCUMENTO_PK on Tipo_Documento (
Tipo_Documento ASC
);

/*==============================================================*/
/* Table: Tipo_Evento                                           */
/*==============================================================*/
create table Tipo_Evento 
(
   Tipo_Evento          varchar(254)                   not null,
   constraint PK_TIPO_EVENTO primary key (Tipo_Evento),
   constraint AK_IDENTIFIER_1_TIPO_EVE unique (Tipo_Evento)
);

/*==============================================================*/
/* Index: TIPO_EVENTO_PK                                        */
/*==============================================================*/
create unique index TIPO_EVENTO_PK on Tipo_Evento (
Tipo_Evento ASC
);

/*==============================================================*/
/* Table: Tipo_Projecto                                         */
/*==============================================================*/
create table Tipo_Projecto 
(
   Tipo                 integer                        not null,
   Tip_Tipo             integer                        null,
   Numero_Dias_Aprovacao integer                        null,
   constraint PK_TIPO_PROJECTO primary key (Tipo)
);

/*==============================================================*/
/* Index: TIPO_PROJECTO_PK                                      */
/*==============================================================*/
create unique index TIPO_PROJECTO_PK on Tipo_Projecto (
Tipo ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_33_FK                                     */
/*==============================================================*/
create index ASSOCIATION_33_FK on Tipo_Projecto (
Tip_Tipo ASC
);

/*==============================================================*/
/* Table: Titulo_Universitario                                  */
/*==============================================================*/
create table Titulo_Universitario 
(
   Nome                 varchar(254)                   not null,
   BI                   integer                        not null,
   Sigla                varchar(254)                   not null,
   Titulo               varchar(254)                   null,
   Curso                varchar(254)                   null,
   constraint PK_TITULO_UNIVERSITARIO primary key (Nome, BI, Sigla),
   constraint AK_IDENTIFIER_1_TITULO_U unique (Sigla)
);

/*==============================================================*/
/* Index: TITULO_UNIVERSITARIO_PK                               */
/*==============================================================*/
create unique index TITULO_UNIVERSITARIO_PK on Titulo_Universitario (
Nome ASC,
BI ASC,
Sigla ASC
);

/*==============================================================*/
/* Index: TITULO_UNIVERSITARIO_FK                               */
/*==============================================================*/
create index TITULO_UNIVERSITARIO_FK on Titulo_Universitario (
Nome ASC
);

/*==============================================================*/
/* Index: TITULO_UNIVERSITARIO_FK2                              */
/*==============================================================*/
create index TITULO_UNIVERSITARIO_FK2 on Titulo_Universitario (
BI ASC
);

/*==============================================================*/
/* Index: TITULO_UNIVERSITARIO_AK                               */
/*==============================================================*/
create unique index TITULO_UNIVERSITARIO_AK on Titulo_Universitario (
Sigla ASC
);

/*==============================================================*/
/* Table: Universidade                                          */
/*==============================================================*/
create table Universidade 
(
   Nome                 varchar(254)                   not null,
   Codigo_Postal        integer                        null,
   Mail                 varchar(254)                   null,
   Morada               varchar(254)                   null,
   Telefone             integer                        null,
   constraint PK_UNIVERSIDADE primary key (Nome),
   constraint AK_IDENTIFIER_1_UNIVERSI unique (Nome)
);

/*==============================================================*/
/* Index: UNIVERSIDADE_PK                                       */
/*==============================================================*/
create unique index UNIVERSIDADE_PK on Universidade (
Nome ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_23_FK                                     */
/*==============================================================*/
create index ASSOCIATION_23_FK on Universidade (
Codigo_Postal ASC
);

/*==============================================================*/
/* Table: Utilizador                                            */
/*==============================================================*/
create table Utilizador 
(
   BI                   integer                        not null,
   Pais                 varchar(254)                   null,
   Nome                 varchar(254)                   null,
   Morada               varchar(254)                   null,
   Telefone             integer                        null,
   Codigo_postal        integer                        null,
   Username             varchar(254)                   null,
   Password             varchar(254)                   null,
   constraint PK_UTILIZADOR primary key (BI),
   constraint AK_IDENTIFIER_2_UTILIZAD unique (BI)
);

/*==============================================================*/
/* Index: UTILIZADOR_PK                                         */
/*==============================================================*/
create unique index UTILIZADOR_PK on Utilizador (
BI ASC
);

/*==============================================================*/
/* Index: ASSOCIATION_19_FK                                     */
/*==============================================================*/
create index ASSOCIATION_19_FK on Utilizador (
Pais ASC
);

alter table Aluno
   add constraint FK_ALUNO_ASSOCIATI_DOCENTE foreign key (Doc_BI, Doc_IdUtilizador)
      references Docente (BI, IdUtilizador)
      on update restrict
      on delete restrict;

alter table Aluno
   add constraint FK_ALUNO_ASSOCIATI_LOCALIDA foreign key (Codigo_Postal)
      references Localidade (Codigo_Postal)
      on update restrict
      on delete restrict;

alter table Aluno
   add constraint FK_ALUNO_GENERALIZ_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Aluno
   add constraint FK_ALUNO_INSCRICAO_UNIVERSI foreign key (Nome)
      references Universidade (Nome)
      on update restrict
      on delete restrict;

alter table Association_16
   add constraint FK_ASSOCIAT_ASSOCIATI_ORADOR foreign key (IdUtilizador)
      references Orador (IdUtilizador)
      on update restrict
      on delete restrict;

alter table Association_16
   add constraint FK_ASSOCIAT_ASSOCIATI_TIPO_EVE foreign key (Tipo_Evento)
      references Tipo_Evento (Tipo_Evento)
      on update restrict
      on delete restrict;

alter table Association_20
   add constraint FK_ASSOCIAT_ASSOCIATI_CATEGORI foreign key (Especialidade)
      references Categoria_de_Profissional (Especialidade)
      on update restrict
      on delete restrict;

comment on foreign key Association_20.FK_ASSOCIAT_ASSOCIATI_CATEGORI is 
'- Um Utilizador por ter um Profissional com varias valencias.';

alter table Association_20
   add constraint FK_ASSOCIAT_ASSOCIATI_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

comment on foreign key Association_20.FK_ASSOCIAT_ASSOCIATI_UTILIZAD is 
'- Um Utilizador por ter um Profissional com varias valencias.';

alter table Association_24
   add constraint FK_ASSOCIAT_ASSOCIATI_ALUNO foreign key (BI, IdUtilizador)
      references Aluno (BI, IdUtilizador)
      on update restrict
      on delete restrict;

alter table Association_24
   add constraint FK_ASSOCIAT_ASSOCIATI_EVENTO foreign key (IdEvento)
      references Evento (IdEvento)
      on update restrict
      on delete restrict;

alter table Association_25
   add constraint FK_ASSOCIAT_ASSOCIATI_EVENTO foreign key (IdEvento)
      references Evento (IdEvento)
      on update restrict
      on delete restrict;

alter table Association_25
   add constraint FK_ASSOCIAT_ASSOCIATI_UNIVERSI foreign key (Nome)
      references Universidade (Nome)
      on update restrict
      on delete restrict;

alter table Association_34
   add constraint FK_ASSOCIAT_ASSOCIATI_TIPO_PRO foreign key (Tipo)
      references Tipo_Projecto (Tipo)
      on update restrict
      on delete restrict;

alter table Association_34
   add constraint FK_ASSOCIAT_ASSOCIATI_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Association_37
   add constraint FK_ASSOCIAT_ASSOCIATI_DOCENTE foreign key (BI, IdUtilizador)
      references Docente (BI, IdUtilizador)
      on update restrict
      on delete restrict;

alter table Association_37
   add constraint FK_ASSOCIAT_ASSOCIATI_EVENTO foreign key (IdEvento)
      references Evento (IdEvento)
      on update restrict
      on delete restrict;

alter table Association_8
   add constraint FK_ASSOCIAT_ASSOCIATI_EVENTO foreign key (IdEvento)
      references Evento (IdEvento)
      on update restrict
      on delete restrict;

alter table Association_8
   add constraint FK_ASSOCIAT_ASSOCIATI_ORADOR foreign key (IdUtilizador)
      references Orador (IdUtilizador)
      on update restrict
      on delete restrict;

alter table Categoria
   add constraint FK_CATEGORI_ASSOCIATI_CATEGORI foreign key (Cat_IdCategoria)
      references Categoria (IdCategoria)
      on update restrict
      on delete restrict;

alter table Comentario
   add constraint FK_COMENTAR_ASSOCIATI_POST foreign key (IdPost)
      references Post (IdPost)
      on update restrict
      on delete restrict;

alter table Comentario
   add constraint FK_COMENTAR_ASSOCIATI_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Data_Finalizacao
   add constraint FK_DATA_FIN_DATA_INGR_DATA_ENT foreign key (Data_Ingresso)
      references Data_Entrada (Data_Ingresso)
      on update restrict
      on delete restrict;

alter table Data_Finalizacao
   add constraint FK_DATA_FIN_DATA_INGR_TITULO_U foreign key (Nome, BI, Sigla)
      references Titulo_Universitario (Nome, BI, Sigla)
      on update restrict
      on delete restrict;

alter table Data_dos_Objectivos
   add constraint FK_DATA_DOS_DATA_DOS__HORA foreign key (Mes_do_Ano, Dia_do_Mes, Hora_do_Dia)
      references Hora (Mes_do_Ano, Dia_do_Mes, Hora_do_Dia)
      on update restrict
      on delete restrict;

alter table Data_dos_Objectivos
   add constraint FK_DATA_DOS_DATA_DOS__OBJECTIV foreign key (idObjectivo, IdProcesso, IdProjecto)
      references Objectivos_do_Projecto (idObjectivo, IdProcesso, IdProjecto)
      on update restrict
      on delete restrict;

alter table Dia
   add constraint FK_DIA_ASSOCIATI_CALENDAR foreign key (Mes_do_Ano)
      references Calendario (Mes_do_Ano)
      on update restrict
      on delete restrict;

alter table Docente
   add constraint FK_DOCENTE_ASSOCIATI_LOCALIDA foreign key (Codigo_Postal)
      references Localidade (Codigo_Postal)
      on update restrict
      on delete restrict;

alter table Docente
   add constraint FK_DOCENTE_GENERALIZ_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Documento
   add constraint FK_DOCUMENT_ASSOCIATI_PROJECTO foreign key (IdProcesso, IdProjecto)
      references Projecto (IdProcesso, IdProjecto)
      on update restrict
      on delete restrict;

alter table Documento
   add constraint FK_DOCUMENT_ASSOCIATI_PARECER foreign key (IdParecer)
      references Parecer (IdParecer)
      on update restrict
      on delete restrict;

alter table Documento
   add constraint FK_DOCUMENT_ASSOCIATI_TIPO_DOC foreign key (Tipo_Documento)
      references Tipo_Documento (Tipo_Documento)
      on update restrict
      on delete restrict;

alter table Evento
   add constraint FK_EVENTO_ASSOCIATI_TIPO_EVE foreign key (Tipo_Evento)
      references Tipo_Evento (Tipo_Evento)
      on update restrict
      on delete restrict;

alter table Hora
   add constraint FK_HORA_ASSOCIATI_DIA foreign key (Mes_do_Ano, Dia_do_Mes)
      references Dia (Mes_do_Ano, Dia_do_Mes)
      on update restrict
      on delete restrict;

alter table Moderador
   add constraint FK_MODERADO_GENERALIZ_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Objectivos_do_Projecto
   add constraint FK_OBJECTIV_OBJECTIVO_OBJECTIV foreign key (idObjectivo)
      references Objectivo (idObjectivo)
      on update restrict
      on delete restrict;

alter table Objectivos_do_Projecto
   add constraint FK_OBJECTIV_OBJECTIVO_PROJECTO foreign key (IdProcesso, IdProjecto)
      references Projecto (IdProcesso, IdProjecto)
      on update restrict
      on delete restrict;

alter table Organizacao
   add constraint FK_ORGANIZA_GENERALIZ_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Parecer
   add constraint FK_PARECER_ASSOCIATI_MODERADO foreign key (BI, IdUtilizador)
      references Moderador (BI, IdUtilizador)
      on update restrict
      on delete restrict;

alter table Permissao_de_Mail
   add constraint FK_PERMISSA_PERMISSAO_MAIL foreign key (IdMail)
      references Mail (IdMail)
      on update restrict
      on delete restrict;

alter table Permissao_de_Mail
   add constraint FK_PERMISSA_PERMISSAO_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Post
   add constraint FK_POST_ASSOCIATI_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Post
   add constraint FK_POST_ASSOCIATI_CATEGORI foreign key (IdCategoria)
      references Categoria (IdCategoria)
      on update restrict
      on delete restrict;

alter table Processo
   add constraint FK_PROCESSO_ASSOCIATI_MODERADO foreign key (BI, IdUtilizador)
      references Moderador (BI, IdUtilizador)
      on update restrict
      on delete restrict;

alter table Projecto
   add constraint FK_PROJECTO_ASSOCIATI_PROCESSO foreign key (IdProcesso)
      references Processo (IdProcesso)
      on update restrict
      on delete restrict;

alter table Projecto
   add constraint FK_PROJECTO_ASSOCIATI_TIPO_PRO foreign key (Tipo)
      references Tipo_Projecto (Tipo)
      on update restrict
      on delete restrict;

alter table Projecto
   add constraint FK_PROJECTO_ASSOCIATI_PERMISSA foreign key (BI, IdMail, Tipo_de_Permissao)
      references Permissao_de_Mail (BI, IdMail, Tipo_de_Permissao)
      on update restrict
      on delete restrict;

alter table Projecto_Atribuido
   add constraint FK_PROJECTO_PROJECTO__PROJECTO foreign key (IdProcesso, IdProjecto)
      references Projecto (IdProcesso, IdProjecto)
      on update restrict
      on delete restrict;

alter table Projecto_Atribuido
   add constraint FK_PROJECTO_PROJECTO__UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Tipo_Projecto
   add constraint FK_TIPO_PRO_ASSOCIATI_TIPO_PRO foreign key (Tip_Tipo)
      references Tipo_Projecto (Tipo)
      on update restrict
      on delete restrict;

alter table Titulo_Universitario
   add constraint FK_TITULO_U_TITULO_UN_UNIVERSI foreign key (Nome)
      references Universidade (Nome)
      on update restrict
      on delete restrict;

alter table Titulo_Universitario
   add constraint FK_TITULO_U_TITULO_UN_UTILIZAD foreign key (BI)
      references Utilizador (BI)
      on update restrict
      on delete restrict;

alter table Universidade
   add constraint FK_UNIVERSI_ASSOCIATI_LOCALIDA foreign key (Codigo_Postal)
      references Localidade (Codigo_Postal)
      on update restrict
      on delete restrict;

alter table Utilizador
   add constraint FK_UTILIZAD_ASSOCIATI_NACIONAL foreign key (Pais)
      references Nacionalidade (Pais)
      on update restrict
      on delete restrict;

