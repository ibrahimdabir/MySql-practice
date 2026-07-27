CREATE TABLE employee (
    emp_id     INT PRIMARY KEY,
    emp_name   VARCHAR(30) NOT NULL,
    dob        DATE,
    gender     VARCHAR(10),
    dept_id    CHAR(10),
    salary     DECIMAL(8,2) CHECK (salary > 1000 AND salary <= 5000),
    contact    CHAR(10) UNIQUE,
    email_id   VARCHAR(50) UNIQUE,
    address    VARCHAR(100)
);
