# Union

Select first_name, last_name, 'Old Man' As Label
From employee_demographics
Where age > 40 And gender = 'Male'
Union
Select first_name, last_name, 'Old Lady' As Label
From employee_demographics
Where age > 40 And gender = 'Female'
Union
Select first_name, last_name, 'Highly Paid Employee' As Label
From employee_salary
Where salary > 70000
Order By first_name, last_name;