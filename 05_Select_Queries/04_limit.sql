SELECT emp_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

SELECT emp_name, salary
FROM employee
ORDER BY salary DESC
LIMIT 5 OFFSET 5;
