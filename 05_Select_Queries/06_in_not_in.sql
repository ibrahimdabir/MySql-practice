SELECT emp_name, dept_id
FROM employee
WHERE dept_id IN ('101', '102', '103');

SELECT emp_name, dept_id
FROM employee
WHERE dept_id NOT IN ('101', '102');
