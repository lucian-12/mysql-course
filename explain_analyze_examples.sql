USE WORLD; 
EXPLAIN SELECT * FROM city WHERE name = 'London' \G
EXPLAIN ANALYZE SELECT * FROM city WHERE name = 'London' \G
EXPLAIN FORMAT=JSON SELECT * FROM city WHERE name = 'London' \G

EXPLAIN ANALYZE
        SELECT *
          FROM world.city
         WHERE CountryCode = 'FRA'\G
        
SHOW COLUMNS FROM countrylanguage;
EXPLAIN ANALYZE
        SELECT *
          FROM world.countrylanguage
         WHERE CountryCode = 'CHN'\G;
         
EXPLAIN ANALYZE
       SELECT ci.ID, ci.Name, ci.District,
              co.Name AS Country, ci.Population
         FROM world.city ci
              INNER JOIN
                (SELECT Code, Name
                   FROM world.country
                  WHERE Continent = 'Europe'
                  ORDER BY SurfaceArea
                  LIMIT 10
                ) co ON co.Code = ci.CountryCode
        ORDER BY ci.Population DESC
        LIMIT 5\G;
        


USE test; 
# CREATE DATABASE test;
CREATE TABLE test_estimates (
    id INT AUTO_INCREMENT PRIMARY KEY, val INT, val2 INT);
ALTER TABLE test_estimates ADD INDEX idx(val);

