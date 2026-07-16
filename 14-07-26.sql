use world;

select distinct(continent) from country; -- distinct is not used with another column

select continent, count(name) from country group by continent;
select count(name) from country where continent = "asia";

select count(name) , count(distinct(name)) from country;
select name, count(name) from country group by name;

select * from city;
select count(district) from city where district = "Zuid-Holland";

select district,count(name), sum(population) from city group by district;
select countrycode,count(name) from city group by countrycode;

select * from country;
-- count func => does not count NULL values
select count(name), count(code), count(continent), count(indepyear) from country;

-- count the number of countries  which have the liffe expecte of 70.1 to 83.1
select count(name) from country where lifeexpectancy between 70.1 and 83.1;

-- get the total popul of the country who ogot thier indep after 1990
select sum(population) from country where indepyear >=1990;

-- count the number of countries whcih are not slaved by any community
select count(name) from country where indepyear is null;

-- get the total countries andthe total surface area for each region
select region,count(name), sum(surfacearea) from country group by region;

-- get the total coutries in each continent
select continent,count(name) from country group by continent;

-- get the total country for each region for each continent
select continent,region,count(name) from country group by continent,region;

use world;
select continent, count(name) from country where continent like 'A%'
group by continent having count(name)>10;