-- clear screen -> cl scr
drop view eventos_por_empresa;
drop view charlas_por_evento;
drop tablespace TS_ABD_P1_GBGC INCLUDING CONTENTS AND DATAFILES;
drop role administrador;
drop role organizador
-- alter database datafile 'DF_ABD_P1_GBGC.dbf' offline drop;
-- drop datafile 'DF_ABD_P1_GBGC.dbf';