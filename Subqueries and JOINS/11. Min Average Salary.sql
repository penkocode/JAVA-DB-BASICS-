SELECT 
    MIN(average_salary)
FROM
    (SELECT 
        AVG(salary) AS average_salary
    FROM
        employees
    GROUP BY department_id) AS min_average_salary;