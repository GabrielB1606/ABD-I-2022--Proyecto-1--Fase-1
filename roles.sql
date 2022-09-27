-- Organizador
create role organizador;

grant create session to organizador;

grant insert, delete, update 
    on usuario
    to organizador;

grant insert, delete, update 
    on evento
    to organizador;

grant insert, delete, update 
    on participa
    to organizador;

grant insert, delete, update 
    on dicta 
    to organizador;

-- Administrador
create role administrador;

grant create session to administrador;

grant insert, delete, update
    on universidad
    to administrador; 

grant insert, delete, update
    on empresa
    to administrador; 

grant insert, delete, update
    on patrocina
    to administrador; 

grant insert, delete, update
    on evento
    to administrador; 
