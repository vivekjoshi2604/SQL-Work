-- Multi-row subquery

create database corr_db1;
use corr_db1;

create table employee_c ( id int, name varchar(20), salary int);
insert into employee_c values(1,'a', 100) ,(2,'b', 250), (3, 'c', 400), (4, 'd', 100),(5, 'a', 300);

select * from employee_c 
where salary in (select salary from employee_c where name = 'a');

-- we use in operator in multi-row subquery
-- select * from employee_c where salary in (select salary from employee_c where name = 'a');
-- where in (100,300)
-- in, any, all three operators works with multi-row subquery
-- =any , >any, <any it will compare any values with the inner query
select * from employee_c where salary <any
(select salary from employee_c where name='a');

-- all (its like and operator)
select * from employee_c 
where salary >all (select salary from employee_c where name='a');








