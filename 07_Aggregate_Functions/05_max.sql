SELECT MAX(salary) AS highest_salary FROM employee;

SELECT dept_id, MAX(salary) AS highest_dept_salary
FROM employee
GROUP BY dept_id;
