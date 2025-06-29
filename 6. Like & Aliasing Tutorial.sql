# Like & Aliasing

Select *
From employee_demographics
Order by age Desc
Limit 2, 1;

Select gender, Avg(age) as avg_age
From employee_demographics
Group by gender
Having avg_age > 40;
