
-- Table 1: customers
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    region VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Vishal', 'South'),
(2, 'Indu', 'West'),
(3, 'Poorni', 'East'),
(4, 'Sita', 'North');

SELECT * FROM customers;
-- Table 2: orders
CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_amount INT
);

INSERT INTO orders VALUES
(101, 1, 15000),
(102, 2, 20000),
(103, 1, 12000),
(104, 3, 8000),
(105, 5, 10000);  
SELECT * FROM orders;

-- 1. INNER JOIN
-- Returns only matching records from both tables
SELECT
    o.order_id,
    c.customer_name,
    c.region,
    o.order_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;



-- 2. LEFT JOIN
-- Returns all orders, even if customer data is missing
SELECT
    o.order_id,
    c.customer_name,
    c.region,
    o.order_amount
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id;



-- 3. Identify Orders WITHOUT Customers (Interview Question)
SELECT
    o.order_id,
    o.order_amount
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;



-- 4. Total Order Amount by Region (JOIN + GROUP BY)
SELECT
    c.region,
    SUM(o.order_amount) AS total_sales
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.region;



-- 5. JOIN with WHERE condition
-- Orders greater than 10000
SELECT
    c.customer_name,
    o.order_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
WHERE o.order_amount > 10000;
