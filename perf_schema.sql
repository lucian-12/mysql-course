USE performance_schema;
SHOW tables; 

SELECT *
FROM   performance_schema.events_statements_summary_by_digest;

SELECT *
FROM   performance_schema.events_statements_summary_by_digest\G 

SELECT   *
FROM     performance_schema.events_statements_summary_by_digest
ORDER BY sum_timer_wait DESC limit 10\G
