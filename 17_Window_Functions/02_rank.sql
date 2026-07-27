SELECT
    emp_name,
    dept_id,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;
