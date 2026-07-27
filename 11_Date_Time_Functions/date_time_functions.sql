SELECT NOW();
SELECT SYSDATE();

SELECT CURDATE() AS today;
SELECT CURTIME() AS time_now;
SELECT DAY('2004-10-17') AS day_of_month;

SELECT emp_name, dob, DAY(dob) AS birth_day
FROM employee;
SELECT DAYOFMONTH('2004-10-17') AS day_of_month;

SELECT emp_name, dob, DAYOFMONTH(dob) AS birth_day
FROM employee;

SELECT DAYOFWEEK('2004-10-17') AS day_of_week;
SELECT DAYOFYEAR('2004-10-17') AS day_of_year;
SELECT DAYNAME('2004-10-17') AS weekday_name;

SELECT emp_name, dob, DAYNAME(dob) AS birth_weekday
FROM employee;

SELECT MONTHNAME('2004-10-17') AS month_name;
SELECT DATE(NOW()) AS today_date;
SELECT DATE('2004-10-17 14:30:00') AS date_only;

SELECT emp_name, dob, YEAR(dob) AS birth_year, MONTH(dob) AS birth_month
FROM employee;

SELECT emp_name, DATEDIFF(CURDATE(), dob) AS days_since_birth
FROM employee;

SELECT DATE_ADD(CURDATE(), INTERVAL 30 DAY) AS thirty_days_from_now;
SELECT DATE_SUB(CURDATE(), INTERVAL 1 YEAR) AS one_year_ago;

SELECT emp_name, TIMESTAMPDIFF(YEAR, dob, CURDATE()) AS age_in_years
FROM employee;
