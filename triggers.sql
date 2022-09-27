-- Se debe garantizar que al momento de realizar inserciones para el registro de participantes o expositores, estos realmente pertenezcan al tipo correcto. Ejemplo: un participante no puede dictar charlas.

-- create or replace trigger exponenteNoParticipa
-- before insert on dicta for each row 
-- declare 
--     es_participante exception;
--     PRAGMA exception_init(es_participante, -1);
--     participante number (1);

-- begin 
--     select COUNT(*) into participante
--     from participa
--     where id_evento = :new.id_evento and correo_usuario = :new.correo_usuario

--     if participante > 0 then 
--         raise es_participante;
--     end if
-- exception
--     when es_participante then 
--         raise_application_error(-1, 'Exponente no puede ser participante en el mismo evento');
-- end;
-- /

-- create or replace trigger participanteNoExpone
-- before insert
--     on participa
--     for each row
-- declare
--     expositor number;
-- begin
--     select COUNT(*) into expositor
--     from dicta
--     where id_evento = :new.id_evento and correo_usuario = :new.correo_usuario
    
--     if(expositor > 0) then
--         RAISE_APPLICATION_ERROR(-20000, 'Exponente no puede ser participante en el mismo evento');
--     end if;

-- end;
-- /
