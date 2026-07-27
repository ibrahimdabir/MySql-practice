SELECT FLOOR(3.75) AS floor_result;
SELECT CEIL(3.05) AS ceil_result;
SELECT CEILING(3.05) AS ceiling_result;

SELECT emp_name, salary, FLOOR(salary) AS salary_floor, CEIL(salary) AS salary_ceiling
FROM employee;
