SELECT ROUND(3.456, 2) AS rounded;
SELECT ROUND(3.456, 0) AS rounded_whole;
SELECT ROUND(3.456) AS rounded_default;

SELECT emp_name, salary, ROUND(salary, 1) AS salary_rounded
FROM employee;
