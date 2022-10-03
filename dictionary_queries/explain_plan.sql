explain plan for
    select id, acronimo
        from universidad
        where acronimo = 'UCV';

select * from table(dbms_xplan.display);

explain plan for
    select id, acronimo
        from universidad
        where id = 3;

select * from table(dbms_xplan.display);