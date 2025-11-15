--SQL GROUP BY Statement
--GROUP BY Syntax

/*'SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);' */
--The following SQL statement lists the number of customers in each country:

/*SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;*/


--✅ 25 SQL GROUP BY Practice Questions

--(Use your table: Employee_info2024)
--🔹 EASY (1–10)
--Find the count of employees in each department.
select COUNT(employee_name), department_name
from Employee_info2024
group by department_name;
--Find the average salary of each department.
select AVG(salary), department_name from  Employee_info2024 GROUP BY department_name;
--Find the sum of salary by department.
select SUM(salary), department_name from Employee_info2024 GROUP BY department_name;
--Find the maximum salary in each department.
select MAX(salary), department_name from Employee_info2024 GROUP BY department_name;
--Find the minimum salary in each location.
SELECT MIN(SALARY), location FROM Employee_info2024 GROUP BY location;
--Count the number of employees in each location.
SELECT COUNT(employee_name), location from Employee_info2024 group by location
--Find total employees under each manager_name.
SELECT COUNT(EMPLOYEE_NAME), Manager_name FROM Employee_info2024 GROUP BY manager_name 
--Find average salary under each manager_name.
select AVG(salary), manager_name from Employee_info2024 group by manager_name
--Show the total salary paid in each location.
select SUM(salary), location from Employee_info2024 group by location
--Count employees grouped by job_role.
select count (employee_name) from Employee_info2024 group by job_role

--🔹 INTERMEDIATE (11–20)

--Count employees in each department whose salary > 50,000.
select COUNT(employee_name), department_name, salary from Employee_info2024
where salary > 50000
group by department_name;
--Find the average salary for each department only if avg salary > 45,000 (use HAVING).
select AVG(salary)as salary_empl, department_name from Employee_info2024 
where salary > 45000
group by department_name;
--Display departments where total salary > 2,00,000.
select SUM(salary)as total_salary, department_name 
from Employee_info2024 
where salary > 200000
group by department_name;
--Show how many employees work under each manager only if more than 2 employees.
select COUNT(employee_name)as total_empl, manager_name from  Employee_info2024
group by manager_name;
 --without having this not possible
--Find the max salary in each location where location is not ‘Delhi’.
select MAX(salary), location 
from Employee_info2024
where location not in ('Delhi')
group by location;
--Find the number of employees in each department sorted by count descending.
select 
COUNT(employee_name)as total_emple, department_name
from Employee_info2024
group by department_name
order by COUNT(employee_name) DESC
--Find the sum of salaries for each manager having sum > 1,00,000.
select SUM(salary), manager_name 
from Employee_info2024
where 
-- without having this not possible
--Count employees in each department whose location = ‘Bangalore’.
Select COUNT(employee_name) as total_empl, location 
from Employee_info2024
where location in ('bangalore')
group by location;
--Group by department and find the difference between max salary and min salary in each department.
select MAX(salary) as total_high ,MIN(salary)as total_lowest, department_name
from Employee_info2024
GROUP BY department_name;
--Find the department-wise number of employees joining before 2024 (if join_date exists).
SELECT 
COUNT(employee_name) , department_name
FROM Employee_info2024
where joining_date < 2024
group by department_name

----------------------------------------------
/*📌 What You Need to Improve
1️⃣ Using HAVING correctly
HAVING filters after grouping
WHERE filters before grouping
2️⃣ Understanding grouping columns
Only grouped columns can be selected (other than aggregations)
3️⃣ Reading questions carefully
Many mistakes were due to grouping by wrong column
Or applying filters incorrectly*/