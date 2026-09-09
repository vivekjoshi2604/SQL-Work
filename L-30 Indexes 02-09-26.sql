-- Indexing is an object in your database which is used to improve the data retrival process from your table
-- it is faster through which we can access data from table
use newdb2;

create table test18(id int, name varchar(20));
show tables;
insert into test18 values(1,'a'),(3,'b'),(2,'c'),(5,'d'),(4,'e'),(6,'d'),(7,'d');

explain select * from test18 where id=3;

-- BTree data structure => stores data
-- primary key => it makes unclustered index

select * from test18;

alter table test18 add primary key (id);

desc test18;
select * from test18;

explain select * from test18 where name='a'; -- filters all 5 rows rather then single row 

-- Non-clustered index => 

drop table test18;
create  index name_index on test18(name);
show indexes from test18;

explain select * from test18 where name='d';
select * from test18;

create table test19(id int , name varchar(20), age int);

insert into test19 values(1, "v", 24),(2,"a",22),(3,"d",25),(4,"m",19),(5,"k",21);
desc test19;
select * from test19;
create index test_index on test19(name,age);

show indexes from test19;
drop table test19;
explain select * from test19 where name="m";

select * from test19 where age = 25 and name = "d";
explain select * from test19 where age = 25 and name = "d";
create index test_index on test19(age);