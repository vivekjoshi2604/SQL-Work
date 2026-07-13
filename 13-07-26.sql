use world;
select name from country; -- this will give all values 
select distinct(continent) from country; -- (distinct) gives unique values
select count(continent) ,count(distinct(continent))from country; -- in this count give count of distinct continent
select count(name) , count(distinct(name)) from country;

-- Aggregate function are the func which are used to apply the calculation on the set of rows eg. (max ,count, min )

select count(population), sum(population), avg(population) from country;
select count(surfacearea), sum(surfacearea) , max(surfacearea) from country;
select count(continent), max(continent), min(continent) from country; -- funct on string we can perform count,min,max

-- maxsumdate -> latest date

-- population => non-aggregated column
-- count(population) => aggregated function
select count(population) from country;

select avg(population), avg(replace(population,1,4)) from country;
select avg(replace(population,0, '')) from country;

-- data sort krna (order by clause) -- where ,clause are specific keyword which are used to performe specific task eg. where, groupby

select name, continent, region , population from country order by name desc;
select name, continent, region , population from country order by population, name;

-- region ascending order sort
-- in each region we sort the data based on population in descending order
select name, continent, region , population from country order by region, population desc;
select * from country;
