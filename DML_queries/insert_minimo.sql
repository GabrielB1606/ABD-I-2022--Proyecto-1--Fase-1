insert into usuario values(1, 'gc@gmail', 'Gabriel', 'Carrizo', '123', 'Calle 1', '04141111');
insert into usuario values(2, 'gb@gmail', 'Gabriel', 'Belisario', '456', 'Calle 2', '04161111');
insert into usuario values(3, 'jj@gmail', 'Javier', 'Jimenez', '789', 'Calle 3', '04261111');

insert into universidad values(1, 'Universidad Central de Venezuela', 'desc UCV', '01/10/2022', 'UCV');
insert into universidad values(2, 'USV', 'desc USV', '01/10/2022', 'USV');
insert into universidad values(3, 'Michigan', 'desc Michigan', '01/10/2022', 'MG');
insert into universidad values(4, 'Simon', 'Desc Simon', '01/10/2022', 'SM');

insert into evento values(1, 1, 'Evento1', '01/01/2022', '01/02/2022', 'Tecnologia');
insert into evento values(2, 2, 'Evento2', '01/01/2022', '01/02/2022', 'Salud');
insert into evento values(3, 4, 'Evento3', '01/01/2022', '01/02/2022', 'Artes');
insert into evento values(4, 3, 'Evento4', '01/01/2022', '01/02/2022', 'Salud');

insert into empresa values(1, 'emp1', 'desc1', '042411111', 1);
insert into empresa values(2, 'emp2', 'desc2', '042411112', 1);

insert into pertenece values(1, 1, 1, '01/02/2019');
insert into pertenece values(2, 1, 2, '01/02/2019');
insert into pertenece values(3, 2, 3, '01/02/2020');

insert into participa values(1, 1, 1);
insert into participa values(2, 1, 2);

insert into dicta values (1, 1, 3, 'Charla1', 5, 5);
insert into dicta values (2, 2, 1, 'Charla2', 1, 2);
insert into dicta values (3, 2, 2, 'Charla3', 3, 4);
insert into dicta values (4, 3, 1, 'Charla4', 5, 1);
insert into dicta values (5, 3, 2, 'Charla5', 3, 4);
insert into dicta values (6, 3, 3, 'Charla6', 3, 4);
insert into dicta values (7, 4, 1, 'Charla7', 4, 4);

insert into patrocina values(1, 1, 1, 1000, '05/10/2020');
insert into patrocina values(2, 4, 1, 2000, '05/10/2020');
insert into patrocina values(3, 1, 2, 2000, '06/10/2022');
insert into patrocina values(4, 2, 2, 3000, '06/10/2020');
insert into patrocina values(5, 3, 2, 3000, '06/10/2022');