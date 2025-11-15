CREATE TABLE Product_Data (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    brand VARCHAR(30),
    price INT,
    stock INT,
    rating DECIMAL(3,1),
    launch_date DATE
);

INSERT INTO Product_Data 
(product_id, product_name, category, brand, price, stock, rating, launch_date)
VALUES
(1, 'Galaxy M33', 'Mobile', 'Samsung', 18000, 120, 4.2, '2023-05-10'),
(2, 'iPhone 14', 'Mobile', 'Apple', 72000, 80, 4.7, '2022-09-30'),
(3, 'Redmi Note 12', 'Mobile', 'Xiaomi', 15000, 150, 4.1, '2023-01-12'),
(4, 'Sony WH-1000XM5', 'Headphones', 'Sony', 29000, 50, 4.8, '2023-07-25'),
(5, 'JBL Tune 760', 'Headphones', 'JBL', 6500, 100, 4.3, '2023-03-15'),
(6, 'MacBook Air M2', 'Laptop', 'Apple', 98000, 30, 4.9, '2022-11-20'),
(7, 'Dell Inspiron 5518', 'Laptop', 'Dell', 62000, 45, 4.4, '2022-10-10'),
(8, 'HP Pavilion 14', 'Laptop', 'HP', 58000, 60, 4.2, '2023-04-07'),
(9, 'Oppo A78', 'Mobile', 'Oppo', 17000, 130, 4.0, '2023-02-19'),
(10, 'Samsung A54', 'Mobile', 'Samsung', 30000, 75, 4.5, '2023-06-29'),
(11, 'Canon EOS 200D', 'Camera', 'Canon', 52000, 25, 4.6, '2022-05-18'),
(12, 'Nikon D5600', 'Camera', 'Nikon', 48000, 40, 4.5, '2022-07-09'),
(13, 'Sony Alpha A6100', 'Camera', 'Sony', 63000, 20, 4.7, '2023-08-14'),
(14, 'Lenovo Yoga Slim 7', 'Laptop', 'Lenovo', 75000, 35, 4.4, '2023-01-30'),
(15, 'Boat Rockerz 550', 'Headphones', 'Boat', 2000, 200, 4.0, '2023-09-02'),
(16, 'Realme Buds Wireless 3', 'Headphones', 'Realme', 1600, 180, 3.9, '2023-10-15'),
(17, 'LG 55-inch 4K TV', 'Television', 'LG', 62000, 18, 4.6, '2023-05-22'),
(18, 'Sony Bravia 50-inch', 'Television', 'Sony', 71000, 12, 4.8, '2023-11-11'),
(19, 'MI 50-inch TV', 'Television', 'Xiaomi', 42000, 25, 4.3, '2023-08-05'),
(20, 'Samsung 43-inch TV', 'Television', 'Samsung', 38000, 40, 4.2, '2023-06-09');


1. Fetch all products whose price is greater than 50,000.
SELECT * FROM Product_Data
SELECT 
product_name, price
FROM Product_Data 
where price > 50000;
2. Fetch all Apple products.
select 
product_name, brand
from Product_Data
where brand in ('apple');
3. List products launched in 2023.
select product_name, launch_date
from Product_Data
where launch_date = '2023-01-30' OR launch_date = '2023-12- 30';
4. Fetch products where rating is above 4.5.
SELECT * FROM Product_Data
WHERE rating > 4.5;
5. Fetch products where stock is between 30 and 100.
6. Fetch all products whose category is NOT ‘Mobile’.
7. Fetch products whose name contains ‘Pro’, ‘Max’, or ‘Air’.
8. Fetch all Samsung products priced below 40,000.
9. List all products ordered by price (high → low).
10. Count products in each category (GROUP BY).
11. Find average price for each brand (GROUP BY).
12. Find total stock available for each category.
13. Fetch categories with maximum price per category (GROUP BY).
14. List products where brand name starts with ‘S’.
15. Fetch products whose product_name ends with digit (if any).
16. Fetch all products launched before Jan 2023.
17. Find total price of all laptops.
18. Count number of mobile phones with rating > 4.2.
19. Group products by brand and show total stock.
20. Fetch all products where product_name contains exactly 2 words.