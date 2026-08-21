use tcldb2;

create table department7(
	dept_id int,
    dept_name varchar(20),
    city varchar(20));

truncate table department7;    
insert into department7 values
(101,'HR','delhi'),
(102,'IT','Banglore'),
(103,'Hadas','jaipur');

select * from department7;

start transaction;
insert into department7 values(105,'finance','pune');
savepoint department7_insert_chk1; -- creating a reference point to revert to this trasaction only
delete from department7 where dept_id = 103;
set sql_safe_updates =0;

rollback to department7_insert_chk1;

select * from department7;

start transaction;
insert into department7 values(9999,'ahlaa','ajhfa;hf');

create table aajkfdlka(id int) ; -- ddl statement end transaction here

-- Data control language
-- authentication and authorization

create user vivek identified by 'vivek1234';

show grants for vivek; 

-- Grant statement ==> used to give permission

grant select on tcldb2.* to vivek;

show grants for vivek;

-- give the select and insert permis to this vivek user
-- provide the update persim on a specifid columen of this user
-- revoke the delete permission from this user 
-- revoke all the permission from the user => (revoke all priviliges) command





























