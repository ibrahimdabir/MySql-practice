SELECT MIN(salary) AS lowest_salary FROM employee;

SELECT dept_id, MIN(salary) AS lowest_dept_salary
FROM employee
GROUP BY dept_id;
