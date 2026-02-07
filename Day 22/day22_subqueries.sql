CREATE TABLE products (
    product_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price INT
);

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 60000),
(2, 'Mobile', 'Electronics', 30000),
(3, 'Chair', 'Furniture', 5000),
(4, 'Table', 'Furniture', 10000),
(5, 'Headphones', 'Electronics', 2000);

SELECT * FROM products;

SELECT product_name, price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);


SELECT product_name, price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);


SELECT product_name
FROM products
WHERE category = (
    SELECT category
    FROM products
    WHERE product_name = 'Laptop'
);


SELECT product_name, price
FROM products
WHERE category IN (
    SELECT category
    FROM products
    WHERE price > 20000
);


SELECT 
    product_name,
    price,
    (SELECT AVG(price) FROM products) AS average_price
FROM products;
