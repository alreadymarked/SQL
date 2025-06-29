# Group by

Select *
From employee_demographics;

Select gender, avg(age), max(age), min(age), count(age)
From employee_demographics
Group by gender
; 

# Order By
Select *
From employee_demographics
Order by 5, 4
;






Select occupation
From employee_salary
Group by occupation
; 



