10 NEW LIKE-Pattern Interview Questions
use hr_db1
1️⃣ Fetch product_names that contain ONLY alphabets (no digits, no special characters).
select * from product_data;
where product_name NOT like '%[^a-zA-Z]%'
(One of your previous weak areas — included)

2️⃣ Fetch product_names that contain ONLY digits (no letters, no symbols).
SELECT * FROM PRODUCT_DATA
WHERE PRODUCT_NAME NOT like '%[^0-9]%'
(Also one of your mistakes earlier)

3️⃣ Fetch product_names where the last word starts with an uppercase letter.
SELECT * FROM PRODUCT_DATA
WHERE PRODUCT_NAME LIKE '%[^a-z0-9]' and 
product_name not like '%[^a-z0-9] [^a-z0-9]'

(You made this wrong before — included)

4️⃣ Fetch product_names that contain at least one special character (@ # $ % & ! _ -).
select * from product_data
where product_name like '%[@#$%&!_-]%'
(Also added from your mistake list)
5️⃣ Fetch product_names where the first two characters are both digits.
select * from product_data
where product_name like '[0-9][0-9]%'
6️⃣ Fetch product_names where the last two characters are both letters.
select * from product_data
 where product_name like '%[a-zA-Z][a-zA-Z]'
7️⃣ Fetch product_names where the third character is NOT a letter.
select * from product_data
where product_name like '__[^a-zA-Z]%'
(e.g., digit or special character)

8️⃣ Fetch product_names that contain exactly ONE digit anywhere.
select * from product_data
where product_name like '%[0-9]%'
and product_name not like '%[0-9]%[0-9]%'-- the command will store 1 or > 1 digit <2 not operator will block 
(Very common DE/DA interview question)
9️⃣ Fetch product_names where the first word ends with a vowel.
select * from product_data
where product_name like '%'
🔟 Fetch product_names where the last character is a special character.
select * from product_data
where product_name like '%[^0-9A-Za-z]'
(Real-world data cleaning/testing question)
select * from product_data
wHERE product_name LIKE '%[^0-9A-Za-z]'