-- SET LINESIZE 165
-- SET PAGESIZE 0
set autotrace on statistics

select 
    id,
    acronimo 
from universidad
where acronimo = 'UCV';

select 
    id,
    acronimo
from universidad
where id = 3;

set autotrace off statistics