SELECT dept_id, COUNT(*) AS total_employees, AVG(salary) AS average_salary
FROM employee
GROUP BY dept_id
HAVING COUNT(*) >= 2
ORDER BY average_salary DESC;

SELECT gender, AVG(salary) AS average_salary
FROM employee
GROUP BY gender
HAVING AVG(salary) > 3000
ORDER BY average_salary DESC;
