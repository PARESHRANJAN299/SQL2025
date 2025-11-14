create database HR_DB1;
use HR_DB1;

CREATE TABLE Employee_info2025 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(20),
    joinee_date DATE,
    location_name VARCHAR(30),
    manager_name VARCHAR(40),
    salary DECIMAL(10,2),
    employee_deskno INT UNIQUE
);

INSERT INTO Employee_info2025 
VALUES 
(111, 'Pankaj', 'Technology', '2024-09-29', 'Delhi', 'Ramesh', 45000.00, 1),
(112, 'Ramesh', 'IT Manager', '2016-09-29', 'Mumbai', 'Paresh R', 30000.00, 2),
(113, 'Pupu Rout', 'Engineer', '2022-09-29', 'Odisha', 'Himani', 45000.00, 3),
(114, 'Raj Sam', 'Engineer', '2018-09-29', 'Bangalore', 'Paresh R', 45000.00, 5),
(115, 'Rakesh K', 'Technology', '2016-09-29', 'Punjab', 'Punam Gurung', 65000.00, 6),
(116, 'Vinod Tanwar', 'Sales', '2024-09-29', 'Chandigarh', 'Paresh R', 64000.00, 7),
(117, 'Vivek Sahu', 'Product', '2023-09-29', 'Kolkata', 'Paresh R', 33000.00, 8);
SELECT * FROM Employee_info2025;

/*select*/

SELECT * from Employee_info2025
select
employee_name, department_name
from Employee_info2025;

/*select distinct*/
SELECT  DISTINCT(department_name) from Employee_info2025;
select distinct (employee_name)from Employee_info2025;
select distinct (location_name) from Employee_info2025;
select distinct location_name from Employee_info2025;
select distinct (department_name) from Employee_info2025;
select distinct employee_name from Employee_info2025;

/* distinct with multiple columns*/
select distinct employee_name, department_name
from Employee_info2025;

select distinct 
manager_name, employee_name
from Employee_info2025

/*SQL WHERE Clause --- Text Fields vs. Numeric Fields */ 

select employee_name 
from Employee_info2025
where department_name = 'Technology';

select 
employee_name, manager_name
FROM Employee_info2025
where department_name = 'technology'

select * from Employee_info2025
where employee_deskno = 01;

/* Operators in The WHERE Clause */
select 
employee_name, salary
from Employee_info2025
where salary > 45000.00;

select 
employee_name, salary
from Employee_info2025
where salary <= 45000.00;

select 
employee_name, salary
from Employee_info2025
where salary  between 45000.00 AND  65000.00

select 
* 
From Employee_info2025
where salary between 45000.00 and 65000.00;

select * 
from Employee_info2025
where location_name in ('Punjab', 'Delhi');

select * from 
Employee_info2025
where employee_name in ('Pankja', 'Rakesh K');

select * from 
Employee_info2025 where city in ('barrlin', 'maxic');

select * from 
Employee_info2025
where  department_name in ('IT manager');

/*=	Equal */

select
employee_name, salary
from Employee_info2025
where salary = 45000.00;
select 
employee_name, salary
from 
Employee_info2025
where salary = 45000.00

select 
employee_deskno, employee_name
from Employee_info2025
where employee_deskno in (01,02,03);

--  >	Greater than 
select 
employee_name, salary
from
Employee_info2025
where salary > 30000;

select 
employee_name, salary
FROM Employee_info2025 
WHERE salary > 45000;

SELECT 
employee_deskno, employee_name
FROM Employee_info2025
WHERE employee_name = 'RAMESH'

--<> | Not equal

SELECT 
employee_id, employee_name
FROM Employee_info2025
WHERE employee_name <> 'RAMESH'

SELECT 
employee_id, employee_name
FROM
Employee_info2025
where employee_id <> 111;

-->=	Greater than or equal
select 
employee_id, employee_name
from Employee_info2025
where employee_id >= 114;

--<=	Less than or equal

select employee_id, employee_name, salary
from 
Employee_info2025
where salary <= 45000.00

--BETWEEN	Between a certain range

--The BETWEEN operator works from lower value → higher value.
select 
employee_deskno, employee_id, employee_name, salary
from Employee_info2025
where salary between 30000.00 and 45000.00;

/* This will return no rows, because SQL checks:
salary ≥ 45000 AND salary ≤ 30000
(which can never be true). */

⚙️ How SQL Actually Works
WHERE column BETWEEN value1 AND value2
“Small to Big” — Always write the smaller number first in BETWEEN.
BETWEEN [lower_limit] AND [upper_limit]

--LIKE	Search for a pattern

select 
employee_deskno, employee_id, employee_name
from 
Employee_info2025
WHERE employee_name LIKE 'P%'

SELECT 
employee_deskno, employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name LIKE '%P'

SELECT 
employee_deskno, employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name LIKE '__P%'

SELECT 
employee_deskno, employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name LIKE '%S_'

SELECT
employee_deskno, employee_id, employee_name
FROM Employee_info2025
where employee_id LIKE '__1%'

SELECT 
employee_deskno, employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name LIKE '__N___%'

→ Finds names ending with “esh”

SELECT 
employee_deskno, employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name LIKE  '%esh'

select 
employee_deskno, employee_id, employee_name
from Employee_info2025 
where employee_name like '%out'

select 
employee_deskno, employee_id, employee_name
from Employee_info2025 
where employee_id LIKE '%14'

SELECT 
employee_id, employee_name
FROM Employee_info2025
WHERE employee_name LIKE '%ROUT'

→ Starts with R and ends with h

SELECT 
employee_id, employee_name
FROM Employee_info2025
WHERE employee_name LIKE 'R%H'

→ Finds names that are exactly 4 letters long

SELECT 
employee_id, employee_name
FROM Employee_info2025
WHERE employee_name LIKE '_'

is case-insensitive by default,
but in MySQL or PostgreSQL, you’d use:

7️⃣ Find names that do not match a pattern

SELECT 
employee_id, employee_name
FROM 
Employee_info2025
WHERE employee_name NOT LIKE 'P%'

8️⃣ Find names with spaces (two-word names)

SELECT
employee_id, employee_name
FROM 
Employee_info2025
where employee_name like '% %';

→ Finds names ending with ‘n’ (e.g., Rohan)

select 
employee_name
from employee_info2025
where employee_name like '%n'

select 
employee_deskno, employee_id, employee_name
from Employee_info2025
where employee_name like '% %'

select employee_id, employee_name
from Employee_info2025
where employee_name like 'P%' OR employee_name like 'R%';

select employee_id, employee_name
from Employee_info2025
where employee_id like '1%' OR employee_name like '%4';

🔟 Special characters
If your data has % or _ inside the actual value, you can escape it:

select 
employee_id, employee_name
from Employee_info2025
where employee_name like '%\%%' ESCAPE '\'; 

SELECT 
employee_id, employee_name
FROM 
Employee_info2025
WHERE
employee_name LIKE '%-%%' escape '-';

select 
employee_id, employee_name
from Employee_info2025
where employee_name like '%~_%' escape '~';

/*The SQL ORDER BY */

select 
employee_name, salary
from Employee_info2025
ORDER BY salary desc;

SELECT 
employee_name, salary
FROM 
Employee_info2025
ORDER BY salary ASC;

--All Conditions Must Be True -- AND

SELECT 
employee_id, employee_name, department_name
FROM 
Employee_info2025
WHERE department_name = 'Product' OR employee_name = 'Ramesh'

SELECT 
employee_id, employee_name, department_name
FROM 
Employee_info2025
WHERE department_name = 'Product' AND employee_name = 'Ramesh'

--Combining AND and OR

select
employee_id, employee_name, department_name
FROM 
Employee_info2025
WHERE department_name = 'Product' AND (employee_name LIKE 'P%' OR employee_name LIKE 'R%');
 

--The IS NOT NULL Operator

select 
* 
from 
Employee_info2025
where employee_name is NOT null;
--Tip: Always use IS NULL to look for NULL values.
select
COUNT(employee_name)
FROM Employee_info2025;

--SQL UPDATE Statement
DML- Data Maniculation Language - Insert, Select, update, drop
DDL- Data Defination Language - Create, Delete, Alter, Truncet
DCL - Data Control Language : 
TCL- Transaction control Language: ROLLBACK, grent, commit, savepoint

update Employee_info2025
set employee_name = 'Binita Prabhu' where employee_id = 113;

update Employee_info2025
set employee_name = 'Binita Prabhu'
where employee_id = 114;

update Employee_info2025
set employee_name = 'Rama Dvi' 
where employee_id = 114
 
select * from Employee_info2025

DELETE FROM Employee_info2025
WHERE employee_id = 117;

SELECT TOP(3)employee_id, employee_name FROM Employee_info2025
ORDER BY employee_id ASC;

--SQL DELETE Statement - it delete drow from the table not all rows only specipic, and  , DROP - removed the table from the database, Tuncate
--delete the data but the stacture will still appear


CREATE TABLE Employee_info2024 (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary INT,
    location VARCHAR(50)
);

USE HR_DB1

INSERT INTO Employee_info2024(employee_id, employee_name, department_name, salary, location) VALUES
(101, 'Amit Sharma', 'HR', 55000, 'Bangalore'),
(102, 'Rohit Singh', 'HR', 60000, 'Mumbai'),
(103, 'Priya Verma', 'HR', 52000, 'Hyderabad'),
(104, 'Neha Patel', 'HR', 58000, 'Bangalore'),
(105, 'Karan Mehta', 'HR', 62000, 'Delhi'),
(106, 'Riya Das', 'Finance', 70000, 'Mumbai'),
(107, 'Sameer Khan', 'IT', 80000, 'Hyderabad'),
(108, 'Arjun Reddy', 'HR', 54000, 'Chennai'),
(109, 'Megha Nair', 'HR', 56000, 'Bangalore'),
(110, 'Suresh Kumar', 'IT', 78000, 'Delhi'),
(111, 'Tanvi Joshi', 'HR', 61000, 'Mumbai'),
(112, 'Vikram Shetty', 'Marketing', 65000, 'Bangalore'),
(113, 'Shalini Gupta', 'HR', 53000, 'Hyderabad'),
(114, 'Deepak Kumar', 'IT', 85000, 'Chennai'),
(115, 'Kavita Rao', 'HR', 59000, 'Delhi'),
(116, 'Nikhil Jain', 'HR', 57000, 'Pune'),
(117, 'Anjali Mishra', 'Finance', 72000, 'Mumbai'),
(118, 'Harish Yadav', 'HR', 60000, 'Chennai'),
(119, 'Pooja Sharma', 'HR', 61000, 'Bangalore'),
(120, 'Rahul Verma', 'HR', 63000, 'Pune');

SELECT * FROM employee_info2024

Q1. Write a query to fetch all employee names and department names from the table.
select employee_name, department_name from employee_info2024
Q2. Write a query to fetch distinct department names from the Employee_info2025 table.
select distinct( department_name)
from Employee_info2024
Q3. Write a query to get all employees who work in the HR department.
select 
employee_name, department_name
From Employee_info2024
where department_name = 'HR';
Q4. Write a query to list employees ordered by salary in descending order.
select 
employee_id, employee_name, salary
from Employee_info2024
ORDER BY Salary DESC;
Q5. Write a query to select employees whose salary is between 55,000 and 65,000.
select
employee_name, salary
from Employee_info2024
where salary between 55000 AND 65000;

-----------------------------------------------------
📘 Task 2 — Intermediate Level (10 SQL Questions)

Q1. Write a query to fetch all employees whose name starts with 'A' or 'R'.
SELECT employee_name
FROM Employee_info2024
where employee_name like 'A%' OR employee_name like 'R%';
Q2. Write a query to get employees who are not from the HR department.

SELECT 
EMPLOYEE_NAME, Department_name
FROM Employee_info2024
where not department_name = 'HR'
Q3. Write a query to get all employees whose salary is NOT between 55,000 and 70,000.

SELECT 
employee_name, salary
FROM Employee_info2024
WHERE NOT salary BETWEEN 55000 AND 70000;
Q4. Write a query to find employees who work in Mumbai and have a salary greater than 60,000.
 SELECT 
 employee_name, location, salary
 FROM Employee_info2024
 WHERE location IN ('MUMBAI') AND salary > 60000;
Q5. Write a query to fetch employees whose department is HR AND salary is greater than 58,000.
SELECT 
employee_name, department_name, salary
FROM Employee_info2024
WHERE department_name IN ('hr') AND salary > 58000;
Q6. Write a query to fetch employees whose location is not Bangalore.
SELECT 
employee_name, location
FROM Employee_info2024
WHERE NOT location IN ('bANGALORE');
Q7. Write a query to display unique locations in ascending order.
SELECT DISTINCT (LOCATION)
FROM Employee_info2024
ORDER BY location asc;
Q8. Write a query to fetch the top 3 highest-paid employees.
SELECT TOP 3 salary, employee_name
FROM Employee_info2024
ORDER BY salary DESC;
Q9. Write a query to fetch employees whose names end with 'a'.
SELECT 
employee_name
FROM Employee_info2024
WHERE employee_name LIKE 'a%';
Q10. Write a query to fetch all employees where the employee_name contains 'sh' anywhere in the name.

SELECT 
employee_id, employee_name
FROM Employee_info2024
WHERE employee_name LIKE '%SH%'


📘 Task 3 — Advanced Level (15 SQL Questions)

(Still using only SELECT, DISTINCT, WHERE, ORDER BY, AND, OR, NOT, BETWEEN, NULL, UPDATE, DELETE, INSERT INTO, TOP)
Q1. Write a query to fetch employees who work in HR or Finance, but not in IT.
select 
employee_name, department_name
from employee_info2024
where department_name in('HR', 'Finance');

Q2. Write a query to fetch all employees whose salary is greater than 60,000 AND location is Bangalore or Chennai.
SELECT 
employee_name, location, salary
from Employee_info2024
where location in ('Bangalore', 'Chennai') AND SALARY > 60000;

Q3. Write a query to list employees whose department_name contains the letter ‘a’.
SELECT 
employee_name, department_name
FROM Employee_info2024
WHERE department_name LIKE '%a%';
Q4. Write a query to find employees whose name has exactly 5 characters.
select 
employee_name
from Employee_info2024
where employee_name like '_____'
Q5. Write a query to fetch employees where the second letter of employee_name is 'r'.
select
employee_id, employee_name
from Employee_info2024
where employee_name like '_r%';
Q6. Write a query to get employees whose salary is between the minimum and maximum salary of the HR department.
--MIN and MAX funcation - not learned still now, so now we will skip for this.
Q7. Write a query to fetch employees in descending order of salary but only for employees in Delhi.
select 
employee_name, salary, location
from Employee_info2024
WHERE location in ('Delhi')
order by salary DESC;
Q8. Write a query to return employees whose name starts with 'S' AND salary < 60,000.
select 
employee_name, salary
from Employee_info2024
where employee_name like 'S%' AND salary < 60000;

Q9. Write a query to fetch employees whose department_name is NULL.
SELECT 
employee_name, department_name
FROM 
Employee_info2024
WHERE department_name IS NULL;
Q10. Write a query to fetch employees whose location is NOT 'Mumbai' AND salary > 55,000.
SELECT employee_name, location, salary
FROM Employee_info2024
WHERE location  NOT IN ('MUMBAI') AND salary > 55000; 
Q11. Write a query to insert a new employee:

INSERT INTO employee_info2024 values
(121, 'Chirag Malhotra', 'HR', 62000, 'Delhi');

insert into employee_info2024 values 
(122, 'Chirag Malhotra', 'Banking', 62000, 'Delhi');
Q12. Write a query to update salary = 75000 for employee ID = 110.
update Employee_info2024
set salary = 75000
where employee_id = 110;
update Employee_info2024
set salary = 65000
where employee_id = 114;

Q13. Write a query to delete the employee whose employee_id = 103.
delete from Employee_info2024
where employee_id = 114
Q14. Write a query to fetch the TOP 5 employees with the lowest salaries.

select top 5 employee_name, salary
from Employee_info2024
order by salary ASC;
Q15. Write a query to fetch employees  salary is NOT NULL and department_name starts with 'M'.

SELECT 
employee_name, salary
FROM Employee_info2024
WHERE salary is not Null AND  department_name like 'M%'