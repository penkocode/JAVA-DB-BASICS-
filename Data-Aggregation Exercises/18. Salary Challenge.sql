SELECT 
    e.first_name, e.last_name, e.department_id
FROM
    employees AS e
        JOIN
    (SELECT 
        e.department_id, AVG(e.salary) AS avgs
    FROM
        employees AS e
    GROUP BY e.department_id) AS avgSalaries ON e.department_id = avgSalaries.department_id
WHERE
    e.salary > avgSalaries.avgs
ORDER BY e.department_id
LIMIT 10;