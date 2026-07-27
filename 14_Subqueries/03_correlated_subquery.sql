SELECT e1.emp_name, e1.dept_id, e1.salary
FROM employee e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.dept_id = e1.dept_id
);

SELECT e1.emp_name, e1.dept_id, e1.salary
FROM employee e1
WHERE e1.salary = (
    SELECT MAX(e2.salary)
    FROM employee e2
    WHERE e2.dept_id = e1.dept_id
);
