SELECT UPPER(emp_name) AS name_upper FROM employee;
SELECT LOWER(emp_name) AS name_lower FROM employee;

SELECT UPPER(emp_name) AS employee_name, salary, dept_id
FROM employee
WHERE dept_id IN ('101', '102', '103')
  AND salary BETWEEN 2000 AND 5000
ORDER BY salary DESC
LIMIT 5;
