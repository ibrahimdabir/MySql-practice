SELECT emp_name,
       salary,
       salary + 500  AS after_bonus,
       salary - 200  AS after_deduction,
       salary * 1.1  AS after_10_percent_raise,
       salary / 12   AS monthly_equivalent,
       salary % 1000 AS remainder_over_1000
FROM employee;
