SELECT e.emp_name, d.dept_id, d.dept_name
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id;

SELECT d.dept_id, d.dept_name
FROM employee e
RIGHT JOIN department d ON e.dept_id = d.dept_id
WHERE e.emp_id IS NULL;
