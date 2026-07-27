CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS department;

CREATE TABLE department (
    dept_id   VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    emp_id     INT PRIMARY KEY,
    emp_name   VARCHAR(30) NOT NULL,
    dob        DATE,
    gender     VARCHAR(10),
    dept_id    CHAR(10),
    salary     DECIMAL(8,2) CHECK (salary > 1000 AND salary <= 5000),
    contact    CHAR(10) UNIQUE,
    email_id   VARCHAR(50) UNIQUE,
    address    VARCHAR(100)
);

INSERT INTO department (dept_id, dept_name) VALUES
('101', 'Human Resources'),
('102', 'Engineering'),
('103', 'Sales'),
('104', 'Marketing');

INSERT INTO employee VALUES
(1102, 'Alice',   '2001-05-14', 'female', '102', 3200.50, '0987654321', 'alice@gmail.com',   'Green Street'),
(1103, 'Bob',     '1999-08-22', 'male',   '103', 4500.00, '0987654322', 'bob@gmail.com',     'Main Road'),
(1104, 'Sarah',   '2002-01-10', 'female', '101', 2100.75, '0987654323', 'sarah@gmail.com',   'Lake Road'),
(1105, 'David',   '1998-11-30', 'male',   '104', 3900.25, '0987654324', 'david@gmail.com',   'Park Avenue'),
(1106, 'Emma',    '2000-03-18', 'female', '102', 2800.00, '0987654325', 'emma@gmail.com',    'Hill Street'),
(1107, 'Michael', '1997-07-25', 'male',   '103', 4800.00, '0987654326', 'michael@gmail.com', 'River Road'),
(1108, 'Sophia',  '2003-09-05', 'female', '104', 1750.50, '0987654327', 'sophia@gmail.com',  'Garden Street'),
(1109, 'James',   '1996-12-15', 'male',   '101', 3500.75, '0987654328', 'james@gmail.com',   'Station Road'),
(1110, 'Olivia',  '2001-06-20', 'female', '102', 4200.00, '0987654329', 'olivia@gmail.com',  'Market Street');

SELECT emp_name, dob, email_id FROM employee
WHERE gender = 'female' AND salary > 2500;

SELECT emp_name, salary FROM employee ORDER BY salary DESC;

SELECT dept_id, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employee
GROUP BY dept_id
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;

SELECT emp_name, salary,
       CASE
           WHEN salary >= 4000 THEN 'High'
           WHEN salary >= 2500 THEN 'Medium'
           ELSE 'Low'
       END AS salary_level
FROM employee;

SELECT e.emp_name, e.salary, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;

SELECT emp_name, salary
FROM employee
WHERE salary > (SELECT AVG(salary) FROM employee);

SELECT emp_name, dept_id, salary,
       RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_rank
FROM employee;

CREATE OR REPLACE VIEW high_earners AS
SELECT emp_name, dept_id, salary
FROM employee
WHERE salary > 3500;

SELECT * FROM high_earners;
