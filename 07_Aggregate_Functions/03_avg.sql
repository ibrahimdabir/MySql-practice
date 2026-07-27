SELECT AVG(salary) AS average_salary FROM employee;

SELECT gender, AVG(salary) AS average_salary
FROM employee
GROUP BY gender;
