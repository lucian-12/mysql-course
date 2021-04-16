# World database exaples
USE world;

SELECT ID, Name, District, Population
FROM world.city
WHERE CountryCode = 'DEU' AND Population > 1000000;

ALTER TABLE world.city ADD INDEX (CountryCode, Population);

# Userinfo benchmark tests
CREATE TABLE userinfo (
   id              int unsigned NOT NULL AUTO_INCREMENT,
   name            varchar(64) NOT NULL DEFAULT '',
   email           varchar(64) NOT NULL DEFAULT '',
   password        varchar(64) NOT NULL DEFAULT '',
   dob             date DEFAULT NULL,
   address         varchar(255) NOT NULL DEFAULT '',
   city            varchar(64) NOT NULL DEFAULT '',
   state_id        smallint unsigned NOT NULL DEFAULT '0',
   zip             varchar(8) NOT NULL DEFAULT '',
   country_id      smallint unsigned NOT NULL DEFAULT '0',
   account_type    varchar(32) NOT NULL DEFAULT '',
   closest_airport varchar(3) NOT NULL DEFAULT '',
   PRIMARY KEY (id),
   UNIQUE  KEY email (email)
) ENGINE=InnoDB;

explain analyze
SELECT count(*)
FROM userinfo
WHERE name = 'John100' AND state_id = 100\G

# Second test with individual indexes
SHOW INDEXES FROM userinfo;
ALTER TABLE userinfo ADD INDEX name_idx(name);
ALTER TABLE userinfo ADD INDEX state_id_idx(state_id);
ANALYZE TABLE userinfo;

# Third test with composite index
SHOW INDEXES FROM userinfo;
drop index name_idx on userinfo;
drop index state_id_idx on userinfo;

ALTER TABLE userinfo ADD INDEX name_state_id_idx(name, state_id);
ANALYZE TABLE userinfo;
