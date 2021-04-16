USE WORLD; 

DESCRIBE city;

EXPLAIN Analyze 
        SELECT Name, District
          FROM city
         WHERE CountryCode = 'USA'\G
         
         
ALTER TABLE city ADD INDEX Country_District_Name
                  (CountryCode, District, Name);
                  
ALTER TABLE city ALTER INDEX CountryCode INVISIBLE;
