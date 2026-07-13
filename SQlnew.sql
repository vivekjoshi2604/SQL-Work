show databases;
use world;
 
describe country; -- table konse column hai and useke datatype
 
 -- data access
show tables;
 
 select * from country;
 select name, continent from country;
 select name, name continent from country;
 
 select name, continent ,population from country;
 select name , continent , population, population+500 from country;
 
  select name , continent , population, population+500 as total , population+1000 as newpopulation from  country; -- with as we can change name of any column
  
  -- select => column ko access krna
  -- you can write a query(logic) in any case format
  -- you can give a column name using as keyward

select * from country where continent = 'Asia';

select * from country where name = 'Bahrain';

select  name,continent, population from country where name = 'India';

select name, continent from country where population = '1013662000';

select * from country where continent = 'Europe' and indepyear > 1900;

-- get the country code and conu name where the surface area of the count > 1900
select code as countrycode, name as country_name from country where surfacearea > 1900;

-- get the country code and where the region is southern europe
select code as country_code , name as country from country where region = 'southern europe';

-- get the country code and coun name where hte country belong to africa and the region is centtral africa
select code as country_code , name as country from country where name = 'africa' and region = 'central africa';

-- get the country name,continent and population where they bleong to asia or africa
select name as country_name, continent , population from country where continent = 'asia' or continent = 'africa';

-- get the country name, popul, region with hte 10% increse in the population for the country whose indepyear after 1950
select name as country_name, population, region,population/100*10 as newpopulation from country where indepyear > 1950;

-- get all the values of country where the country name and the local name is same
select * from country where name=localname;

-- between operator, in , like
-- what is dbms and what type of dbms are there
select * from country;
select * from country where surfacearea between 200 and 500;


select * from country where capital not between 200 and 300;

select * from country where LifeExpectancy in(60,78.4);
select * from country where LifeExpectancy not in(60,78.4);

select * from country where name = 'Andorra';
select * from country where name like 'Italy';
select * from country where name like 'I%'; -- A in the starting
select * from country where name like '%A'; -- A in the last
select * from country where name like '%A%'; -- A in any place

-- second D -->
select * from country where name like '__n%';