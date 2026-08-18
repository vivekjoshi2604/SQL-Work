-- root connection
create database tcldb2;
use tcldb2;

create table test(id int, name varchar(20));
insert into tcldb2.test values(18,'abhinab');


select @@autocommit; -- by default autocommit is 1 mean file will be automatically save

start transaction;
insert into tcldb2.test values(19,'raj');
select * from tcldb2.test; -- <<== two rows here
commit;

set sql_safe_updates =0;
start transaction;
insert into tcldb2.test values(20,'japan');
insert into tcldb2.test values(21,'north korea');
update tcldb2.test set name= 'vivek' where id = 18;
rollback; -- to revert the two lines insert just like undo
select * from tcldb2.test;

start transaction;
insert into tcldb2.test values(22,'ujjwal');
delete from tcldb2.test ;
rollback;
select * from tcldb2.test;










