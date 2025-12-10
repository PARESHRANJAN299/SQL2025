🔰 Q1. Display first 3 characters of the name.
select SUBSTRING(name,1,3) from employeetable1
🔰 Q2. Display 2nd to 5th character from the name.
select SUBSTRING(name,2,4) from employeetable1;
🔰 Q3. Display last 3 characters of the name.
select name, SUBSTRING(name,LEN(name)-2,3) as last_3char from employeetable1;
select name, RIGHT(name, 3) as last_char from employeetable1;
🔰 Q4. Show first letter of department.
select department, LEFT(department,1) from employeetable1
select department, SUBSTRING(department,1,1)  from employeetable1;
🔰 Q5. Extract domain from email (“gmail”, “yahoo”, etc.)
select email, SUBSTRING(email, CHARINDEX('@',email)+1,100)as domain_name from employeetable1
select email, SUBSTRING(email, CHARINDEX('@',email)+1,50) as Domain_name from employeetable1
--🎯 CHARINDEX helps us dynamically find '@'.
--Extract extension from filename
--select email, SUBSTRING(email,CHARINDEX('.',email)+1,100)as File_extenstion from employeetable1
