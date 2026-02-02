
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

SELECT * FROM sales; 
-- Total sales by region
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- Average sales by region
SELECT region, AVG(sales) AS avg_sales
FROM sales
GROUP BY region;

-- Total profit by region
SELECT region, SUM(profit) AS total_profit
FROM sales
GROUP BY region;

-- Count orders by region
SELECT region, COUNT(*) AS order_count
FROM sales
GROUP BY region;

-- Group by with WHERE (filter before grouping)
SELECT region, SUM(sales) AS total_sales
FROM sales
WHERE profit > 0
GROUP BY region;

-- Group by with ORDER BY (rank regions)
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region
ORDER BY total_sales DESC;
