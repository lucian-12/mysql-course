# IO capacity for Flushing Pages 
SHOW GLOBAL variables like 'innodb_io_capacity';
# Default value of 200 corresponds to a low-end SSD. 
SET PERSIST innodb_io_capacity = 1000;
SHOW GLOBAL variables like 'innodb_io_capacity_max';
