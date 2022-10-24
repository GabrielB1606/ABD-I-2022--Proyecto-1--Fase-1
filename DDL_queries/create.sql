-- tablespaces and what not
create tablespace TS_P1_GBGC datafile 'DF_P1_GBGC.dbf' size 10m;

-- create entity tables

create table usuario(
    id              number, 
    correo          varchar2(32)    NOT NULL,
    nombre          varchar2(32)    NOT NULL,
    apellido        varchar2(32)    NOT NULL,
    clave           varchar2(32)    NOT NULL,
    direccion       varchar2(128),
    telefono        varchar2(16)
) tablespace TS_P1_GBGC;

create table universidad(
    id              number,
    nombre          varchar2(64),
    descripcion     varchar2(256),
    fecha_creacion  date,
    acronimo        varchar2(32)
) tablespace TS_P1_GBGC;

create table empresa(
    id              number, 
    nombre          varchar2(32),   
    direccion       varchar2(128),
    telefono        varchar2(16),
    es_privada      number
) tablespace TS_P1_GBGC;

create table evento(
    id                  number,
    id_universidad      number,
    nombre              varchar2(32),
    fecha_inicio        date,
    fecha_fin           date,
    area                varchar2(64)
) tablespace TS_P1_GBGC;

-- create relation tables

create table pertenece(
    id                  number, 
    id_universidad      number, 
    id_usuario          number, 
    fecha_registro      date
) tablespace TS_P1_GBGC;

create table participa(
    id                  number, 
    id_evento           number,
    id_usuario          number
) tablespace TS_P1_GBGC;

create table dicta(
    id                      number, 
    id_evento               number,
    id_usuario              number,
    nombre_charla           varchar2(32),
    valoracion_charla       number,
    valoracion_contenido    number
) tablespace TS_P1_GBGC;

create table patrocina(
    id                      number, 
    id_evento               number,
    id_empresa              number,
    aporte                  number,
    fecha_aporte            date
) tablespace TS_P1_GBGC;