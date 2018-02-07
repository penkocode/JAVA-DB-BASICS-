CREATE TABLE new_table AS
SELECT * 
   FROM employees
   WHERE salary > 30000;
   
   DELETE FROM new_table
   WHERE manager_id = 42;
   
   UPDATE new_table 
SET 
    salary = salary + 5000
WHERE
    department_id = 1;
   
   SELECT department_id,avg(salary) AS 'avg_salary'
   FROM new_table
   GROUP BY department_id;