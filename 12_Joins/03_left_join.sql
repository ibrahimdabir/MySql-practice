SELECT e.emp_name, e.dept_id, d.dept_name
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id;

SELECT e.emp_name, e.dept_id
FROM employee e
LEFT JOIN department d ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;
