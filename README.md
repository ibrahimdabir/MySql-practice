# MySQL Learning Repository

A structured, topic-wise collection of MySQL queries and concepts — from database basics to window functions — built around a single running example (`employee` / `department`) so every concept connects to the others.

## 📚 Topics Covered

- Database creation & selection
- DDL: CREATE, ALTER (ADD / MODIFY / RENAME / CHANGE / DROP columns)
- DML: INSERT, UPDATE, DELETE
- Constraints: PRIMARY KEY, NOT NULL, UNIQUE, DEFAULT, CHECK
- SELECT queries: WHERE, ORDER BY, LIMIT, BETWEEN, IN/NOT IN, LIKE
- Operators: arithmetic, comparison, logical, CASE / IF
- Aggregate functions: COUNT, SUM, AVG, MIN, MAX
- Grouping: GROUP BY, HAVING
- String functions: UPPER/LOWER, LCASE, LENGTH, MID, LEFT/RIGHT, CONCAT, TRIM
- Numeric functions: POW, MOD, FLOOR/CEIL, TRUNCATE, ABS, SIGN, ROUND
- Date & time functions: NOW/SYSDATE, DAY, DAYOFMONTH, DAYNAME, DATE, SLEEP
- Joins: INNER, EQUI, LEFT, RIGHT
- Set operators: UNION, UNION ALL, INTERSECT, EXCEPT
- Subqueries: single-row, multi-row, correlated
- Views: CREATE, UPDATE/ALTER, DROP
- Stored procedures: parameters (IN/OUT), calling procedures
- Window functions: ROW_NUMBER, RANK, DENSE_RANK, PARTITION BY

## 📁 Repository Structure

```text
MySql/
├── README.md
├── LICENSE
├── .gitignore
│
├── 01_Database_Basics/
│   └── database_basics.sql
├── 02_DDL_Commands/
├── 03_DML_Commands/
├── 04_Constraints/
├── 05_Select_Queries/
├── 06_Operators/
├── 07_Aggregate_Functions/
├── 08_Grouping/
├── 09_String_Functions/
├── 10_Numeric_Functions/
├── 11_Date_Time_Functions/
│   └── date_time_functions.sql
├── 12_Joins/
├── 13_Set_Operators/
├── 14_Subqueries/
├── 15_Views/
├── 16_Stored_Procedures/
├── 17_Window_Functions/
└── 18_Practice/
    └── employee_database.sql   # full self-contained practice script
```

## 🗃️ Example Schema

Most examples run against a single `employee` table (some also join against `department`):

```sql
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
```

## ▶️ How to Run

1. Install MySQL (or use a hosted instance / Docker).
2. Start with `01_Database_Basics/01_create_database.sql` and `02_DDL_Commands/01_create_table.sql` to set up the schema.
3. Run `03_DML_Commands/01_insert.sql` to load sample data.
4. Explore any topic folder — each `.sql` file is self-contained and commented.
5. Or just run `18_Practice/employee_database.sql` top-to-bottom for a full working example in one go.

```bash
mysql -u root -p < 18_Practice/employee_database.sql
```

## 🛠️ Requirements

- MySQL 8.0+ recommended (window functions, `RENAME COLUMN`, and native `INTERSECT`/`EXCEPT` require 8.0+)

## 📄 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.
