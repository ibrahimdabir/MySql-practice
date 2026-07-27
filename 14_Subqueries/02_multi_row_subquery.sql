SELECT emp_name, dept_id
FROM employee
WHERE dept_id IN (
    SELECT dept_id FROM employee
    GROUP BY dept_id
    HAVING COUNT(*) > 1
);

SELECT emp_name, salary
FROM employee
WHERE salary > ALL (
    SELECT salary FROM employee WHERE dept_id = '104'
);

SELECT emp_name, salary
FROM employee
WHERE salary > ANY (
    SELECT salary FROM employee WHERE dept_id = '104'
);
