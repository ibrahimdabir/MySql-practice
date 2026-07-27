ALTER TABLE employee
CHANGE COLUMN phone_number contact CHAR(10) UNIQUE;

ALTER TABLE employee
CHANGE COLUMN job_title role_title VARCHAR(40);

ALTER TABLE employee
CHANGE COLUMN role_title job_title VARCHAR(30);
