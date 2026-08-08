-- Windows func are the func which are used to perform the calculatoon on set of rows
-- this calcu are done in relation to the current row
-- windows func do not collapse the date like group by 
-- over() set of rows means all rows 
-- sum(salary) over()

create database windows10db;
use windows10db;
create table employees(id int, name varchar(20), dept varchar(20) , salary int);

insert into employees values(1,'a','hr',100),(2,'b','hr',200),(3,'c','marketing',300),(4,'d','marketing',400),(5,'e','hr',500);

select sum(salary) from employees; -- aggreagate
select dept, sum(salary) from employees ; -- error (without group by koi aur column select nhi ho sakta

select dept, sum(salary) from employees group by dept; -- total salary by dept
select dept,name,sum(salary) from employees group by dept; -- errot => name is not in group by

select dept,name, sum(salary) from employees group by dept,name;

select * , (select sum(salary) from employees) from employees;

select *,sum(salary) over(), max(salary) from employees;

-- over() 
select *,sum(salary) over(), sum(salary) over()-salary as difference  from employees;

-- partisoned by => 
select *,sum(salary) over(), sum(salary) over(partition by dept)  from employees;

select *,sum(salary) over(partition by name) from employees;

CREATE TABLE employee_sales (
    sale_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    sale_date DATE,
    sales_amount DECIMAL(10,2)
);



INSERT INTO employee_sales
    (sale_id, employee_name, department, sale_date, sales_amount)
VALUES
    (1,  'Alice', 'Electronics', '2026-01-05', 1200.00),
    (2,  'Bob',   'Electronics', '2026-01-08', 1800.00),
    (3,  'Alice', 'Electronics', '2026-01-15', 1500.00),
    (4,  'Charlie','Electronics','2026-01-20', 1800.00),
    (5,  'Bob',   'Electronics', '2026-01-25', 2200.00),

    (6,  'David', 'Furniture',   '2026-01-03', 2500.00),
    (7,  'Emma',  'Furniture',   '2026-01-10', 1800.00),
    (8,  'David', 'Furniture',   '2026-01-18', 3000.00),
    (9,  'Frank', 'Furniture',   '2026-01-22', 1800.00),
    (10, 'Emma',  'Furniture',   '2026-01-28', 3200.00),

    (11, 'George','Clothing',    '2026-01-04', 900.00),
    (12, 'Helen', 'Clothing',    '2026-01-09', 1400.00),
    (13, 'George','Clothing',    '2026-01-16', 1100.00),
    (14, 'Helen', 'Clothing',    '2026-01-21', 1400.00),
    (15, 'Ian',   'Clothing',    '2026-01-27', 2000.00);

select * from employee_sales;

select employee_name,department,sales_amount,
sum(sales_amount) over(), sum(sales_amount) over(partition by department)  from employee_sales;

select employee_name,department,sales_amount,
avg(sales_amount) over(), avg(sales_amount) over(partition by department)  from employee_sales;

select employee_name,department,sales_amount,
min(sales_amount) over(), min(sales_amount) over(partition by department)  from employee_sales;

select employee_name,department,sales_amount,
count(sales_amount) over(), count(sales_amount) over(partition by department)  from employee_sales;


select employee_name, department, sales_amount,
sum(sales_amount) over(partition by employee_name) from employee_sales;

select employee_name, department,sales_amount ,
avg(sales_amount) over(partition by department) as dept_average, 
round(sales_amount-avg(sales_amount) over(partition by department))  from employee_sales;

select distinct department , sum(sales_amount) over(partition by department) as department_total,
sum(sales_amount) over(partition by employee_name) company_total from employee_sales;



