--100 MEDIUM + ADVANCED SQL QUESTIONS- ocused on GROUP BY, DATE/TIME, LIKE, STRING, AGGREGATION


Here are 100 Medium + Advanced SQL Questions (NO HAVING, NO SUBQUERY), fully suitable for Data Analyst interview practice, grouped into 5 Tasks.
👉 All questions are based on your table: Product_Data
👉 Focused on GROUP BY, LIKE, AGGREGATES, WHERE, ORDER BY, TOP, STRING FUNCTIONS, DATE FUNCTIONS
👉 NO HAVING, NO SUBQUERY — COMPLETELY SAFE
✅ TASK 1 — Filtering, LIKE, Pattern Matching (20 Questions)
Fetch products where product_name contains at least one space.
SELECT product_name 
from product_data
where product_name LIKE '% %';

Fetch products where product_name contains more than one space.
select product_name
from product_data	
where product_name like '% % %' -- >1
Fetch products whose product_name starts with a vowel.
select product_name 
from product_data
where product_name like '[aeiouAEIOU]%';
Fetch products whose product_name ends with a vowel.
select product_name 
from product_data
where product_name like '%[aeiouAEIOU]';
Fetch products where brand starts and ends with the same letter.
SELECT 
BRAND
FROM PRODUCT_DATA
WHERE LEFT(brand, 1) = RIGHT(Brand, 1);
Fetch products where the last character of product_name is a digit.
SELECT PRODUCT_NAME
FROM PRODUCT_DATA
WHERE PRODUCT_NAME LIKE '%[0-9]' -- MULTIPLE DIGIT WILL APPEAR, BUT MY REQUIREMENNT IS ONLY ONE DIGIT; --> one digit wil
select * from product_data
where product_name like '%[0-9]' --=>1
AND product_name not like '%[0-9][0-9]' -- <2
Fetch products where price ends in 99.
/*✅ 1. WHY % MEANS DIFFERENT THINGS IN TEXT AND IN NUMBERS
✔ In TEXT (LIKE pattern)
% = wildcard
Means “anything / any characters”*/

select * from product_data
WHERE price % 100 = 99 -- like only work for text senario 

💡 WHY SQL USES % IN BOTH PLACES BUT DIFFERENT MEANINGS?
📌 Because:
In LIKE, % is a wildcard
In numeric math, % is modulus
These are two completely different features of SQL.
Fetch products where rating is between 3.5 and 4.7.
select * from product_data
where rating between 3.5 and 4.7;
Fetch products where stock is a multiple of 5.
select * from product_data
where stock % 5=0;
-- % 2=0 -- this will give the even number right;
Fetch all products where product_name contains the word “Pro”.
select * from product_data
where product_name like '%pro%';
Fetch products where product_name contains exactly 2 words.
select * from product_data
where product_name like '% %' AND  -- condition will appear more then 1 words
product_name NOT LIKE '% % %' -- condition will appear break <2 words

where product_name like '%a-zA-Z%' AND  -- condition will appear more then 1 words
product_name NOT LIKE '%a-zA-Z%a-zA-Z %'
Fetch all products where category contains a lowercase letter.
select * from product_DATA	
where category LIKE '%a-z%';
Fetch products where brand has at least one uppercase letter.
select * from product_data
where brand like '%A-Z%';
Fetch products where product_name contains a hyphen (-).
select * from product_DATA
where product_name like '%[--]%' ESCAPE '-'; -- very good
WHERE PRODUCT_NAME LIKE '%-%'; -- important things very simple
Fetch products where product_name contains special characters.
Select * from product_data
where product_name like '%[$-#%@!&*=]%' --we can use also seperate with OR operator but this not an good recomendation;
Fetch products where brand length is more than 6 characters.
select * from product_data
--where LEN(BRAND)>6
where len(brand)>6;
Fetch products where product_name length is even.
select * from product_data
where len(product_name)% 2 =0;
Fetch products where product_name length is odd.
select * from product_data
where len(product_name) %2=1;
Fetch products where rating has 1 decimal place.

Fetch products where product_name contains repeated letters (Ex: “aa”, “bb”).
select * from product_data
where right(product_name, 2) = right(product_name,2)

SELECT *
FROM product_data
WHERE PATINDEX('%[A-Za-z][A-Za  
-z]%', product_name) > 0
  AND LOWER(product_name) LIKE '%'+SUBSTRING(product_name, PATINDEX('%[A-Za-z][A-Za-z]%', product_name), 1)
                              +SUBSTRING(product_name, PATINDEX('%[A-Za-z][A-Za-z]%', product_name), 1)+'%';
 
✅ TASK 2 — Aggregations + Grouping (20 Questions)
Show total number of products in each brand.
select brand, count(*) as total_numberProduct
from product_data
group by brand;
Show total number of products in each category.
select category, count(*) as total_numberProduct
from product_data
group by category;
Show total stock per brand.
select brand, sum(stock) as total_stock
from product_data
group by brand;
Show total stock per category.
select category, sum(stock) as total_stock
from product_data
group by category;
Show average price per brand.
select brand, avg(price) as total_averagePrice
from product_data
group by brand;
Show average price per category.
select category, avg(price) as total_average_price
from product_data
group by category;
Show maximum price per brand.
select brand, max(price) as highest_price
from product_data
group by brand
order by max(price) DESC;
Show minimum price per brand.
Select brand, min(price) as minimum_price
from product_data
group by brand
order by min(price) aSC;
Show maximum stock per brand.
select brand, min(stock) as total_minimum_stock
from product_data
group by brand;
Show sum of price for each brand.
select brand, sum(price)
from product_data
group by brand;
Show sum of price for each category.
select category, sum(price)as total_price
from product_data
group by category;
Show total inventory value (price × stock) per brand.
select brand, sum(price*stock) as total_Inventory_value
from product_data
group by brand;
Show total inventory value per category.
select category, sum(stock*price) as total_inventory
from product_data
group by category;
Show count of products per launch year (extract year).
SELECT YEAR(launch_date) AS launch_year,
       COUNT(*) AS total_products
FROM product_data
GROUP BY YEAR(launch_date); 
Show count of products grouped by rating rounded down (FLOOR).
select rating, count(*) as total_product
from product_data
group by rating;
Show count of products where price > 20,000 per brand.
select brand, count(*) as total_product
from product_data
where price > 20000
group by brand;
Show count of products where stock > 50 per category.
select category, count(*) as total_product_count
from product_data
where stock > 50
group by category;
Show total stock per rating value.
select rating, sum(stock) as total_stock
from product_data
group by rating;
Show max rating per category.
select category, max(rating) as totalhighest_Rating
from product_data
group by category;
✅ TASK 3 — Date & Time Advanced (20 Questions)

Fetch products launched in the year 2022.

Fetch products launched in the year 2023.

Fetch products launched in the year 2024.

Fetch products launched before 2023.

Fetch products launched after 2023.

Fetch products launched in the first quarter (Jan–Mar).

Fetch products launched in the second quarter (Apr–Jun).

Fetch products launched in the third quarter (Jul–Sep).

Fetch products launched in the fourth quarter (Oct–Dec).

Fetch products launched in the last 6 months.

Fetch products launched on weekends (Saturday/Sunday).

Fetch products launched on weekdays.

Fetch products launched on the first day of any month.

Fetch products launched on the last day of any month.

Fetch products where launch_date month is July.

Fetch products where launch_date day is 15.

Fetch products where launch_date falls on an odd date.

Fetch products where launch_date falls on an even date.

Fetch products where launch year and rating have the same first digit.

Fetch products where launch month number matches stock % 12.

✅ TASK 4 — STRING functions, Filtering, Operators (20 Questions)

Fetch products where LEFT(product_name, 3) = LEFT(brand, 3).

Fetch products where RIGHT(product_name, 2) = RIGHT(brand, 2).

Fetch products where the first word starts with ‘S’.

Fetch products where the last word starts with ‘A’.

Fetch products where product_name has more than 12 characters.

Fetch products where product_name has less than 8 characters.

Fetch products where product_name contains double spaces.

Fetch products where brand appears anywhere inside product_name.

Fetch products where product_name contains exactly 3 words.

Fetch products where product_name contains no spaces.

Fetch products where product_name has at least one uppercase letter.

Fetch products where product_name has at least one lowercase letter.

Fetch products where price has exactly 5 digits.

Fetch products where stock has 2 digits.

Fetch products where price % 100 = 0.

Fetch products where stock % 2 = 0 (even stock).

Fetch products where stock % 2 = 1 (odd stock).

Fetch products where rating × stock > 300.

Fetch products where price – stock > 10000.

Fetch products where LEN(product_name) = LEN(brand) + 5.

✅ TASK 5 — ORDER BY, TOP, Mixed Medium-Advanced Logic (20 Questions)

List top 5 highest-priced products.

List top 5 lowest-priced products.

List top 5 products with highest stock.

List top 5 products with lowest stock.

List top 10 most expensive brands (based on average price).

List products ordered by rating (high → low).

List products ordered by price per unit stock (price/stock).

List products ordered by launch_date (newest first).

List products ordered by launch_date (oldest first).

List the first 5 products alphabetically by product_name.

List the last 5 products alphabetically by brand.

Sort brands by total stock (use GROUP BY).

Sort categories by their average price.

Sort rating groups by total product count.

Sort products by length of product_name.

List products where price is within top 20% of all products.

List products where stock is within bottom 20%.

List products sorted by (price × rating).

List products sorted by (stock × rating).

Sort products first by brand, then by price descending.