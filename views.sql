-- charlas de un evento y su expositor
create or replace view charlas_por_evento as 
    select evento.id, evento.nombre, dicta.nombre_charla, usuario.nombre as expositor
    from evento 
    inner join dicta 
        on evento.id = dicta.id_evento
    inner join usuario
        on dicta.correo_usuario = usuario.correo
    group by evento.id, evento.nombre, dicta.nombre_charla, usuario.nombre;


-- los eventos que ha patrocinado una empresa 
create or replace view eventos_por_empresa as
    select patrocina.nombre_empresa, evento.nombre
        from patrocina
        inner join evento
            on evento.id = patrocina.id_evento
    group by patrocina.nombre_empresa, evento.nombre;