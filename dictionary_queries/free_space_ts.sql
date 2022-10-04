column "Tablespace" format a13
column "Used MB"    format 99,999,999
column "Free MB"    format 99,999,999
column "Total MB"   format 99,999,999
select
   fs.tablespace_name as "Tablespace",
   (df.totalspace - fs.freespace) as "Used MB",
   fs.freespace as "Free MB",
   df.totalspace as "Total MB"
from
   (
      select tablespace_name, round(sum(bytes) / 1048576) TotalSpace
         from dba_data_files
         group by tablespace_name
   ) df,
   (
      select tablespace_name, round(sum(bytes) / 1048576) FreeSpace
         from dba_free_space
         group by tablespace_name
   ) fs
where df.tablespace_name = fs.tablespace_name and df.tablespace_name='TS_P1_GBGC';