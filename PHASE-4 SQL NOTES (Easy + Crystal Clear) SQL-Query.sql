select * from employeetable1;
Wildcard	Meaning	Example
%	Any number of characters	'A%' → Starts with A
_	Only 1 character	'_a%' → second letter is "a"
📘 Examples
1.	Starts with A
select * from employeetable1
where name like 'A%'
2.	Ends with n
select * from employeetable1
where name like '%n'
3.	Contains "ai"
select * from employeetable1
where name like '%ai%';
4.	Second letter is 'a'
select * from employeetable1
where name like '_a%'

🔥 2. NOT LIKE
Used to exclude text patterns.
Examples
1.	Not starting with A
select * from employeetable1
where name not like 'A%'
2.	Not containing 'in'
select * from employeetable1
where name not like '%in%'
🔥3. Wildcards (Deep Understanding)
% anything/many char after and before 


🔥 1. ADVANCED WILDCARDS (LIKE PATTERNS)
[] → Match ANY character in the list (SQL Server only)

'[abc]%'    → starts with a OR b OR c
select * from employeetable1
where name like '%[abc]%'
select * from employeetable1
where name like '[anc]%'
select * from employeetable1
where name like '%[abh]'
select * from employeetable1
where name like '[a-r]%'
'[0-9]%'    → starts with any digit
select * from employeetable1
where salary like '[0-4]%'
select * from employeetable1
where salary like '%[311]%'
[^] → NOT these characters
'[^a-z]%' → does NOT start with lowercase letters

select * from employeetable1
where name like '%[^abc]'
select * from employeetable1
where name like '[^abc]%'

select * from employeetable1
where name like '[^a-r]%'

🔥 3. MULTIPLE CONDITIONS (LIKE + AND/OR/NOT)
Combine LIKE patterns

WHERE name LIKE 'A%' 
   OR name LIKE 'B%'
select * from employeetable1
where name like 'A%'
OR Name like 'R%'
Exclude patterns
WHERE city NOT LIKE '%Town%'
select * from employeetable1
where city not like '%Delhi%'
LIKE + NOT LIKE together

WHERE name LIKE 'A%' 
  AND name NOT LIKE '%test%'
  select * from employeetable1
  where name like 'A%'
  AND name not like '%test%'

  🔥 4. ESCAPED PATTERNS
 /* select * from employeetable1
 where name like '%\%%' ESCAPE '\' -- this will correct 
 
 select * from employeetable1
 where name like '% % %' -- this will give an error

 select * from employeetable1
 where name like '%\~%' escape '\' -- this will correct 

 select * from employeetable1
 where name LIKE '%\*#~%' escape '\' -- this will provide the output *#~ */

 select * from employeetable1
 where CAST(salary as varchar) like '5%';
 select * from employeetable1
 where CAST(salary as varchar) like '%[41]%'

 select * from employeetable1
 where LEN(name) = 12

 select * from employeetable1
 where LEFT (NAME, 1) = 'A'

SELECT * FROM employeetable1
WHERE RIGHT (SALARY, 2) = 44

SELECT * FROM employeetable1
WHERE LEN(NAME) = 8;