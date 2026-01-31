-- Create sales table
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    sales INT,
    profit INT
);

-- Insert data
INSERT INTO sales VALUES
(1001, '2024-01-01', 'South', 15000, 3000),
(1002, '2024-01-03', 'West', 20000, 4000),
(1003, '2024-01-05', 'East', 8000, -500),
(1004, '2024-01-07', 'North', 25000, 6000),
(1005, '2024-01-10', 'South', 12000, 0);

-- Order by sales (ascending)
SELECT *
FROM sales
ORDER BY sales;

-- Order by sales (descending)
SELECT *
FROM sales
ORDER BY sales DESC;

-- Get unique regions
SELECT DISTINCT region
FROM sales;

-- Top 3 highest sales
SELECT *
FROM sales
ORDER BY sales DESC
LIMIT 3;

-- Top 2 profitable orders
SELECT *
FROM sales
WHERE profit > 0
ORDER BY profit DESC
LIMIT 2;
