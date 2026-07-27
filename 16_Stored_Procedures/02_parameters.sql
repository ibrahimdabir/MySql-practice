DELIMITER //

CREATE PROCEDURE get_employees_by_dept(IN p_dept_id CHAR(10))
BEGIN
    SELECT emp_name, salary
    FROM employee
    WHERE dept_id = p_dept_id;
END //

CREATE PROCEDURE get_dept_avg_salary(IN p_dept_id CHAR(10), OUT p_avg_salary DECIMAL(8,2))
BEGIN
    SELECT AVG(salary) INTO p_avg_salary
    FROM employee
    WHERE dept_id = p_dept_id;
END //

DELIMITER ;
