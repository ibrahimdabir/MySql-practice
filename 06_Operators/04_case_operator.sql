SELECT
    emp_name,
    salary,
    CASE
        WHEN salary >= 4000 THEN 'High'
        WHEN salary >= 2500 THEN 'Medium'
        ELSE 'Low'
    END AS salary_level
FROM employee;

SELECT
    emp_name,
    salary,
    IF(salary >= 3000, 'Above Average', 'Below Average') AS salary_band
FROM employee;
