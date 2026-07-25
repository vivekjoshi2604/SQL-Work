-- join with group by 
use vivek;
select d.dept_name, sum(budget) from projects as p join
departments as d 
on p.dept_id  = d.dept_id group by d.dept_name;

-- Q. find the dept name and the total employess working in that depratment
select d.dept_name, count(e.emp_id) from departments as d join
employees as e on d.dept_id = e.dept_id group by d.dept_name having d.d;


-- having and where clause can both used with group by , 
-- where => is used to filter the data from column , it is independent
-- having => is also used for filter , it is dependent on group by , if we have agg function with select statement,use having 