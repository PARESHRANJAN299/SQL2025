create database employeedb -- Database create kali

use employeedb; - --database ku use kali

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    city VARCHAR(50)
);

INSERT INTO employees (emp_id, name, department, salary, age, city)
VALUES
(1, 'Asha', 'HR', 35000, 28, 'Mumbai'),
(2, 'Ramesh', 'IT', 60000, 32, 'Pune'),
(3, 'Kiran', 'Sales', 45000, 30, 'Delhi'),
(4, 'Meera', 'IT', 52000, 26, 'Chennai'),
(5, 'John', 'Finance', 70000, 40, 'Mumbai');

--🔥 3-Day SQL Reset Plan (To fix basics permanently)
--DAY 1 → Only SELECT, WHERE, ORDER BY
--✅ Your Day-1 Target
--🔟 Practice Questions (With Expected Approach)
--Practice writing each query yourself first.

--1️⃣ Show all columns from the table
select * from employees;
--2️⃣ Show only name and salary
select name, salary from employees;
--3️⃣ Find employees who are older than 30
select name,age
from employees
where age>30
--4️⃣ Find employees from the IT department
select name, department from employees
where department ='IT'
--5️⃣ List employees with salary less than ₹50,000
select name,salary from employees
where salary<50000
--6️⃣ Show employees who are from Mumbai
select name,city
from employees
where city ='Mumbai'
--7️⃣ Show employees age between 25 and 35
select name,age
from employees
where age between 25 and 35
--8️⃣ Show employees NOT from the Finance department
select name, department from employees
where department <> 'Finance'
--9️⃣ Sort employees by salary --(Low → High)
select * from employees
order by salary ASC; -- Low to high
--🔟 Sort employees by age --(High → Low)
select * from employees
order by age DESC;
-- Finally 10 questions are fixed, and we will validate these quetions from chatgpt. we completed day 1 SQL Thankyou 

Try writing minimum 30 queries using only SELECT/WHERE/ORDER BY