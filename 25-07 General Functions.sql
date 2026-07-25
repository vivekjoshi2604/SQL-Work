-- General funcitons => ifnull, case statement , if-else

use world;
-- ifnull() => it will replace null with any given value
select name, indepyear, indepyear+100 , ifnull(indepyear,0) from country;
-- coalesce => returns first null values 
select name, indepyear, lifeexpectancy , coalesce(indepyear, lifeexpectancy, name ) from country;

-- case statement => is used in place of if-else t

select name, population , indepyear ,
if(indepyear>1947 , 'After India','Before India') from country;

select name, population , indepyear ,
if(indepyear>1947 , 'After India', 
			if(indepyear>1920,'just before india','Before India') )from country;

-- case statement syntax 
-- select col, col2, case when condition true then when condition2 true then end case from table
select name , population , indepyear, case 
when indepyear> 1947 then 'After 1947'
when indepyear>=1919 then 'Only after 1919'
else 'else condition'
end from country;
select * from country;
-- country name, contin, pop and create a column name as category if my countty popyli is > 500000 then print large population 
select name, continent , population , case 
when population between 200000 and 500000 then 'avgpopul'
when population >500000 then 'large popula'
else 'low population'
end from country;

--  print continent name and the number of countries with the category of the continent 
-- column if num of countries in greater then 10  then snalll more then 15 avg size contin , more then 25 large scale
select continent , count(distinct(name)) as countries , case 
when count(distinct(name)) >25 then 'large scale'
when count(distinct(name)) >15 then 'avg scale'

else 'low'
end  as category from country group by continent;






