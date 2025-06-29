# Joins

Select *
From employee_demographics
;

Select *
From employee_salary
;

Select dem.employee_id, age, occupation
From employee_demographics As dem
Inner Join employee_salary As sal
	On dem.employee_id = sal.employee_id
;


# Outer Join

Select *
From employee_demographics As dem
Right Join employee_salary As sal
	On dem.employee_id = sal.employee_id
;


# Self Join

SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS emp_name,
emp2.first_name AS first_name_emp,
emp2.last_name AS last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


# Joining multiple tables together

Select *
From employee_demographics As dem
Inner Join employee_salary As sal
	On dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments
;

