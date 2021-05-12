# Verify Buffer Pool Size
SHOW GLOBAL variables like 'innodb_buffer_pool_size';
# Set a global system variable
# Set innodb_buffer_pool_size variable to 1 GB
SET GLOBAL innodb_buffer_pool_size = 1073741824;
# Set a session system variable
SET SESSION innodb_buffer_pool_size = 1073741824;
# Persist a global system variable to the mysqld-auto.cnf file (and set the runtime value)
SET PERSIST innodb_buffer_pool_size = 1073741824;

# Calculate the Buffer Pool Hit Rate
SELECT Variable_name, Variable_value
         FROM sys.metrics
        WHERE Variable_name IN
                ('Innodb_pages_read',
                 'Innodb_buffer_pool_read_requests')\G

SELECT 100 - (100 * %Innodb_pages_read%/%Innodb_buffer_pool_read_requests%) AS HitRate;

# Verify Buffer Pool Instances
SHOW GLOBAL variables like 'innodb_buffer_pool_instances';
