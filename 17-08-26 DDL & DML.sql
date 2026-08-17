create database testdb6;
use testdb6;

-- table structure
create table testdb6.employee1(id int);

select * from testdb6.employee1;

drop table testdb6.employee1; -- drop the table [data is remove and also it structure]
select * from testdb6.employee1;

-- second time
create table testdb6.employee1(id int);
select * from testdb6.employee1;

-- DDL [ALTER]
alter table testdb6.employee1 add column name varchar(20);
alter table testdb6.employee1 drop column id; -- column ko drop with alter

select * from testdb6.employee1;

desc testdb6.employee1;
alter table testdb6.employee1 modify column name int; -- changed the data type

alter table testdb6.employee1 add column empid int; -- add a column
desc testdb6.employee1;

alter table testdb6.employee1 add constraint unique(name); -- unique constraint

alter tabLE testdb6.employee1 MODIFY column empid int NOT NULL; -- not null on a table column
alter table testdb6.employee2 modify column name int null;
desc testdb6.employee1;

alter tabLE testdb6.employee1 MODIFY column empid int primary key;

alter table testdb6.employee1 rename column empid to id; -- column rename
alter table testdb6.employee1 rename to employee2; -- table rename
desc testdb6.employee2;

-- Truncate
select * from testdb6.employee2;
insert into testdb6.employee2 values(100,80);

truncate table testdb6.employee2; -- first it drop the table then recreate the table again, cannot apply condition with it

desc testdb6.employee2;
alter table testdb6.employee2 drop constraint id;-- remove unique constrint


select * from testdb6.employee2;
insert into testdb6.employee2 values(10,199),(13,200),(11,899),(12,6598);
update testdb6.employee2 set name='899'; -- will make changes to every row
set sql_safe_updates =0;
update testdb6.employee2 set name= '7123' where id=199; -- condition

delete from testdb6.employee2 where name=10; -- delete can be used with condition

-- TO Do 
-- create a csv file with 20-25 record and try to import this file in mysql database 
-- TCL , Acid properties and why it is used
