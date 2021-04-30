SELECT OBJECT_TYPE, OBJECT_SCHEMA,
              OBJECT_NAME, INDEX_NAME,
              COUNT_STAR
         FROM performance_schema.table_io_waits_summary_by_index_usage
        WHERE OBJECT_SCHEMA = 'world'
              AND OBJECT_NAME = 'city'\G
