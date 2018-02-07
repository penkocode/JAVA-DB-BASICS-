SELECT 
   department_id ,max(salary)
   AS 'max_salary' 
   FROM employees
   GROUP BY department_id
   HAVING max(salary) NOT BETWEEN '30000'AND '70000';
   