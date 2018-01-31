CREATE VIEW v_employees_job_titles AS SELECT concat(first_name,' ',ifnull(middle_name,''),' ',last_name) AS full_name,job_title FROM employees;
