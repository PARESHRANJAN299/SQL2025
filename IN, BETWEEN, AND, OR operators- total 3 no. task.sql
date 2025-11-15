TASK 1 – Beginner (5 Questions)
Fetch employees whose department is 'HR', 'IT', or 'Sales'.
select * from 
Employee_info2024
where department_name in ('HR', 'IT', 'Sales')
Fetch employees whose salary is between 30,000 and 50,000.
select * 
from Employee_info2024
where salary between 30000 AND 50000;
Fetch employees whose location is 'Delhi' or 'Mumbai'.
select * from Employee_info2024
where location in ('Delhi', 'Mumbai');

Fetch employees whose salary is greater than 40,000 AND location = 'Bangalore'.
select
employee_name, salary, department_name
from Employee_info2024
where salary > 40000 AND location = 'Bangalore';
Fetch employees whose department is NOT IN ('IT', 'HR').
select * from Employee_info2024
where not department_name in ('IT', 'HR');


TASK 2 – Intermediate (7 Questions)

Fetch employees whose salary is BETWEEN 50,000 AND 70,000 AND department = 'Product'.
select * from Employee_info2024
where salary between 50000 and 70000  AND department_name = 'Product'
Fetch employees whose location is 'Chandigarh' OR 'Odisha' AND salary > 45,000.
select * from Employee_info2024
where location in ('Chandigarh',  'Odisha') AND salary > 45000;
Fetch employees whose salary > 60,000 OR department = 'Sales'.
select * from Employee_info2024
where salary > 60000 OR department_name = 'sales'
Fetch employees whose department is IN ('IT','Product','Sales') AND salary < 55,000.
select * from Employee_info2024
where department_name in ('IT','Product','Sales') AND salary <50000;
Fetch employees whose location NOT IN ('Delhi','Mumbai') AND salary > 40,000.
SELECT * FROM Employee_info2024
where location NOT IN ('Delhi','Mumbai') AND salary < 40000;
Fetch employees whose salary BETWEEN 30,000 AND 50,000 OR location = 'Bangalore'.
SELECT * FROM Employee_info2024 
WHERE salary BETWEEN 30000 AND 50000 OR location = 'Bangalore'
Fetch employees whose department = 'Technology' OR department = 'Product' AND salary > 50,000.
SELECT * FROM Employee_info2024
WHERE department_name IN ('Technology', 'Product') AND salary >50000;

TASK 3 – Advanced Beginner (8 Questions)

Fetch employees whose manager_name IN ('Paresh R','Ramesh') AND salary BETWEEN 40,000 AND 60,000.
SELECT * FROM Employee_info2024
WHERE mANAGER_NAME IN ('Paresh R','Ramesh') AND salary  BETWEEN 40000 AND 60000;
Fetch employees whose location = 'Delhi' OR location = 'Bangalore' AND salary < 55,000.
SELECT * FROM Employee_info2024
WHERE (location = 'DELHI' OR location = 'BANGALORE' ) AND salary <55000
Fetch employees whose salary NOT BETWEEN 30,000 AND 50,000 AND department = 'Sales'.
SELECT * FROM Employee_info2024
WHERE department_name IN ('SALES') AND SALARY BETWEEN 30000 AND 50000 ;
Fetch employees whose department IN ('IT','HR') OR salary > 60,000.
SELECT * FROM Employee_info2024
WHERE department_name IN ('IT', 'HR') OR salary > 60000
Fetch employees whose location NOT IN ('Chandigarh','Punjab') OR salary < 45,000.
SELECT *  FROM Employee_info2024
WHERE location NOT IN ('Chandigarh','Punjab') or salary < 45000;
Fetch employees whose salary BETWEEN 35,000 AND 55,000 OR manager_name = 'Himani'.
SELECT * FROM Employee_info2024 
WHERE SALARY BETWEEN 35000 AND 55000 OR MANAGER_NAME = 'HIMANI'
Fetch employees whose department NOT IN ('Product','Sales') AND salary > 40,000.
SELECT * FROM Employee_info2024
WHERE department_name NOT IN ('Product','Sales') AND salary <40000
Fetch employees whose salary BETWEEN 40,000 AND 60,000 AND (department = 'IT' OR location = 'Delhi').
SELECT * FROM Employee_info2024
WHERE salary BETWEEN 40000 AND 60000 AND (department_name = 'IT' OR location = 'DELHI')