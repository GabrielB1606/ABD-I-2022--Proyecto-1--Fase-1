-- Constraints testing

insert into empresa values(3, 'Empresa6', 'desc6', '042403919', 2);
insert into evento values(5, 3, 'Evento5', '01/01/2022', '01/02/2022', 'Medicina');
insert into evento values(5, 3, 'Evento5', '01/05/2022', '01/02/2022', 'Artes');
insert into dicta values (2, 1, 3, 'Charla2', 6, -1);

-- Triggers Testing

insert into dicta values (2, 1, 1, 'Charla2', 1, 5);
insert into participa values(3, 1, 3);