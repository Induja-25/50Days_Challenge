CREATE TABLE employee_salary (
    emp_id INT,
    department VARCHAR(50),
    salary INT
);

INSERT INTO employee_salary VALUES
(1, 'IT', 60000),
(2, 'IT', 75000),
(3, 'IT', 75000),
(4, 'HR', 50000),
(5, 'HR', 55000),
(6, 'Finance', 80000),
(7, 'Finance', 70000);


SELECT * FROM employee_salary;


SELECT 
    emp_id,
    department,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee_salary;


SELECT 
    emp_id,
    department,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS rank_num
FROM employee_salary;


SELECT 
    emp_id,
    department,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS dense_rank
FROM employee_salary;


SELECT 
    emp_id,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank
FROM employee_salary;

SELECT *
FROM (
    SELECT 
        emp_id,
        department,
        salary,
        ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn
    FROM employee_salary
) t
WHERE rn <= 2;
