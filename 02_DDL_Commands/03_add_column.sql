ALTER TABLE employee
ADD job_title VARCHAR(30);

UPDATE employee
SET job_title = 'Employee'
WHERE job_title IS NULL;
