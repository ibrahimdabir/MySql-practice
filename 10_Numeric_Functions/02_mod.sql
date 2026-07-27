SELECT MOD(10, 3) AS remainder;
SELECT emp_name, MOD(emp_id, 2) AS is_odd_id FROM employee;

SELECT emp_name, emp_id % 2 AS is_odd_id FROM employee;
