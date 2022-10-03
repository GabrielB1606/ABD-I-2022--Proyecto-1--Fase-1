select all_indexes.tablespace_name as "Tablespace" , all_indexes.table_name as "Table", all_indexes.index_type as "Type", all_ind_columns.column_name as "Column", all_indexes.UNIQUENESS as  "Unicidad", all_indexes.PCT_FREE, all_indexes.MAX_TRANS, all_indexes.INI_TRANS
    from all_indexes
        inner join all_ind_columns
        on all_ind_columns.index_name = all_indexes.index_name
    where tablespace_name = 'TS_P1_GBGC'
    order by all_indexes.table_name;