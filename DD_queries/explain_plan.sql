-- SET LINESIZE 165
-- SET PAGESIZE 0
set autotrace on statistics
-- Primer Select: no se usa ningún Index
select 
    id,
    acronimo 
from universidad
where acronimo = 'UCV';

-- Segundo Select: se usa el Index de ID
select 
    id,
    acronimo
from universidad
where id = 3;

set autotrace off statistics