alter table usuario
    add(
        constraint correo_unique
            unique(correo),
        constraint pk_usuario
            PRIMARY KEY(id)
    );

alter table universidad
    add constraint pk_universidad
        PRIMARY KEY(id);

alter table empresa
    add(
        constraint privada_chk
            check(es_privada in (0, 1)),
        constraint pk_empresa
            PRIMARY KEY(id)
    );

alter table evento
    add (
        constraint fecha_chk
            check(fecha_fin >= fecha_inicio),
        constraint area_chk
            check( area in ('Tecnologia', 'Derecho', 'Artes', 'Filosofia', 'Comunicacion', 'Salud') ),
        constraint pk_evento
            PRIMARY KEY(id),
        constraint fk_evento_universidad
            FOREIGN KEY(id_universidad) REFERENCES universidad(id)
    ); 

alter table pertenece
    add(
        constraint pk_pertenece
             PRIMARY KEY (id),
        constraint fk_pertenece_universidad
            FOREIGN KEY (id_universidad) REFERENCES universidad(id),
        constraint fk_pertenece_usuario
            FOREIGN KEY (id_usuario) REFERENCES usuario(id),
        constraint uq_inscripciones
            UNIQUE (id_universidad, id_usuario)
    );

alter table participa
    add(
        constraint pk_participa
            PRIMARY KEY (id),
        constraint fk_participa_evento
            FOREIGN KEY (id_evento) REFERENCES evento(id),
        constraint fk_participa_usuario
            FOREIGN KEY (id_usuario) REFERENCES usuario(id),
        constraint uq_participante
            UNIQUE (id_usuario, id_evento)
    );

alter table dicta
    add(
        constraint pk_dicta
            PRIMARY KEY (id),
        constraint fk_dicta_evento
            FOREIGN KEY (id_evento) REFERENCES evento(id),
        constraint fk_dicta_usuario
           FOREIGN KEY (id_usuario) REFERENCES usuario(id),
        constraint charla_chk 
            check(valoracion_charla  >= 1 AND valoracion_charla <= 5),
        constraint contenido_chk 
            check(valoracion_contenido  >= 1 AND valoracion_contenido <= 5)
    );

alter table patrocina
    add(
        constraint pk_patrocina
            PRIMARY KEY (id),
        constraint fk_patrocina_evento
           FOREIGN KEY (id_evento) REFERENCES evento(id),
        constraint fk_patrocina_empresa
           FOREIGN KEY (id_empresa) REFERENCES empresa(id)
    );