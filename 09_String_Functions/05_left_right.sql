SELECT emp_name, LEFT(emp_name, 3) AS first_three
FROM employee;

SELECT emp_name, RIGHT(emp_name, 3) AS last_three
FROM employee;
