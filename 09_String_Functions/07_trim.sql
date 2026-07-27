SELECT TRIM('   Alice   ') AS trimmed_name;

SELECT LTRIM('   Alice') AS left_trimmed;
SELECT RTRIM('Alice   ') AS right_trimmed;

SELECT TRIM(LEADING '0' FROM '00012345') AS no_leading_zeros;
