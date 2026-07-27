SELECT
    emp_name,
    dept_id,
    salary,
    RANK() OVER (PARTITION BY dept_id ORDER BY salary DESC) AS dept_salary_rank
FROM employee;

SELECT
    emp_name,
    dept_id,
    salary,
    SUM(salary) OVER (PARTITION BY dept_id ORDER BY emp_id) AS running_dept_total
FROM employee;
