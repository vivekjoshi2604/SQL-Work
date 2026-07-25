use world;
select * from city;
select * from country;

-- Joins

select city.name, city.countrycode from city;
select country.code, country.name from country ;

select city.name, city.countrycode , country.code, country.name from city
join country where city.countrycode =country.code and city.name= 'Amsterdam';

select c.name,c.population from city as c;
select cn.name,cn.population from country as cn;

select c.name,c.population,cn.name,cn.population from city as c
join country as cn where c.countrycode = cn.code;