select 
  table_name,
  column_name,
  data_length as "Column Size (B)"
from user_tab_columns
where table_name in (
  select table_name
  from user_tables
  where tablespace_name = 'TS_P1_GBGC'
);