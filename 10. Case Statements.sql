# Case Statements

Select first_name,
last_name,
age,
Case 
	When age <= 30 Then 'Young' 
    When age between 31 and 50 then 'Old'
    When age >= 50 Then "On Death's Door"
End As Age_Bracket
From employee_demographics
;	


# Pay Increase and Bonus
# < 50000 = 5%
# > 50000 = 7%
# Finance = 10%


Select first_name, last_name, salary,
Case
	When salary < 50000 Then salary * 1.05
	When salary > 50000 Then salary * 1.07
End As New_salary,
Case
	When dept_id = 6 Then salary *.1
End As Bonus
From employee_salary
;

Select *
From employee_salary;


Select *
From parks_departments




