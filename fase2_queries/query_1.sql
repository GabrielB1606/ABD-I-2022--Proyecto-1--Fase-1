-- listar el Nombre y Apellido de los expositores, el nombre de la charla y del evento donde realizaron su presentación, en eventos organizados por la Universidad Central de Venezuela.

select evento.nombre as "Evento", dicta.nombre_charla as "Charla", concat(concat(usuario.nombre, ' '), usuario.apellido) as "Expositor"
    from evento 
        inner join dicta 
            on evento.id = dicta.id_evento
        inner join usuario
            on dicta.id_usuario = usuario.id
        inner join universidad
            on evento.id_universidad = universidad.id
    where universidad.nombre = 'Universidad Central de Venezuela';