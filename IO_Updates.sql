USE world;
describe city; 

SELECT *
FROM   city
WHERE  id = 5; 

SELECT *
FROM   city
WHERE  countrycode = 'nld';

SELECT *
FROM   city
WHERE  NAME = 'amsterdam';

SELECT *
FROM   performance_schema.table_io_waits_summary_by_table
WHERE  object_name = 'city' \G

UPDATE city
SET    NAME = 'Amsterdam1'
WHERE  NAME = 'Amsterdam'; 
