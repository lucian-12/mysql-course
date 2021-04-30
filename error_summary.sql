SELECT *
FROM   performance_schema.events_errors_summary_by_account_by_error
WHERE  error_name = 'ER_LOCK_DEADLOCK' \G
