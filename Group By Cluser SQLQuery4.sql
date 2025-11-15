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


CREATE TABLE Marketing_Data (
    campaign_id INT PRIMARY KEY,
    campaign_name VARCHAR(50),
    channel VARCHAR(30),
    budget INT,
    spent INT,
    leads_generated INT,
    conversions INT,
    campaign_date DATE
);

INSERT INTO Marketing_Data 
(campaign_id, campaign_name, channel, budget, spent, leads_generated, conversions, campaign_date)
VALUES
(1, 'Summer Sale', 'Facebook', 50000, 45000, 1200, 150, '2024-05-10'),
(2, 'Winter Promo', 'Google Ads', 70000, 68000, 1500, 190, '2024-12-01'),
(3, 'Festive Blast', 'Instagram', 60000, 58000, 1600, 210, '2024-10-20'),
(4, 'New Year Boost', 'LinkedIn', 40000, 35000, 600, 80, '2025-01-01'),
(5, 'Brand Awareness', 'YouTube', 90000, 85000, 2000, 300, '2024-06-15'),
(6, 'Holiday Offer', 'Facebook', 55000, 50000, 1300, 175, '2024-12-18'),
(7, 'Monsoon Deal', 'Google Ads', 65000, 60000, 1400, 160, '2024-07-08'),
(8, 'Flash Sale', 'Instagram', 30000, 28000, 800, 90, '2024-09-25'),
(9, 'Lead Booster', 'LinkedIn', 75000, 72000, 1100, 130, '2024-11-05'),
(10, 'Awareness Plus', 'YouTube', 85000, 82000, 1900, 260, '2024-03-27'),
(11, 'Spring Launch', 'Facebook', 48000, 46000, 1150, 140, '2024-04-09'),
(12, 'Tech Campaign', 'Google Ads', 92000, 88000, 2100, 280, '2024-08-11'),
(13, 'Mega Promo', 'Instagram', 72000, 71000, 1700, 230, '2024-11-26'),
(14, 'HR Hiring Ads', 'LinkedIn', 35000, 33000, 500, 65, '2024-02-18'),
(15, 'Brand Push', 'YouTube', 95000, 93000, 2200, 310, '2024-10-10'),
(16, 'Flash Weekend', 'Facebook', 26000, 24000, 700, 85, '2024-03-03'),
(17, 'Discount Offer', 'Google Ads', 78000, 76000, 1450, 175, '2024-07-27'),
(18, 'Influencer Collab', 'Instagram', 88000, 85000, 2300, 320, '2024-05-22'),
(19, 'Corporate Leads', 'LinkedIn', 69000, 66000, 900, 120, '2024-09-13'),
(20, 'Video Blitz', 'YouTube', 72000, 70000, 1600, 200, '2024-06-30');



Here are 20 more advanced SQL questions (NO HAVING clause, NO advanced topics).
All questions use Marketing_Data table you created.

These questions cover:

✔ GROUP BY
✔ SELECT
✔ WHERE
✔ DISTINCT
✔ LIKE
✔ Wildcards
✔ Aggregate Functions
✔ Aliases
✔ UPDATE
✔ DELETE
✔ ORDER BY

All within your current learning level.
✅ 25 SQL Questions for Marketing_Data (Beginner → Intermediate → Advanced Beginner)
🔹 BASIC (1–8)

Fetch all campaigns that used the Facebook channel.
SELECT campaign_name, channel
FROM marketing_data where channel in ('facebook');
List campaigns where the budget is greater than 70,000.
select campaign_name, budget
from Marketing_Data
where budget > 70000;
select *from marketing_data
Fetch campaigns that occurred in the month of December 2024.
select campaing_name, campaing_date from Marketing_Data
where campaign_date between 2024-12-01 AND 2024-12-30;
Fetch campaigns where spent < budget.

Retrieve campaign names where the channel is 'YouTube'.

Get all campaigns where leads_generated > 1500.

Fetch campaigns where conversions < 150.

Get unique channel names used in the marketing campaigns.

🔹 INTERMEDIATE (9–17)

(GROUP BY allowed, no HAVING)

Count the number of campaigns executed on each channel.

Find the total budget spent per channel.

Find the average spent amount grouped by campaign_name.

Find total leads_generated grouped by channel.

Find maximum conversions for each channel.

Find the sum of budget for each month (use MONTH from campaign_date).

Count campaigns that belong to each year (2024 or 2025).

Get minimum spent amount for each channel.

Count the number of campaigns grouped by campaign_name starting with letter 'S'.

🔹 ADVANCED BEGINNER (18–25)

(Combination of WHERE + GROUP BY + LIKE + range conditions)

Find total budget per channel where budget > 50,000.

Count campaigns per month where leads_generated > 1000.

Find total conversions grouped by channel where campaign_name like '%Sale%'.

Find total spent for each channel where spent BETWEEN 40,000 AND 80,000.

Count campaigns grouped by channel where campaign_name ends with 'Promo'.

Find total leads generated for campaigns that include the word 'Brand' in campaign_name.

Group by channel and list campaigns where conversions > 200.

Find total spent grouped by channel where channel NOT IN ('Facebook', 'YouTube').

