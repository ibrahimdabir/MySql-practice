CREATE TABLE IF NOT EXISTS department (
    dept_id   VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

INSERT INTO department (dept_id, dept_name) VALUES
('101', 'Human Resources'),
('102', 'Engineering'),
('103', 'Sales'),
('104', 'Marketing');

SELECT e.emp_name, e.salary, d.dept_name
FROM employee e
INNER JOIN department d ON e.dept_id = d.dept_id;
