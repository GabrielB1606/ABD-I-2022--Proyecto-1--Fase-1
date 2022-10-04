select 
  table_name as "Table Name",
  sum(data_length) as "Register Size (B)"
from user_tab_columns
where table_name in (
  select table_name
  from user_tables
  where tablespace_name = 'TS_P1_GBGC'
)
group by table_name;