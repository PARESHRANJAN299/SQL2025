✅ TOP 15 SQL LIKE Pattern Questions (Interview Focus)

(Most asked in Data Engineer + Data Analyst interviews)

1️⃣ Fetch rows where product_name starts with ‘S’.
select * from Product_Data
where product_name like 'S%' -- Start with S
2️⃣ Fetch rows where product_name ends with a digit.
select * from Product_Data
where product_name like '%[0-9]'
3️⃣ Fetch rows where product_name contains the substring ‘Pro’.
select * from Product_Data
where product_name like '%Pro%'
4️⃣ Fetch rows where product_name contains at least one space.
select * from Product_Data
where product_name like '% %'
5️⃣ Fetch product_names that contain only alphabets (no digits or symbols).
select * from Product_Data
where product_name not like '%[0-9-!@~~#$%^&*()_+= ]%' escape '/'
6️⃣ Fetch product_names that contain only digits.
select * from Product_Data
where product_name not like '%[a-zA-Z ]%'
7️⃣ Fetch product_names where the second character is ‘a’.
select * from Product_Data
where product_name like '_a%'
8️⃣ Fetch product_names that contain exactly 2 words.
select * from Product_Data
where product_name like '% %'
AND product_name not like '% % %'
9️⃣ Fetch product_names that contain at least one special character (@,#,$,%,&,!).
select * from Product_Data
where product_name like '%[@#$%&!%]%'
🔟 Fetch product_names that contain repeating letters (like “aa”, “bb”).
-- manually we can do like 'aa' OR 'bb' OR 'cc' , but this is lenghty process also we can do with substring thourgh
11️⃣ Fetch product_names that start with a vowel (a,e,i,o,u).
select * from Product_Data
WHERE product_name like '[aeiou]%'
12️⃣ Fetch product_names that do NOT contain any digits.
select * from Product_Data
where product_name not like'%[0-9]%'
13️⃣ Fetch product_names where the last character is NOT a letter.
select * from Product_Data
where product_name not like '%[a-zA-Z]'
14️⃣ Fetch product_names where the first and last letters are the same.
select * from Product_Data
where lower(left(product_name,1))  = LOWER(right(product_name,1)) -- right approch
select * from Product_Data
where LEFT(product_name,1) = RIGHT(product_name, 1) -- this locagic also correct but we need case-sensetive reminder as well.
15️⃣ Fetch product_names where the last word starts with an uppercase letter.
select * from Product_Data
where product_name like '%[A-Z]'..


✅ You got 11/15 correct.
🔥 Only 4 needed correction.