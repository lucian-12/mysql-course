SELECT   *
FROM     performance_schema.events_statements_summary_by_digest
ORDER BY sum_timer_wait DESC limit 10\G

SELECT   *
FROM     sys.statements_with_full_table_scans
ORDER BY no_index_used_count DESC\G
