create database joinsdb;
use joinsdb;
CREATE TABLE Departments (
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);
INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
(101, 'HR'),
(102, 'IT'),
(103, 'Finance'),
(104, 'Marketing');

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
EmployeeName VARCHAR(50),
DepartmentID INT
);
INSERT INTO Employees (EmployeeID, EmployeeName, DepartmentID)
VALUES
(1, 'Alice', 101),
(2, 'Bob', 102),
(3, 'Charlie', 105), -- No matching department
(4, 'David', NULL), -- No department assigned
(5, 'Eva', 101);
show tables;
select * from departments;
select * from employees;

-- old syntax
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e 
join departments as d
where e.departmentid = d.departmentid;

-- new syntax
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e  -- by default it is inner join
join departments as d
on e.departmentid = d.departmentid;

select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname -- left join on employees table
from employees as e left join departments as d
on e.departmentid = d.departmentid;

select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname -- left join on departments table
from departments as d left join employees as e
on e.departmentid = d.departmentid;

select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname -- right join
from employees as e  right join departments as d
on e.departmentid = d.departmentid;

-- Natural join and self join
select e.employeeid, e.employeename, e.departmentid, d.departmentid, d.departmentname from employees as e  -- natural join
join departments as d
on e.departmentid = d.departmentid;

use world;
select * from city;
select * from country;
-- primary key which is used to identify each row in a table
-- foreign key establish a connection between two or more table , generaly refers to another column of table which is primary

select c.id , c.name ,c.countrycode, cty.code, cty.name from city as c
join country as cty 
on c.countrycode = cty.code;

-- cross join / Cartesion join =>
select c.id , c.name ,c.countrycode, cty.code, cty.name from city as c
cross join country as cty ;

select c.id , c.name ,c.countrycode, cty.code, cty.name from city as c
join country as cty ;

select c.id , c.name ,c.countrycode, cty.code, cty.name from city as c
natural join country as cty ;

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
 ON e.dept_id = d.dept_id;









