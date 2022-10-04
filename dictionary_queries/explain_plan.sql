-- SET LINESIZE 165
-- SET PAGESIZE 0
set autotrace on statistics
-- explain plan for
--  set autotrace traceonly explain
    select 
        id, acronimo 
        from universidad
        where acronimo = 'UCV';

-- SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(FORMAT=>'+ALLSTATS LAST'));

-- explain plan for
--  set autotrace traceonly explain
    select 
        id, acronimo
        from universidad
        where id = 3;
        
set autotrace off statistics

-- SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(FORMAT=>'+ALLSTATS LAST'));