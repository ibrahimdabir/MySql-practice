SELECT emp_name, MID(emp_name, 1, 3) AS first_three_letters
FROM employee;

SELECT emp_name, MID(emp_name, -3, 3) AS last_three_letters
FROM employee;
