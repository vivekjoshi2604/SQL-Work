use world;

show tables;
select * from city;

select district, population, District, Population+1999 from city;
-- where ,clause are specific keyword which are used to performe specific task eg. where, groupby
select * from city where name='Kabul';
select district	, population from city where name ='kabul';

select name,district,population,countrycode from city where countrycode ='IND' and population > 200000;
select * from city where countrycode = 'afg' and CountryCode= 'ind'; -- show empty row
select * from city where countrycode = 'afg' and district= 'kabol'; 

select * from city where Population between 100000 and 1500000;
select * from city where Population =129170 or Population=117196;

select * from city where Population in(129170,117196);

-- like operator 
select * from city where name = 'breda';
select * from city where name like 'breda';

-- % is for 0 or more characters
select * from city where name like 'ka%';
select * from city where name like '%ba';
select * from city where name like 'b%a';
select * from city where name like '%ba';
select * from city where name like '%a%';

-- _ exactly one character
select * from city where name like 't__%';
select * from city where name like 'a%__';

-- get the city and the popul where you have the letter e in the city name
select name, population from city where name like '%e%';

-- get the city and the popul where the second last letter  b
select name, population from city where name like '%b_';

-- where the city name have the second lette as a and the last second charac is r 
select name, population from city where name like '_a%r_';

-- whrer you have aa in the city name 
select name, population from city where name like '%aa%';

-- where the country name have th two character e seprated by any character and should be in the middle
select name, population from city where name like '_%e_e%_';

-- 1. string functions concate,trim,replace,length,substr
-- 2. differ btw mysql and sql theory




