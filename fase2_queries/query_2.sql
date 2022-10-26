-- listar el Nombre de las Empresas privadas que han aportado a eventos de Tecnología en los años 2019 al 2021, el nombre de dichos Eventos y la cantidad aportada al evento.

select empresa.nombre as "Empresa", evento.nombre as "Evento", patrocina.aporte as "Aporte"
    from empresa 
        inner join patrocina
            on empresa.id = patrocina.id_empresa
        inner join evento
            on patrocina.id_evento = evento.id
    where 
        empresa.es_privada = 1 and
        evento.area = 'Tecnologia' and
        patrocina.fecha_aporte BETWEEN TO_DATE('01/01/2019', 'DD/MM/YYYY') AND TO_DATE('31/12/2021', 'DD/MM/YYYY');