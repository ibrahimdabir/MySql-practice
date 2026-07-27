SELECT SUM(salary) AS total_salary_payout FROM employee;

SELECT dept_id, SUM(salary) AS dept_total_salary
FROM employee
GROUP BY dept_id;
