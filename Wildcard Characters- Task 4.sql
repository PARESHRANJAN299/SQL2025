select * from employee_info2024

✅ Task 3 — Advanced Level (15 Questions)

Focus: Ranges [ ], exclusions [^ ], complex patterns.

Q1. Fetch employees whose name starts with any letter between A–M.
select 
employee_name
from Employee_info2024
where employee_name LIKE '[A-M]%'
Q2. Fetch employees whose name starts with a consonant (NOT vowels).
SELECT 
employee_name
FROM Employee_info2024
WHERE employee_name NOT LIKE '[aeiou]%'
Q3. Fetch employees whose name ends with any digit 0–9.
SELECT employee_name FROM Employee_info2024 WHERE employee_name LIKE '%[0-9]';
Q4. Fetch employees whose name contains any vowel at the 3rd position.
SELECT employee_name FROM Employee_info2024 WHERE employee_name like '___[aeiou]%'
Q5. Fetch employees whose department starts with M, N, or P.
select 
employee_name
from Employee_info2024
where department_name like '[MNP]%'
Q6. Fetch employees whose name does NOT start with A, E, I, O, U.
SELECT 
employee_name
from Employee_info2024
where employee_name not like '[AEIOU]%';
Q7. Fetch employees whose email starts with a number.
select 
employee_name
from Employee_info2024
where employee_email like '[0-9]%'
Q8. Fetch employees whose job title contains either 'dev' or 'eng'.
select 
employee_name
from Employee_info2024
where job title like '%dev%' OR job title like '%eng%'
Q9. Fetch employees whose name has at least one uppercase letter in the middle.
Skip
Q10. Fetch employees with names ending in special characters like %, $, # (if data supports).
SELECT 
employee_name
FROM Employee_info2024
where employee_name like '%[%$#]'
Q11. Fetch employees whose name has 'a' in the 2nd or 4th position.
SELECT 
employee_name
FROM Employee_info2024
where employee_name like '_a%' OR employee_name like '___a%'
Q12. Fetch employees whose location starts with ‘B’ and second character is not a vowel.
select 
employee_name, location
from Employee_info2024
where location like 'B[^VEIOU]%';
Q13. Fetch employees whose name contains exactly one vowel.
SELECT 
employee_name
FROM Employee_info2024
WHERE employee_name LIKE  '%[AEIOU]%' AND
employee_name NOT like '%[AEIOU]%[AEIOU]%';

Q14. Fetch employees whose name contains only alphabets (no digits).
SELECT 
employee_name
FROM Employee_info2024
WHERE employee_name LIKE '%[a-z]%' and employee_name not like '%[0-9]%';

Q15. Fetch employees with patterns matching ‘M%R%T’ (e.g., “M…R…T”).
select * from Employee_info2024
where employee_name like 'M%R%T';


2️⃣ Areas to Improve – Focus Areas
⚠ Pattern Matching – Advanced
Sometimes confusion occurs with negation [^ ] vs NOT LIKE
Exact positional matches (like “exactly one vowel”, “2nd or 4th character”) need more practice
Escaping special characters (%, _) using ESCAPE keyword is new
Tip: Create a small dummy table with 10–15 names and practice queries with all possible patterns.


TASK 1 – Beginner (5 Questions)
Find the total number of employees in the table.
select count (*) from employee_info2024;
Find the highest salary among all employees.
select MAX(SALARY) FROM Employee_info2024;
Find the lowest salary among all employees.
SELECT MIN(SALARY) FROM Employee_info2024;
Find the average salary of all employees.
SELECT AVG(SALARY) FROM Employee_info2024;
Find the sum of salaries of all employees.
SELECT SUM(SALARY) FROM Employee_info2024;


TASK 2 – Intermediate (7 Questions)

Find the total number of employees in the 'hr' department.
SELECT COUNT(employee_name) as Total_HR_employee
FROM Employee_info2024
where department_name in ('HR');
Find the highest salary of employees in the 'IT' department.
select MAX(salary) as Employee_Highest_salary
from  Employee_info2024
where department_name in ('IT');
Find the lowest salary of employees whose salary is NOT NULL.
select MIN(salary) as minimum_salary 
from Employee_info2024
where salary is Not null; 
Find the average salary of employees whose location is 'Delhi'.
SELECT AVG(SALARY) AS AVG_EMPLOYEE_SALARY FROM Employee_info2024
WHERE location IN ('DELHI');
Find the sum of salaries of employees whose salary is greater than 50,000.
select SUM(salary) as total_salary
from Employee_info2024
where salary > 50000;
wihtout group by these quesation are not possible to address.
Find the total number of employees whose department is NOT NULL.
select COUNT(*)
from Employee_info2024
where department_name is not null; 
Find the average salary of employees excluding salaries below 30,000.
select AVG(salary)
from Employee_info2024
where salary >  30000;


TASK 3 – Advanced Beginner (8 Questions)

Find the total number of employees whose manager name is 'Paresh R'.
SELECT  count (employee_name) as total_employee 
from Employee_info2024
where manager_name in ('Paresh R');
Find the maximum salary among employees in 'Product' or 'Technology' departments.
select MAX(salary) as maximum_salary
from Employee_info2024
where department_name in ('Product', 'Technology');
Find the minimum salary among employees in 'Bangalore'.
SELECT MAX(SALARY) AS HIGH_SALARY_EMPL_BANGALORE
FROM Employee_info2024
WHERE location IN ('BANGALORE');
Find the sum of salaries for employees whose salary is between 40,000 and 60,000.
SELECT SUM(SALARY)
FROM Employee_info2024
WHERE salary BETWEEN 40000 AND 60000;
Find the average salary of employees excluding NULL salaries.
SELECT AVG (SALARY)
FROM Employee_info2024
WHERE SALARY IS NOT NULL;
Find the total number of employees whose name starts with 'P'.
SELECT COUNT(employee_name)
from Employee_info2024
where employee_name like 'P%';
Find the highest salary among employees not in 'HR' or 'IT' departments.
select MAX(salary)
from Employee_info2024
where department_name not in ('HR','IT');
Find the sum of salaries of the top 5 highest-paid employees.

SELECT SUM(SALARY) as highest_salary
FROM Employee_info2024
order by salary desc;
