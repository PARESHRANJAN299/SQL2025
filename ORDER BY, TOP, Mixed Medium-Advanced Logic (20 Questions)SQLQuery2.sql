✅ TASK 5 — ORDER BY, TOP, Mixed Medium-Advanced Logic (20 Questions)
List top 5 highest-priced products.
select top 5 price, product_name from product_data
order by price DESC;
List top 5 lowest-priced products.
select top 5 price, product_name 
from product_data
order by price ASC;
List top 5 products with highest stock.
select top 5 product_name, stock
from product_data
order by stock DESC;
List top 5 products with lowest stock.
select top 5 product_name, stock 
from product_data
order by stock ASC;
List top 10 most expensive brands (based on average price).

select top 10 brand,--top 10 brand as top_10_brand, 
 avg(price) as total_average
 from product_data
 group by brand
 order by total_average DESC;

List products ordered by rating (high → low).
select * from product_data
order by rating DESC;
List products ordered by price per unit stock (price/stock).
select *, (price/stock) as per_unit from product_data
List products ordered by launch_date (newest first).
select product_name, launch_date from product_data
order by launch_date ASC;
List products ordered by launch_date (oldest first).
select product_name, launch_date from product_data
order by launch_date DESC;
List the first 5 products alphabetically by product_name.
not getting understand the quetions
List the last 5 products alphabetically by brand.
not getting understand the quetions
Sort brands by total stock (use GROUP BY).
select brand, sum(stock) as total_stock
from Product_Data
group by brand
ORDER BY brand;
Sort categories by their average price.
SELECT category, AVG(price) as average_price 
FROM Product_Data
group by category 
ORDER BY category;
Sort rating groups by total product count.
select
rating, COUNT(product_name) as total_product_count
from Product_Data
group by rating
order by rating;
Sort products by length of product_name.
select product_name
from Product_Data
where LEN(prodcut_name);
List products where price is within top 20% of all products.
List products where stock is within bottom 20%.
List products sorted by (price × rating).
select (price*rating) as total
from Product_Data
order by total
List products sorted by (stock × rating).
select (stock*rating) as total
from Product_Data
order by total
Sort products first by brand, then by price descending.

select brand, price
from Product_Data
order by brand DESC, price DESC;