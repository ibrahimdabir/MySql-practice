SELECT SIGN(-25) AS sign_value;
SELECT SIGN(0)   AS sign_value;
SELECT SIGN(25)  AS sign_value;

SELECT emp_name,
       salary,
       SIGN(salary - 3000) AS above_or_below_3000
FROM employee;
