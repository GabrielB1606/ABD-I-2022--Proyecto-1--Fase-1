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

-- listar el Nombre de las Empresas privadas que han aportado a eventos de Tecnología en los años 2019 al 2021, el nombre de dichos Eventos y la cantidad aportada al evento.

select empresa.nombre as "Empresa", evento.nombre as "Evento", patrocina.aporte as "Aporte"
    from empresa 
        inner join patrocina
            on empresa.id = patrocina.id_empresa
        inner join evento
            on patrocina.id_evento = evento.id
    where 
        empresa.es_privada = 1 and
        evento.area = 'Tecnología' and
        patrocina.fecha_aporte BETWEEN TO_DATE('01/01/2019', 'DD/MM/YYYY') AND TO_DATE('31/12/2021', 'DD/MM/YYYY');