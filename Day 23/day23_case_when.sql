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
(105, 'South', 12000, 0);

SELECT * FROM  sales_data

SELECT 
    order_id,
    sales,
    profit,
    CASE 
        WHEN profit > 0 THEN 'Profit'
        WHEN profit = 0 THEN 'Break Even'
        ELSE 'Loss'
    END AS profit_status
FROM sales_data;


SELECT 
    order_id,
    sales,
    CASE 
        WHEN sales >= 20000 THEN 'High Sales'
        WHEN sales >= 10000 THEN 'Medium Sales'
        ELSE 'Low Sales'
    END AS sales_category
FROM sales_data;


SELECT 
    region,
    SUM(sales) AS total_sales,
    CASE 
        WHEN SUM(sales) > 30000 THEN 'Top Region'
        ELSE 'Normal Region'
    END AS region_performance
FROM sales_data
GROUP BY region;


SELECT 
    CASE 
        WHEN profit > 0 THEN 'Profit'
        ELSE 'Non-Profit'
    END AS status,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY 
    CASE 
        WHEN profit > 0 THEN 'Profit'
        ELSE 'Non-Profit'
    END;
