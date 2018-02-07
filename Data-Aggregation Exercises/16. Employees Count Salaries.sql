SELECT 
   count(*) AS 'count'
   FROM employees
   WHERE manager_id IS NULL;