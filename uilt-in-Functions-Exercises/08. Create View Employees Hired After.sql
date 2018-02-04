CREATE VIEW v_employees_hired_after_2000 AS SELECT first_name,last_name FROM employees WHERE(SELECT YEAR(hire_date)) >= 2001;
SELECT first_name,last_name FROM v_employees_hired_after_2000 ; 