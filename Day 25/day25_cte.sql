CREATE TABLE sales_data (
    order_id INT,
    region VARCHAR(50),
    sales INT,
    profit INT
);

INSERT INTO sales_data VALUES
(101, 'South', 15000, 3000),
(102, 'West', 20000, 1000),
(103, 'East', 8000, -500),
(104, 'North', 25000, 6000),
(105, 'South', 12000, 0),
(106, 'West', 30000, 7000);


SELECT * FROM sales_data;

WITH regional_sales AS (
    SELECT 
        region,
        SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY region
)

SELECT *
FROM regional_sales;


WITH regional_sales AS (
    SELECT 
        region,
        SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY region
)

SELECT *
FROM regional_sales
WHERE total_sales > 30000;


WITH ranked_regions AS (
    SELECT 
        region,
        SUM(sales) AS total_sales,
        RANK() OVER (ORDER BY SUM(sales) DESC) AS sales_rank
    FROM sales_data
    GROUP BY region
)

SELECT *
FROM ranked_regions;


WITH total_sales AS (
    SELECT SUM(sales) AS overall_sales
    FROM sales_data
),
regional_sales AS (
    SELECT region, SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY region
)

SELECT 
    r.region,
    r.total_sales,
    (r.total_sales * 100.0 / t.overall_sales) AS sales_percentage
FROM regional_sales r, total_sales t;
