SELECT 
    e.employee_id,
    CONCAT(e.first_name, ' ', e.last_name) AS 'employee_name',
    CONCAT(empl.first_name, ' ', empl.last_name) AS 'manager_name',
    d.name AS 'department_name'
FROM
    employees AS e
        JOIN
    employees AS empl ON empl.employee_id = e.manager_id
        JOIN
    departments AS d ON d.department_id = e.department_id
WHERE
    e.manager_id IS NOT NULL
ORDER BY e.employee_id
LIMIT 5;
