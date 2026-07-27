ALTER TABLE employee
ADD UNIQUE (address);

ALTER TABLE employee
ADD CHECK (dept_id > 100);
