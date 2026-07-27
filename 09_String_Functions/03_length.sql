SELECT emp_name, LENGTH(emp_name) AS name_length
FROM employee;

SELECT emp_name, CHAR_LENGTH(emp_name) AS char_count
FROM employee;
