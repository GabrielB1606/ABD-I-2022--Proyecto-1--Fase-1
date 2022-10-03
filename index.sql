-- Primary Key Indexes
create index idx_pk_universidad
on universidad(id) 
tablespace TS_P1_GBGC;

create index idx_pk_usuario
on usuario(id) 
tablespace TS_P1_GBGC;

create index idx_pk_empresa
on empresa(id) 
tablespace TS_P1_GBGC;

create index idx_pk_pertenece
on pertenece(id) 
tablespace TS_P1_GBGC;

create index idx_pk_participa
on participa(id) 
tablespace TS_P1_GBGC;

create index idx_pk_dicta
on dicta(id) 
tablespace TS_P1_GBGC;

create index idx_pk_patrocina
on patrocina(id) 
tablespace TS_P1_GBGC;

create index idx_pk_evento
on evento(id) 
tablespace TS_P1_GBGC;

-- Foreign Key Indexes
create index idx_fk_pertence_universidad
on pertenece(id_universidad)
tablespace TS_P1_GBGC;

create index idx_fk_pertence_usuario
on pertenece(id_usuario)
tablespace TS_P1_GBGC;

create index idx_fk_participa_evento
on participa(id_evento)
tablespace TS_P1_GBGC;

create index idx_fk_participa_usuario
on participa(id_usuario)
tablespace TS_P1_GBGC;

create index idx_fk_dicta_evento
on dicta(id_evento)
tablespace TS_P1_GBGC;

create index idx_fk_dicta_usuario
on dicta(id_usuario)
tablespace TS_P1_GBGC;

create index idx_fk_patrocina_evento
on patrocina(id_evento)
tablespace TS_P1_GBGC;

create index idx_fk_patrocina_empresa
on patrocina(id_empresa)
tablespace TS_P1_GBGC;

create index idx_fk_evento_universidad
on evento(id_universidad)
tablespace TS_P1_GBGC;

-- Views queries related
create index idx_group_by_empresa_nombre
on empresa(nombre)
tablespace TS_P1_GBGC;

create index idx_group_by_evento_nombre
on evento(nombre)
tablespace TS_P1_GBGC;