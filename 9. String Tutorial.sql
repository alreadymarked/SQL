# String

Select length('skyfall');

Select first_name, length(first_name)
From employee_demographics
Order by 2;

Select Upper('Sky');
Select Lower('Sky');

Select first_name, upper(first_name)
From employee_demographics;

Select trim('         sky         ');

Select first_name, 
left(first_name, 4) as 'left', 
right(first_name, 4) as 'right',
substring(first_name, 3, 2) as shortcut,
birth_date,
substring(birth_date, 6, 2) AS birth_month
From employee_demographics;


Select first_name, REPLACE(first_name,'a','z')
From employee_demographics;

Select locate('n','Alexander');

Select first_name, locate('an', first_name)
From employee_demographics;

Select first_name, last_name,
concat(first_name,' ', last_name) as full_name
From employee_demographics;


