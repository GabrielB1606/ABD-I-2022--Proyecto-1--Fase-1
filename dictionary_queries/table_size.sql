select segment_name as "Table", BYTES/block_size as "Size in Blocks"
    from dba_segments
    join dba_tablespaces
        on dba_segments.tablespace_name = dba_tablespaces.tablespace_name
    where dba_segments.tablespace_name = 'TS_P1_GBGC' and dba_segments.segment_type='TABLE';