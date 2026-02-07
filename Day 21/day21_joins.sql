CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    region VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Vishal',  'South'),
(2, 'Indu',  'West'),
(3, 'Poorni', 'East'),
(4, 'Sita',  'North'),
(5, 'Kalai',  'South');

SELECT * FROM customers;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_amount INT
);
INSERT INTO orders VALUES
(101, 1, 15000),
(102, 2, 20000),
(103, 3, 12000),
(104, 3,  8000),
(105, 5, 10000);

SELECT * FROM orders;


RIGHT JOIN ------

SELECT
    o.order_id,
    c.customer_name,
    c.region,
    o.order_amount
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id;

FIND CUSTOMERS WITH NO ORDERS------

SELECT
    c.customer_name,
    c.region
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL;



SELECT
    o.order_id,
    c.customer_name,
    o.order_amount
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id

UNION

SELECT
    o.order_id,
    c.customer_name,
    o.order_amount
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id;


 