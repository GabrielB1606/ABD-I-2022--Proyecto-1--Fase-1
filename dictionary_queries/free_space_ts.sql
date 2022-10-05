column "Used B"    format 99,999,999
column "Free B"    format 99,999,999
column "Total B"   format 99,999,999
select
   fs.tablespace_name as "Tablespace",
   (df.totalspace - fs.freespace) as "Used B",
   fs.freespace as "Free B",
   df.totalspace as "Total B"
from
   (
      select tablespace_name, sum(bytes) TotalSpace
         from dba_data_files
         group by tablespace_name
   ) df,
   (
      select tablespace_name, sum(bytes) FreeSpace
         from dba_free_space
         group by tablespace_name
   ) fs
where df.tablespace_name = fs.tablespace_name and df.tablespace_name='TS_P1_GBGC';