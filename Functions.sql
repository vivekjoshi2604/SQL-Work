-- functions
-- block of code , collection of statement => perform certain task
-- code reusable,
-- code duplicacy is removed
-- make your code divided into smaller section

-- Inbuilt functions
-- Scaler functions => applies on every row and return the output for every row

-- string , number, dates
use world;
select name,continent, concat(continent,'have ',name, 'country') from country;

select name,continent, concat_ws(' ',continent,'have',name, 'country') from country; -- concat with seperator (concat_ws)
select name , upper(name), substr(name,1) from country; -- extract string character
select name , upper(name), substr(name,2) from country;

select name , substr(name,2), substr(name,2,4) from country;
select name , substr(name,-4) from country where name ='colombia';

-- char_length give the number of char
-- length return how many bites are there
select length('123'), char_length('123');

select name, replace(name, 'a', '@') from country;
select trim('  he llo ');

select name, lpad( name, 6 , '-') from country;
select name, rpad( name, 6 , '-') from country;

select current_date(), current_time(),current_timestamp(), now();

select now(), adddate(now(), 2), adddate(now(), -1); -- add in the date
select now(), adddate(now(), 2), adddate(now(), -1), 
adddate( now(), interval 1 year) , adddate(now() , interval 1 quarter);

select now(), year(now() ), month(now()) ,
extract(month from now() ), extract( minute from now()),weekday(now());
select now() , concat(' Current month is ', month(now() ));

select now(), date_format(now(), 'year is %Y month is %M , weekday is %W');

-- numeric functions
select * from country;
select lifeexpectancy, round(lifeexpectancy) from country;

select 76.469, round(76.269,1); -- round of decimal value 1  that is 2
select 76.369, round(76.361,2); -- round of decimal value 2 that is 6

-- round off to nearest 10, 100, 100

select 9, round(9,-1); -- -1 refer to 9 value
select 9, round(13.2,-1);
select 13.2, round(13.2,-2);
select 250.2, round(250.2,-2);
-- -2 =>1
select 254.2, round(254,-3);
select 254.2, round(7654.2,-3);
select round(34.857,1), truncate(34.857,1),mod(3,5);
select floor(34.999), ceil(34.00001);

select abs(10.111), abs(-10.111321);

-- multi row functions 










 
