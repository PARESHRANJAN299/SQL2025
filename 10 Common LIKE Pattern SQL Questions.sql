✅ 10 Common LIKE Pattern SQL Questions

10 LIKE Pattern Questions Based on product_data
Fetch products where product_name starts with ‘S’.
select product_name 
from Product_Data
where product_name like 'S%';
Fetch products where brand ends with the letter ‘a’.
select brand
from Product_Data
where brand like '%a';
Fetch products where category contains the word ‘Home’.
select category from Product_Data
where category like '%home%';
Fetch product_names that have at least one space (multi-word names).
select * from Product_Data
where product_name like '% %';
Fetch products where product_name contains the substring ‘Pro’.
select * from Product_Data
where product_name like '%Pro%'
Fetch products where product_name has exactly 3 characters before the first space.
select product_name from Product_Data
where product_name like '___ %'
--where product_name like '___[ ]%'
-- I can give you 5 more LIKE pattern questions at the same level.
Fetch products where brand starts and ends with the same letter.
select * from Product_Data
where LEFT(brand, 1) = RIGHT(brand, 1);
Fetch product_names that end with a numeric digit.
select * from Product_Data
where product_name not like '%0-9'
Fetch product_names where the second character is 'a'.
select * from Product_Data
where product_name like '_a%';
Fetch product_names where the last word starts with the letter ‘A’.
select * from Product_Data
where product_name like '%A';