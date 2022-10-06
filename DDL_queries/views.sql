-- charlas de un evento y su expositor
create or replace view charlas_por_evento as 
    select evento.nombre as "Evento", dicta.nombre_charla as "Charla", concat(concat(usuario.nombre, ' '), usuario.apellido) as "Expositor"
    from evento 
    inner join dicta 
        on evento.id = dicta.id_evento
    inner join usuario
        on dicta.id_usuario = usuario.id
    order by evento.nombre, dicta.nombre_charla, usuario.nombre;


-- los eventos que ha patrocinado una empresa 
create or replace view eventos_por_empresa as
    select empresa.nombre as "Empresa", evento.nombre as "Evento"
        from empresa 
        inner join patrocina
            on empresa.id = patrocina.id_empresa
        inner join evento
            on patrocina.id_evento = evento.id
    order by empresa.nombre, evento.nombre;