-- correlated subquery => which is also dependent subquery 
-- (inner query depends on outer query)
-- A correlated query is a type of sunquery aslo called as dependent subquery (inner query dependent on outer query)
-- in this the inner query runs multiple times for each row of outer query, it is slower 

use corr_db;
create table orders(order_id int, name varchar(20), amount int);

insert into orders values(1,'a', 100),(2,'a', 200),(3,'a',400),(4,'b',400),(5,'b',300);

select * from orders;

select order_id, name, amount from orders where name = 'a' and amount = (select max(amount) from orders where name ='a');

select order_id, name, amount from orders as o_outer where  amount = (select max(amount) from orders where name =o_outer.name);













