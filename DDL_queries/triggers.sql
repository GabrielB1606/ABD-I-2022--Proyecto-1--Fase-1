-- Se debe garantizar que al momento de realizar inserciones para el registro de participantes o expositores, estos realmente pertenezcan al tipo correcto. Ejemplo: un participante no puede dictar charlas.

create or replace trigger exponenteNoParticipa
before insert or update 
    on dicta 
    for each row 
declare 
    participante number;
begin 
    select COUNT(*) into participante
    from participa
    where id_evento = :new.id_evento and id_usuario = :new.id_usuario;

    if (participante > 0) then 
        RAISE_APPLICATION_ERROR(-20000, 'Exponente no puede ser participante en el mismo evento');
    end if;
end;
/

create or replace trigger participanteNoExpone
before insert or update
    on participa
    for each row
declare
    expositor number;
begin
    select COUNT(*) into expositor
    from dicta
    where dicta.id_evento = :new.id_evento and dicta.id_usuario = :new.id_usuario;
    
    if(expositor > 0) then
        RAISE_APPLICATION_ERROR(-20000, 'Participante no puede ser exponente en el mismo evento');
    end if;

end;
/
