CREATE OR REPLACE VIEW high_earners AS
SELECT emp_name, dept_id, salary
FROM employee
WHERE salary > 4000;

ALTER VIEW high_earners AS
SELECT emp_name, dept_id, salary
FROM employee
WHERE salary > 4000;

UPDATE high_earners
SET salary = salary + 100
WHERE emp_name = 'Bob';
