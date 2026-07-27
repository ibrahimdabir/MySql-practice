ALTER TABLE employee
RENAME COLUMN contact TO phone_number;

ALTER TABLE employee
RENAME TO staff;

ALTER TABLE staff
RENAME TO employee;
