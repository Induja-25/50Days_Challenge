CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary INT CHECK (salary > 0),
    department VARCHAR(50) DEFAULT 'General');



INSERT INTO employees VALUES
(1, 'Ravi', 'ravi@gmail.com', 5000, 'IT'),
(2, 'Indu', 'indu@gmail.com', 45000, 'HR'),
(3, 'Manoj', 'manoj@gmail.com', 40000, 'Finance');

INSERT INTO employees (emp_id, emp_name, email, salary)
VALUES (4, 'Sita', 'sita@gmail.com', 38000);


SELECT * FROM employees;