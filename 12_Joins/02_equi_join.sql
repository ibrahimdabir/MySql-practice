SELECT e.emp_name, e.salary, d.dept_name
FROM employee e
JOIN department d
  ON e.dept_id = d.dept_id;

SELECT e.emp_name, e.salary, d.dept_name
FROM employee e, department d
WHERE e.dept_id = d.dept_id;
