use newdb2;

create table test1(rollno int);-- create => DDL statement
insert into test1 values(10); -- DML statement
insert into test1 values(30); -- DML statement
insert into test1 values(aman); -- error bcz of aman 

select * from test1;

-- tinyint [ 1 byte]
-- 1 yte => 8 bit
-- 2**8 => 256
-- -128 to 127
create table test2( rollno tinyint); -- create => DDL statement
insert into test2 values(127);
insert into test2 values(-128);
insert into test2 values(True);
select * from test2;

-- 0 to 255 but no negative number
create table test3( rollno tinyint unsigned); -- create => DDL statement
insert into test3 values(127);
insert into test3 values(128);
insert into test3 values(256); -- error
select * from test3;

/*
tinyint - 1byte
small int - 2 byte
int -> 4 byte
big int -> 8 byte, 64 bit.
*/
-- String datatype
-- varchar
-- char => fixed size of character

create table test4(gender char(10)); -- create => DDL statement
insert into test4 values('Male');
select * from test4;

drop table test5;
create table test5(gender varchar(20)); -- create => DDL statement
insert into test5 values('OM'); -- 18 character block that can be use at
select * from test5;

show table status like 'test5';
truncate table test7;
create table test7(name char(10), name2 varchar(10));
insert into test7 values('abc', 'abc');
insert into test7 values('def ', 'def  ');

insert into test7 values('aman',null);
select * from test7;

select name, char_length(name), name2, char_length(name2) from test7;
-- varchar is not fix  , white spaces as it is stored
-- char is fixed , char will remove the trailing(last) whitespace


select table_name, data_length from information_schema.tables
where table_schema= database()
and table_name in ('test4','test5');

-- set of rules that we apply on the column
-- to prevent invalid data entry
-- Mela => entry security guard

-- not null 

drop table test9;
create table test9(id int, name varchar(20) not null);
insert into test9 values(10, 'vivek');
insert into test9 values(10, null); -- constraint worked
select * from test9;

create table test10(id int, name varchar(20) default 'regex');
insert into test10 values(10, 'vivek');
insert into test10(id) values(11); -- default is regex
insert into test10(name) values('tushar'); -- default in id is null
select * from test10;

create table test11(id int unique, name varchar(20) );
insert into test11 values(10,'vivek');
insert into test11 values(10,'ujjwal'); -- error
insert into test11 values(11,'vivek');-- works
insert into test11 values(null,'happy'); -- works
insert into test11 values(null,'isha'); -- works

select * from test11;

-- 1 table only 1
-- primary => unique + no null
create table test12(id int primary key, name varchar(20));
insert into test12 values(10, 'vivek');
insert into test12 values(10, 'ads'); -- duplicate values
insert into test12 values(null, 'ads'); -- not null constraint
select * from test12;










