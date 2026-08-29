-- views are the objest works as virtual table
-- excess the data from underlying table
-- store query in view
-- views => it is an object which store the query
-- it do not store the data physically
-- it access / fetch the data from underlying table (main table)
-- we use it bcz it makes query simple
-- it help in data security

create database viewdb;
use viewdb;

create table employee(id int, name varchar(20),salary int);
insert into employee values(1, 'amar', 10000),(2, 'shivank',20000);

-- create is used to create

create view emp_view as select id, name from employee;

select * from emp_view;

select salary from emp_view; -- will give error

-- row new insert 
insert into employee values(3,'abhishek',30000);

select * from emp_view; -- base table change view also got new data

insert into emp_view values(4,'raj'); -- view insert as per column
select * from emp_view;
select * from employee;

-- a view is not updatable if aggregate func are there

create view emp_view_sum as select sum(salary) from employee; -- complex view
select * from emp_view_sum;
insert into emp_view_sum values(80000); -- view is not insertable

-- CTE 
use viewdb;
-- CTAS -> create table as select statement
create table city_t2 as select * from world.city;

select * from city_t2;

with abc as (
select * from city_t2 
where countrycode='afg' and name like '%a%') 

select countrycode, sum(population) from abc group by countrycode;

select * from city_t2; -- contrycode

select * from world.country; -- code

select c.name, c.countrycode, c.district ,c.population, cn.code, cn.name, cn.continent
from city_t2 as c 
join world.country as cn
on c.countrycode=cn.code
where cn.continent ='Asia' and cn.population>400000;

with cte as (
select c.name as city, c.countrycode, c.district ,c.population as citypop, cn.code as country,
 cn.name, cn.continent, cn.population as countrypop
from city_t2 as c join world.country as cn
on c.countrycode=cn.code
where cn.continent ='Asia' and cn.population>400000)
select district, sum(citypop) as citytotal from cte
group by district having citytotal> 50000;

select * from city_t2;

with district_max as (
select district, max(population) as d_population
from city_t2
group by district)
select * from district_max as dm join city_t2 as c
on c.district = dm.district and c.population= dm.d_population;

with cte as (
select max(population) from city_t2
where population <
(select max(population) from city_t2))

, cte2 as 
(select max(population) from city_t2 where population < (select * from cte) )
select * from city_t2 where population = (select * from cte2);



