# Window

Select gender, Avg(salary) as avg_salary
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
Group by gender
;


Select dem.first_name, dem.last_name, gender, Avg(salary) Over(Partition by gender)
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;



Select dem.first_name, dem.last_name, gender, 
Sum(salary) Over(Partition by gender Order by dem.employee_id) As rolling_total
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;


Select dem.employee_id, dem.first_name, dem.last_name, salary, 
row_number() over(Partition by gender Order by salary desc) as row_num,
rank() over(Partition by gender Order by salary desc) as rank_num,
dense_rank() over(Partition by gender Order by salary desc) as dense_rank_num
From employee_demographics dem
Join employee_salary sal
	On dem.employee_id = sal.employee_id
;	






