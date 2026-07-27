DELIMITER //

CREATE PROCEDURE get_all_employees()
BEGIN
    SELECT * FROM employee;
END //

DELIMITER ;

CALL get_all_employees();
