/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 12                       */
/* Created on:     14/06/2014 12:03:10                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_COMENTAR_COLOCACOM_UTILIZAD') then
    alter table COMENTARIO
       delete foreign key FK_COMENTAR_COLOCACOM_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMENTAR_COMENTARI_POST') then
    alter table COMENTARIO
       delete foreign key FK_COMENTAR_COMENTARI_POST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIKE_LIKE_POST_POST') then
    alter table "LIKE"
       delete foreign key FK_LIKE_LIKE_POST_POST
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LIKE_LIKE_UTIL_UTILIZAD') then
    alter table "LIKE"
       delete foreign key FK_LIKE_LIKE_UTIL_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MEMBROSG_GRUPO_MEM_UTILIZAD') then
    alter table MEMBROSGRUPO
       delete foreign key FK_MEMBROSG_GRUPO_MEM_UTILIZAD
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MEMBROSG_MEMBROS_G_GRUPO') then
    alter table MEMBROSGRUPO
       delete foreign key FK_MEMBROSG_MEMBROS_G_GRUPO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_POST_COLOCA_UT_UTILIZAD') then
    alter table POST
       delete foreign key FK_POST_COLOCA_UT_UTILIZAD
end if;

drop table if exists COMENTARIO;

drop table if exists GRUPO;

drop table if exists "LIKE";

drop table if exists MEMBROSGRUPO;

drop table if exists POST;

drop table if exists UTILIZADOR;

/*==============================================================*/
/* Table: COMENTARIO                                            */
/*==============================================================*/
create table COMENTARIO 
(
   HORACOMENTARIO       timestamp                      not null,
   DATACOMENTARIO       date                           not null,
   TEXTOCOMENTARIO      text                           null,
   COMENTARIO_ID        int                            not null,
   AUTOR_COMENTARIO     int                            not null,
   POST_COMENTADO       int                            not null,
   constraint PK_COMENTARIO primary key clustered (COMENTARIO_ID)
);

/*==============================================================*/
/* Table: GRUPO                                                 */
/*==============================================================*/
create table GRUPO 
(
   DESIGNACAOGRUPO      varchar(100)                   not null,
   DATACRIACAO          date                           not null,
   DESCRICAOGRUPO       text                           not null,
   GRUPO_ID             int                            not null,
   constraint PK_GRUPO primary key clustered (GRUPO_ID),
   constraint AK_DESIGNACAO_GRUPO unique (DESIGNACAOGRUPO)
);

/*==============================================================*/
/* Table: "LIKE"                                                */
/*==============================================================*/
create table "LIKE" 
(
   POST_AUTOR           int                            not null,
   UTILIZAOR_LIKE_POST  int                            not null,
   constraint PK_LIKE primary key clustered (POST_AUTOR, UTILIZAOR_LIKE_POST)
);

/*==============================================================*/
/* Table: MEMBROSGRUPO                                          */
/*==============================================================*/
create table MEMBROSGRUPO 
(
   GRUPO_ID             int                            not null,
   UTILIZADOR_ID        int                            not null,
   DONO                 int                            not null,
   constraint PK_MEMBROSGRUPO primary key clustered (GRUPO_ID, UTILIZADOR_ID)
);

/*==============================================================*/
/* Table: POST                                                  */
/*==============================================================*/
create table POST 
(
   HORAPOST             timestamp                      not null,
   DATAPOST             date                           not null,
   TEXTOPOST            text                           null,
   POST_ID              int                            not null,
   POST_AUTOR           int                            not null,
   constraint PK_POST primary key clustered (POST_ID)
);

/*==============================================================*/
/* Table: UTILIZADOR                                            */
/*==============================================================*/
create table UTILIZADOR 
(
   EMAILUTILIZADOR      varchar(100)                   not null,
   NOMEUTILIZADOR       varchar(100)                   not null,
   PAISRESIDENCIA       varchar(50)                    null,
   UTILIZADOR_ID        int                            not null,
   constraint PK_UTILIZADOR primary key clustered (UTILIZADOR_ID),
   constraint AK_KEY_EMAIL_UTILIZAD unique (EMAILUTILIZADOR)
);

alter table COMENTARIO
   add constraint FK_COMENTAR_COLOCACOM_UTILIZAD foreign key (AUTOR_COMENTARIO)
      references UTILIZADOR (UTILIZADOR_ID)
      on update cascade
      on delete restrict;

alter table COMENTARIO
   add constraint FK_COMENTAR_COMENTARI_POST foreign key (POST_COMENTADO)
      references POST (POST_ID)
      on update cascade
      on delete restrict;

alter table "LIKE"
   add constraint FK_LIKE_LIKE_POST_POST foreign key (UTILIZAOR_LIKE_POST)
      references POST (POST_ID)
      on update cascade
      on delete cascade;

alter table "LIKE"
   add constraint FK_LIKE_LIKE_UTIL_UTILIZAD foreign key (POST_AUTOR)
      references UTILIZADOR (UTILIZADOR_ID)
      on update cascade
      on delete cascade;

alter table MEMBROSGRUPO
   add constraint FK_MEMBROSG_GRUPO_MEM_UTILIZAD foreign key (UTILIZADOR_ID)
      references UTILIZADOR (UTILIZADOR_ID)
      on update restrict
      on delete restrict;

alter table MEMBROSGRUPO
   add constraint FK_MEMBROSG_MEMBROS_G_GRUPO foreign key (GRUPO_ID)
      references GRUPO (GRUPO_ID)
      on update restrict
      on delete restrict;

alter table POST
   add constraint FK_POST_COLOCA_UT_UTILIZAD foreign key (POST_AUTOR)
      references UTILIZADOR (UTILIZADOR_ID)
      on update cascade
      on delete restrict;

