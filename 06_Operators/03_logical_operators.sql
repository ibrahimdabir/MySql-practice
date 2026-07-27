SELECT emp_name, gender, salary
FROM employee
WHERE gender = 'female' AND salary > 2500;

SELECT emp_name, gender, salary
FROM employee
WHERE gender = 'female' OR salary > 4000;

SELECT emp_name, gender
FROM employee
WHERE NOT gender = 'male';
