-- Subquery => a query in a query 

create database corr_db;
use corr_db;

create table employee_c ( id int, name varchar(20), salary int);
insert into employee_c values(1,'a', 100) ,(2,'b', 250), (3, 'c', 400), (4, 'd', 380);

select * from employee_c;
select max(salary) from employee_c;

select * from employee_c where salary =400;

select * from employee_c where salary=(select max(salary) from employee_c);

select * from employee_c where salary=(select min(salary) from employee_c);

select max(salary) as secondhighest from employee_c where salary < ( select max(salary) from employee_c);

insert into employee_c values(5,'aman', 250);

select * from employee_c where salary=(select salary from employee_c where name = 'b');

select * from employee_c where salary>(select avg(salary) from employee_c where salary > 276.0);

select avg(salary) from employee_c;

use world;
select * from city;
-- get the name of the dity where distict is same for the city abudhabi
select name from city where district=(select district from city where name='abu dhabi');
select district from city where name = 'abu dhabi';

-- get all the columns forom the cti table where the popula is the max
select * from city where population=(select max(population) from city);
 -- get the district and the name of the city where the countycode is same for herat
 
 select name from city where district=(select name from city where district='herat');
 select * from city where district = 'herat';
 
-- get the city,district and populatin for all the countries where amesterdem is present and sirt this data by popu
select district,name, population from city where countrycode =(select countrycode from city where name = 'amsterdam') order by population;
select * from city where name='Amsterdam';

-- single row subquery always return 1 line 









