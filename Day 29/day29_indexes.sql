CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);


INSERT INTO customers VALUES
(1, 'Ravi', 'ravi@gmail.com', 'Chennai'),
(2, 'Indu', 'indu@yahoo.com', 'Mumbai'),
(3, 'Manoj', 'manoj@outlook.com', 'Bangalore'),
(4, 'Sita', 'sita@gmail.com', 'Delhi'),
(5, 'Arun', 'arun@gmail.com', 'Chennai');

SELECT * FROM customers;

CREATE INDEX idx_city
ON customers(city);

CREATE UNIQUE INDEX idx_email
ON customers(email);


SELECT *
FROM customers
WHERE city = 'Chennai';



