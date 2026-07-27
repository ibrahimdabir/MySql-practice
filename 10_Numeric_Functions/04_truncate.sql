SELECT TRUNCATE(3.789, 2) AS truncated;
SELECT TRUNCATE(3.789, 0) AS truncated_whole;

SELECT emp_name, salary, TRUNCATE(salary, 0) AS salary_whole
FROM employee;
