

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    region VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);



INSERT INTO customers VALUES
(1, 'Ravi', 'South'),
(2, 'Indu', 'West'),
(3, 'Manoj', 'East'),
(4, 'Sita', 'North');

INSERT INTO orders VALUES
(101, 1, '2024-01-05', 15000),
(102, 2, '2024-01-10', 20000),
(103, 1, '2024-02-15', 12000),
(104, 3, '2024-02-20', 8000),
(105, 4, '2024-03-01', 25000),
(106, 2, '2024-03-10', 30000);



SELECT 
    c.region,
    SUM(o.amount) AS total_sales
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY total_sales DESC;



SELECT 
    c.customer_name,
    SUM(o.amount) AS total_spent
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;



SELECT 
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS monthly_sales
FROM orders
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY month;



SELECT 
    order_id,
    amount,
    CASE
        WHEN amount >= 25000 THEN 'High Value'
        WHEN amount >= 15000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS order_category
FROM orders;



SELECT 
    c.customer_name,
    SUM(o.amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(o.amount) DESC) AS spending_rank
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name;
