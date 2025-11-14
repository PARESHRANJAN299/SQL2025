/*tasks only using SELECT DISTINCT, WHERE, ORDER BY, AND, OR, NOT, NULL, TOP, 
I’ve created 20 questions divided into 3 tasks. These focus on basic to intermediate SQL conditions, 
no advanced functions like MIN/MAX, LIKE patterns, or joins yet.*/

TASK 1 – Beginner (5 Questions)
Fetch the distinct department names from Employee_info2025.
select
distinct department_name
from Employee_info2024;
Fetch all employees whose salary is NOT NULL.
select 
employee_name
from Employee_info2024
where salary is not null;
Fetch top 3 highest-paid employees.
select top 3 salary
from Employee_info2024
order by salary DESC;
Fetch employees whose department is 'HR' AND salary > 50,000.
select 
employee_name,department_name, salary
from Employee_info2024
where department_name in ('HR') and salary >50000;

Fetch employees whose location is NOT 'Mumbai'.

select
employee_name, location
from 
Employee_info2024
where not location = 'mumbai';

select
employee_name, location
from 
Employee_info2024
where location not in ('mumbai');

TASK 2 – Intermediate (7 Questions)
Fetch employees whose salary is between 30,000 and 60,000.
select
employee_name, salary
from Employee_info2024
where salary between 30000 and 60000;

Fetch employees whose manager name is 'Paresh R' OR salary > 60,000.
select
employee_name
from Employee_info2024
where manager = 'paresh R' OR salary > 60000;
Fetch distinct locations where employees work.
select distinct location
from Employee_info2024
Fetch employees whose department is NOT 'IT' AND salary > 40,000.
select
department_name, salary
from Employee_info2024
where department_name not in ('IT') AND salary > 40000
Fetch the top 5 employees with the lowest salary.
select top 5 employee_name, salary
from Employee_info2024
order by salary desc;

Fetch employees whose department is NULL.
select 

department_name, employee_name
from Employee_info2024
where department_name = 'null';

department_name, employee_name
from Employee_info2024
where department_name is null;

Fetch employees whose name is NOT 'Ramesh'.

select * from Employee_info2024
where not employee_name =  'Ramesh';

select * from Employee_info2024
where employee_name not in ('Ramesh');