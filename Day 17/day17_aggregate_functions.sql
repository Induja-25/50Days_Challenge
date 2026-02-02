-- Create sales table
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    sales INT,
    profit INT
);
select * from sales;

-- Insert data
INSERT INTO sales VALUES
(1001, '2024-01-01', 'South', 15000, 3000),
(1002, '2024-01-03', 'West', 20000, 4000),
(1003, '2024-01-05', 'East', 8000, -500),
(1004, '2024-01-07', 'North', 25000, 6000),
(1005, '2024-01-10', 'South', 12000, 0);

-- Total number of orders
SELECT COUNT(*) AS total_orders
FROM sales;

-- Total sales
SELECT SUM(sales) AS total_sales
FROM sales;

-- Average sales
SELECT AVG(sales) AS average_sales
FROM sales;

-- Minimum sales
SELECT MIN(sales) AS minimum_sales
FROM sales;

-- Maximum sales
SELECT MAX(sales) AS maximum_sales
FROM sales;

-- Total sales for South region
SELECT SUM(sales) AS south_sales
FROM sales
WHERE region = 'South';

-- Count of profitable orders
SELECT COUNT(*) AS profitable_orders
FROM sales
WHERE profit > 0;
