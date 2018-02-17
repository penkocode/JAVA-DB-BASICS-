SELECT 
    e.employee_id,
    e.first_name,
    e.manager_id,
    empl.first_name AS 'manager_name'
FROM
    employees AS e
        JOIN
    employees AS empl ON empl.employee_id = e.manager_id
WHERE
    e.manager_id IN (3 , 7)
ORDER BY e.first_name ASC;