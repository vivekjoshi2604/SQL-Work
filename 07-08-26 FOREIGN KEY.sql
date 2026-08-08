drop database if exists foreigndb;
create database foreigndb;

use foreigndb;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

INSERT INTO customers VALUES
(101,'John'),
(102,'Alice'),
(103,'David');

SELECT * FROM CUSTOMERS;
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

INSERT INTO products VALUES
(1,'Laptop'),
(2,'Mouse'),
(3,'Keyboard');



CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT, -- foreign key
    product_id INT,
    quantity INT,
    CONSTRAINT CUSTOMER_ID_FK FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS (CUSTOMER_ID)
    on delete cascade,
    CONSTRAINT PRODUCT_ID_FK FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID)
);

INSERT INTO orders
VALUES
(10001,101,2,9);

INSERT INTO customers VALUES
(108,'RAJA');
SELECT * FROM CUSTOMERS;
INSERT INTO orders
VALUES
(10002,108,2,5);

select * from PRODUCTS;
truncate orders;

INSERT INTO orders
VALUES(10003,101,7,2);

-- we do join. [Wrong name]
SELECT *
FROM orders o
LEFT JOIN customers c
ON o.customer_id=c.customer_id;

-- wrong can't order if the product is not listed
SELECT *
FROM orders o
LEFT JOIN products p
ON o.product_id=p.product_id;

/*
create table child_table(
	column1 data_type,
    column2 data_type,
    ..
    CONSTRAINT fk_name FOREIGN KEY (column1) REFERANCES TABLE (COLUMN1)

*/

delete from customers where customer_id=101; -- error bcz it refers a foreign key in
-- another table 
-- parent record delete
-- child record delete ho jayega [orders table]

select * from orders;

SELECT * from customers;

-- what is group by statement
-- what is windows statement 
-- differenc btn grp by and windows statement
-- differne btn primary vs unique key