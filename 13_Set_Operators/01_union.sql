SELECT emp_name FROM employee WHERE dept_id = '101'
UNION
SELECT emp_name FROM employee WHERE salary > 4000;
