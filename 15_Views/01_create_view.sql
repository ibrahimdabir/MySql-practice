CREATE VIEW high_earners AS
SELECT emp_name, dept_id, salary
FROM employee
WHERE salary > 3500;

SELECT * FROM high_earners
ORDER BY salary DESC;
