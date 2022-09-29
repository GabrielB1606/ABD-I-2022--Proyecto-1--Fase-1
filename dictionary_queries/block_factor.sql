select table_name as "Table Name", floor(512/sum(data_length)) as "Block Factor"
  from user_tab_columns
  where table_name in (select table_name from user_tables where tablespace_name = 'TS_P1_GBGC')
  group by table_name;