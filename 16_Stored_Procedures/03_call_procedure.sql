CALL get_employees_by_dept('102');

CALL get_dept_avg_salary('102', @avg_salary);
SELECT @avg_salary AS department_average_salary;

DROP PROCEDURE IF EXISTS get_all_employees;
