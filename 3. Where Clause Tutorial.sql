# Where Clause

Select *
from parks_and_recreation.employee_salary
Where first_name = 'Leslie';

Select *
From parks_and_recreation.employee_salary
Where salary >= 50000
;

Select *
From employee_demographics
Where (first_name = 'Leslie' And age = 44) Or age  > 50
;

# Like Statement
# % and _
Select *
From employee_demographics
Where birth_date LIKE '198%'
;








