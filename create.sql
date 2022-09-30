-- tablespaces and what not
create tablespace TS_P1_GBGC datafile 'DF_P1_GBGC.dbf' size 10m;

-- create entity tables

create table usuario(
    correo          varchar2(32),
    nombre          varchar2(32)    NOT NULL,
    apellido        varchar2(32)    NOT NULL,
    clave           varchar2(32)    NOT NULL,
    direccion       varchar2(128),
    telefono        varchar2(16),
    es_expositor    number          NOT NULL,
    PRIMARY KEY (correo)
) tablespace TS_P1_GBGC;

create table universidad(
    nombre          varchar2(32),
    descripcion     varchar2(256),
    fecha_creacion  date,
    acronimo        varchar2(32),
    PRIMARY KEY (nombre)
) tablespace TS_P1_GBGC;

create table empresa(
    nombre          varchar2(32),   
    direccion       varchar2(128),
    telefono        varchar2(16),
    es_privada      number,
    PRIMARY KEY (nombre)
) tablespace TS_P1_GBGC;

create table evento(
    id                  number,
    nombre_universidad  varchar2(64),
    nombre              varchar2(32),
    fecha_inicio        date,
    fecha_fin           date,
    area                varchar2(64),
    PRIMARY KEY(id),
    FOREIGN KEY(nombre_universidad) REFERENCES universidad(nombre)
) tablespace TS_P1_GBGC;

-- create relation tables

create table pertenece(
    nombre_universidad  varchar2(64),
    correo_usuario      varchar2(32),
    fecha_registro      date,
    PRIMARY KEY (nombre_universidad, correo_usuario),
    FOREIGN KEY (nombre_universidad) REFERENCES universidad(nombre),
    FOREIGN KEY (correo_usuario) REFERENCES usuario(correo)
) tablespace TS_P1_GBGC;

create table participa(
    id_evento               number,
    correo_usuario          varchar2(32),
    PRIMARY KEY (id_evento, correo_usuario),
    FOREIGN KEY (id_evento) REFERENCES evento(id),
    FOREIGN KEY (correo_usuario) REFERENCES usuario(correo)
) tablespace TS_P1_GBGC;

create table dicta(
    id_charla               number,
    id_evento               number,
    correo_usuario          varchar2(32),
    nombre_charla           varchar2(32),
    valoracion_charla       number,
    valoracion_contenido    number,
    PRIMARY KEY (id_evento, id_charla),
    FOREIGN KEY (id_evento) REFERENCES evento(id),
    FOREIGN KEY (correo_usuario) REFERENCES usuario(correo)
) tablespace TS_P1_GBGC;

create table patrocina(
    id_evento               number,
    nombre_empresa          varchar2(32),
    aporte                  number,
    fecha_aporte            date,
    PRIMARY KEY (id_evento, nombre_empresa),
    FOREIGN KEY (id_evento) REFERENCES evento(id),
    FOREIGN KEY (nombre_empresa) REFERENCES empresa(nombre)
) tablespace TS_P1_GBGC;