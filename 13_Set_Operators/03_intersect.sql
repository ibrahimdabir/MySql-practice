SELECT emp_name FROM employee WHERE dept_id = '101'
INTERSECT
SELECT emp_name FROM employee WHERE salary > 3000;

SELECT DISTINCT e1.emp_name
FROM employee e1
WHERE e1.dept_id = '101'
  AND e1.emp_name IN (
      SELECT e2.emp_name FROM employee e2 WHERE e2.salary > 3000
  );
