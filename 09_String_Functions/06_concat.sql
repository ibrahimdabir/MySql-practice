SELECT CONCAT(emp_name, ' - ', dept_id) AS name_and_dept
FROM employee;

SELECT CONCAT_WS(', ', emp_name, address) AS full_info
FROM employee;
