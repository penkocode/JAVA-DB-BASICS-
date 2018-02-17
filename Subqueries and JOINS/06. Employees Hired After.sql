SELECT 
    e.first_name,
    e.last_name,
    DATE_FORMAT(e.hire_date, '%Y-%m-%d %H:%i:%s') AS 'hire_date',
    d.name AS 'dept_name'
FROM
    employees AS e
        JOIN
    departments AS d ON d.department_id = e.department_id
WHERE
    e.hire_date >= '1999-01-02'
        AND d.name IN ('Sales' , 'Finance')
ORDER BY e.hire_date ASC;