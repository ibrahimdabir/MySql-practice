SELECT dept_id, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employee
GROUP BY dept_id;
