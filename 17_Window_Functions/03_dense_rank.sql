SELECT
    emp_name,
    dept_id,
    salary,
    DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_dense_rank
FROM employee;
