# Subqueries

Select *
From employee_demographics
Where employee_id In 
				(Select employee_id
					From employee_salary
					Where dept_id = 1)
;

Select first_name, salary, 
(Select avg(salary)
From employee_salary)
From employee_salary
;

Select gender, avg(age), max(age), min(age), count(age)
From employee_demographics
Group by gender
;

Select avg(avg_age)
From
(Select gender, 
avg(age) as avg_age, 
max(age) as max_age, 
min(age) as min_age, 
count(age) as count_age
From employee_demographics
Group by gender) as agg_table
;







