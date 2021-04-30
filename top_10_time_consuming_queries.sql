SELECT (100 * SUM_TIMER_WAIT / sum(SUM_TIMER_WAIT)
            OVER ()) percent,
            SUM_TIMER_WAIT AS total,
            COUNT_STAR AS calls,
            AVG_TIMER_WAIT AS mean,
            substring(DIGEST_TEXT, 1, 75)
  FROM  performance_schema.events_statements_summary_by_digest
            ORDER BY SUM_TIMER_WAIT DESC
            LIMIT 10;

SELECT *
FROM   sys.statement_analysis LIMIT 10\G
