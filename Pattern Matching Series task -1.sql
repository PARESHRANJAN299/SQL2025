✅ Task 1 — Beginner Level (5 Questions)

Focus: LIKE with basic % and simple patterns.

Q1. Fetch employees whose name starts with 'A'.
select 
employee_name
from Employee_info2024 
where employee_name like 'A%'
Q2. Fetch employees whose name ends with 'n'.
select 
*
from Employee_info2024
where employee_name like '%n'
Q3. Fetch employees whose department contains the word 'Tech'.
select * 
from Employee_info2024
where department_name like '%Tech%';
Q4. Fetch employees whose email starts with 'paresh'.
select
employee_name
from Employee_info2024 where employee_name like 'paresh';
Q5. Fetch employees whose location contains the letter 'a' anywhere.
select 
*
from Employee_info2024
where location like '%a%'
select * from Employee_info2024


✅ Task 2 — Intermediate Level (10 Questions)

Focus: LIKE + _ single-character matching + exclusions.

Q1. Fetch employees whose name is exactly 5 characters long using _ _ _ _ _.
select * 
from Employee_info2024
where employee_name like '_____';

Q2. Fetch employees whose name starts with 'M' and ends with 'a'.
select * 
from Employee_info2024
where employee_name like 'M%' AND employee_name like '%a';
Q3. Fetch employees whose name has 'r' as the second character.
SELECT 
employee_name
FROM Employee_info2024
WHERE employee_name like '_r%'
Q4. Fetch employees whose job_title contains 'manager' (case-insensitive).
select * from Employee_info2024
where department_name like '%HR%';
Q5. Fetch employees whose department name does not start with 'H'.
select * from Employee_info2024
where department_name like '[^H%]'
--correct 
select * from Employee_info2024
where department_name not like 'H%';

Q6. Fetch employees whose name contains double letters like 'aa', 'ee', 'oo'.
select * 
from Employee_info2024
WHERE employee_name LIKE '%aa%'
   OR employee_name LIKE '%ee%'
   OR employee_name LIKE '%oo%';
Q7. Fetch employees whose email contains a dot before @ (e.g., abc.xyz@gmail).
select * from Employee_info2024
where employee_name like '%.%@%';

Q8. Fetch employees whose mobile number ends with '789'.
select * 
from Employee_info2024
where empl_mobile like '%789';
Q9. Fetch employees whose location has exactly 3 letters.
select * from 
Employee_info2024
where location like '___';
Q10.Fetch employees whose name does not contain the letter 'a'.
select * from Employee_info2024
where employee_name not like '%a%';

✅ Task 3 — Advanced Level (15 Questions)

Focus: Ranges [ ], exclusions [^ ], complex patterns.

Q1. Fetch employees whose name starts with any letter between A–M.
select * from Employee_info2024
where employee_name like '[a-m]%';

Q2. Fetch employees whose name starts with a consonant (NOT vowels).
SELECT * FROM Employee_info2024
WHERE employee_name LIKE '[^AEIOU]%';
---correct
SELECT * FROM Employee_info2024
WHERE employee_name not LIKE '[AEIOU]%';

Q3. Fetch employees whose name ends with any digit 0–9.
select * from Employee_info2024
where employee_name like '%[0-9]';
Q4. Fetch employees whose name contains any vowel at the 3rd position.
select * from Employee_info2024
where employee_name like '___[aeiou]%'
Q5. Fetch employees whose department starts with M, N, or P.
  
Q6. Fetch employees whose name does NOT start with A, E, I, O, U.
select * from Employee_info2024
where employee_name like '[^aeiou]%';
Q7. Fetch employees whose email starts with a number.
select * from 
empleyee_info2024 
where employee_Email like '[0-9]%'
Q8. Fetch employees whose job title contains either 'dev' or 'eng'.
select * from Employee_info2024
where department_name like '%dev%'
OR 
department_name like '%eng%'

use HR_DB1
select * from Employee_info2024
Q9. Fetch employees whose name has at least one uppercase letter in the middle.
--skip 9th q
Q10. Fetch employees with names ending in special characters like %, $, # (if data supports).
select * 
from Employee_info2025
where employee_name like '%[%$#]';

Q11. Fetch employees whose name has 'a' in the 2nd or 4th position.
select * from 
Employee_info2024
where employee_name like '_a%'
OR employee_name like '___a%';
Q12. Fetch employees whose location starts with ‘B’ and second character is not a vowel.
SELECT *
WHERE location LIKE 'B%'
AND location LIKE '_[^AEIOU]%';

--CORRECT
FROM Employee_info2024
WHERE location LIKE 'B[^AEIOU]%';
Q13. Fetch employees whose name contains exactly one vowel.
SELECT * FROM Employee_info2025
WHERE employee_name LIKE '%[AEIOU]%'
and employee_name NOT LIKE '%[AEIOU]%[AEIOU]%'

Q14. Fetch employees whose name contains only alphabets (no digits).
select * from Employee_info2025
where employee_name like '%[0-9]%'
Q15. Fetch employees with patterns matching ‘M%R%T’ (e.g., “M…R…T”).

Wildcard Characters




