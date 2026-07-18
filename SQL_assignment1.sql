create database vivek;
USE vivek;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    City VARCHAR(30),
    Gender CHAR(1),
    Salary INT,
    JoinDate DATE,
    Role VARCHAR(30)
);

INSERT INTO Employees
(EmpID, Name, Dept, City, Gender, Salary, JoinDate, Role)
VALUES
(1,'Alice','HR','New York','F',55000,'2019-03-15','Manager'),
(2,'Bob','IT','Chicago','M',72000,'2020-07-22','Developer'),
(3,'Carol','Finance','New York','F',68000,'2018-11-01','Analyst'),
(4,'David','HR','Chicago','M',52000,'2021-01-10','Executive'),
(5,'Eve','IT','Houston','F',85000,'2017-06-30','Senior Dev'),
(6,'Frank','Finance','New York','M',74000,'2019-09-14','Manager'),
(7,'Grace','Marketing','Chicago','F',60000,'2022-02-28','Executive'),
(8,'Hank','IT','Houston','M',90000,'2016-04-05','Lead'),
(9,'Ivy','HR','New York','F',58000,'2020-12-19','Executive'),
(10,'Jack','Finance','Chicago','M',65000,'2021-03-07','Analyst'),
(11,'Karen','Marketing','Houston','F',62000,'2018-08-23','Manager'),
(12,'Leo','IT','New York','M',78000,'2019-11-11','Developer'),
(13,'Mia','HR','Chicago','F',53000,'2022-05-16','Executive'),
(14,'Nate','Finance','Houston','M',71000,'2017-12-02','Manager'),
(15,'Olivia','Marketing','New York','F',66000,'2020-06-18','Analyst'),
(16,'Paul','IT','Chicago','M',82000,'2018-03-27','Senior Dev'),
(17,'Quinn','HR','Houston','F',57000,'2021-09-09','Executive'),
(18,'Rita','Finance','New York','F',76000,'2019-01-25','Lead'),
(19,'Sam','Marketing','Chicago','M',63000,'2022-07-14','Executive'),
(20,'Tina','IT','Houston','F',88000,'2016-10-31','Lead'),
(21,'Uma','HR','New York','F',60000,'2020-04-03','Manager'),
(22,'Victor','Finance','Chicago','M',69000,'2018-07-19','Analyst'),
(23,'Wendy','Marketing','Houston','F',64000,'2021-11-27','Manager'),
(24,'Xander','IT','New York','M',95000,'2015-02-14','Architect'),
(25,'Yara','HR','Chicago','F',54000,'2022-09-08','Executive'),
(26,'Zoe','Finance','Houston','F',73000,'2019-05-21','Manager'),
(27,'Aaron','Marketing','New York','M',67000,'2020-10-15','Analyst'),
(28,'Bella','IT','Chicago','F',80000,'2017-08-06','Senior Dev'),
(29,'Carlos','HR','Houston','M',56000,'2021-06-24','Executive'),
(30,'Diana','Finance','New York','F',77000,'2018-02-09','Lead');

-- Q1. Find the total number of employees in each department.
select dept,count(empid) as totalemployees from employees group by dept;
-- Q2. Find the total salary paid per department.
select dept,sum(salary) as totalsalary from employees group by dept;
-- Q3. Find the average salary in each city.
select city, avg(salary) from employees group by city;
-- Q4. Find the maximum salary in each department.
select dept, max(salary) from employees group by dept;
-- Q5. Find the minimum salary in each department.
select dept, min(salary) from employees group by dept;
-- 6
select dept,count(*)  as employeecount from employees group by dept order by count(*) desc;
-- 7
select city, sum(salary) as totalsalary from employees group by city order by totalsalary ;
-- 8
select name,dept,salary from employees order by dept, salary desc; 
-- 9
select name,city,joindate from employees order by city, joindate;
-- 10 
select name,role,salary from employees order by role, salary ;
-- 11
select dept, count(name) as empcount from employees group by dept having empcount > 7 order by dept;
-- 12
select dept, avg(salary) as avgsalary from employees group by dept having avgsalary >65000;
-- 13
select city, sum(salary) as totalsalary from employees group by city having totalsalary > 65000;
-- 14
select dept, max(salary) as maxsalary from employees group by dept having maxsalary >=80000;
-- 15
select role, count(role) as rolecount from employees group by role having rolecount > 5 order by role;
-- 16
select avg(salary) as companyavgsalary from employees;
-- 17
select dept,count(gender) as femalecount from employees where gender = 'f' group by dept order by dept;
-- 18
select max(salary) as highest , min(salary) as lowest from employees;
-- 19
select sum(salary) as totalsalary from employees where joindate > '2019-01-01';
-- 20
select gender, avg(salary) as avgsalary from employees group by gender;
-- 21
select dept,city, count(*) as empcount from employees group by dept,city order by dept;
-- 22
select dept,gender,avg(salary) as avgsalary from employees group by dept,gender order by dept;
-- 23
select city,role, sum(salary) as totalsalary from employees 
group by city,role order by city, totalsalary desc;
-- 24 
select dept,role, count(*) as empcount from employees 
group by dept,role having count(*) >1 order by dept,role;
-- 25
select city,gender,max(salary) as maxsalary from employees group by city,gender order by city;
-- 26
select dept,avg(salary) as avgsalary from employees 
group by dept having avgsalary >60000 order by avgsalary desc;
-- 27
select city,dept,count(*) as empcount from employees 
group by city,dept order by empcount desc,city , dept;
-- 28
select role,sum(salary) as totalsalary from employees group by role having totalsalary >300000 order by totalsalary ;
-- 29
select upper(name) as empname, year(joindate) as joinyear from employees order by joinyear;
-- 30
select year(joindate) as joinyear, count(*) AS joiner from employees group by year(joindate) order by joinyear;








