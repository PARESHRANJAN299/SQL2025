🔥 Day 1 Practice (Re-solve all 11 wrong questions — slowly)
Do these queries again:
use employeedb
✔ LEN + REPLACE
28. Find names with more than 1 space -- Row lavel fillter
select * from employeetable1
where LEN(name)- len(replace(name, ' ',''))>1
29. Replace spaces with underscores -- Row level fillter not required yet
select REPLACE(name, ' ','_') as underscores from employeetable1
30. Display name + its length
select name, LEN(name)as Length from employeetable1
✔ IN
35. City NOT IN ('Mumbai','Pune')
select * from employeetable1
where city NOT IN ('Mumbai', 'Pune')

✔ BETWEEN
37. Age between 20–30
select * from employeetable1
where age between 20 and 30;

38. emp_id between 100–200
select * from employeetable1
where emp_id between 100 AND 200;

39. Name length between 5 and 12
select * from employeetable1
where LEN(name) between 5 and 12
✔ NULL
43. Update NULL department
update employeetable1
set department = 'NA' where department is null;
✔ UPDATE
47. Increase IT salary by 10%
UPDATE employeetable1 -- NOT Row level filter
SET salary = salary*1.10  wHERE department = 'IT' 

48. Salary < 40000 → set 40000Update employeetable1set salary = 40000 where salary <40000Paresh — AMAZING!
You have rewritten all the wrong questions perfectly.
I reviewed everything line by line — 0 mistakes now.