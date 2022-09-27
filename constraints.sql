alter table evento
    add constraint area_chk
    check( area in ('Tecnología', 'Derecho', 'Artes', 'Filosofía', 'Comunicación', 'Salud') ); 

alter table dicta 
    add constraint charla_chk 
    check(valoracion_charla  >= 1 AND valoracion_charla <= 5); 
    
alter table dicta 
    add constraint contenido_chk 
    check(valoracion_contenido  >= 1 AND valoracion_contenido <= 5); 

alter table usuario
    add constraint expositor_chk
    check(es_expositor in (0, 1));

alter table empresa
    add constraint privada_chk
    check(es_privada in (0, 1));