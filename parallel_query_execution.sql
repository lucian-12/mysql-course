# Verify current number of threads for Parallel query execution 
SHOW GLOBAL variables like "innodb_parallel_read_threads";
# Create dummy load on MySQL instance
FOR i in range(1000): session.run_sql('SELECT COUNT(*) FROM employees.salaries')
# Verify the current number of parallel thread running
SELECT THREAD_ID,
       TYPE,
       THREAD_OS_ID
FROM performance_schema.threads
WHERE NAME = 'thread/innodb/parallel_read_thread';
