CREATE TABLE employees (
    emp_id INT,
    department VARCHAR(50),
    salary INT,
    performance_rating INT
);

INSERT INTO employees VALUES
(1, 'IT', 60000, 4),
(2, 'HR', 45000, 3),
(3, 'IT', 70000, 5),
(4, 'Finance', 80000, 4),
(5, 'HR', 40000, 2),
(6, 'Finance', 75000, 5),
(7, 'IT', 65000, 3),
(8, 'HR', 50000, 4);

SELECT * FROM employees;

SELECT 
    department,
    AVG(salary) AS avg_salary,
    AVG(performance_rating) AS avg_rating,
    COUNT(*) AS emp_count
FROM employees
WHERE salary > 50000
GROUP BY department
HAVING 
    AVG(salary) > 60000
    AND AVG(performance_rating) >= 4;
