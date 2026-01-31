-- Step 1: Create table
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    sales INT,
    profit INT
);

-- Step 1: Insert data
INSERT INTO sales VALUES
(1001, '2024-01-01', 'South', 15000, 3000),
(1002, '2024-01-03', 'West', 20000, 1000),
(1003, '2024-01-05', 'East', 8000, -500),
(1004, '2024-01-07', 'North', 25000, 6000),
(1005, '2024-01-10', 'South', 12000, 0);

-- Step 2: View all sales data
SELECT * FROM sales;

-- Step 2: Filter by region
SELECT * FROM sales WHERE region = 'South';


-- Step 2: Select specific columns
SELECT order_id, region, sales FROM sales;

-- Step 2: Find loss-making orders
SELECT * FROM sales WHERE profit < 0;



