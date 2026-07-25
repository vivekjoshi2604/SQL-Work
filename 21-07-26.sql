create database selfjoindb;
use selfjoindb;

create table employees(eid int , name varchar(20), manager_id int);
drop table emloyees;
show tables;
insert into employees values(1, 'tushar',null),(2, 'abhinab',1) ,(3,'Saksham',1),(4,'akshay',2);
select * from employees;

select emp.eid,emp.name,emp.manager_id,mngr.eid, mngr.name from employees as emp
left join employees as mngr 
on emp.manager_id = mngr.eid;

select mngr.eid, mngr.name from employees as mngr;

