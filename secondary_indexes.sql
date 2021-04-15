# Course examples
USE SAKILA;
EXPLAIN ANALYZE SELECT * FROM payment WHERE amount = '10.99';
EXPLAIN ANALYZE SELECT * FROM payment ORDER BY amount DESC LIMIT 10;
ALTER TABLE payment ADD INDEX IDX_AMT(amount);
SELECT customer_id, MAX(amount) FROM payment GROUP BY customer_id LIMIT 10;

# Find tables or statements that don't make use of an index 
USE sys;
SELECT * FROM SCHEMA_TABLES_WITH_FULL_TABLE_SCANS;
SELECT * FROM STATEMENTS_WITH_FULL_TABLE_SCANS;

# Find unused indexes
USE sys;
SELECT * FROM SCHEMA_INDEX_STATISTICS\G
SELECT * FROM SCHEMA_UNUSED_INDEXES\G
SELECT * FROM SCHEMA_REDUNDANT_INDEXES\G

# Display system-global variable "innodb_stats_persistent_sample_pages"
SHOW VARIABLES LIKE 'innodb_stats_persistent_sample_pages';
