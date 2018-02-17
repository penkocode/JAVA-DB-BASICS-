SELECT 
    e.employee_id,
    e.first_name,
    CASE
        WHEN p.start_date >= '2005-01-01' THEN NULL
        ELSE p.name
    END AS project_name
FROM
    employees AS e
        JOIN
    employees_projects AS ep ON ep.employee_id = e.employee_id
        JOIN
    projects AS p ON p.project_id = ep.project_id
WHERE
    e.employee_id = 24 ORDER BY `project_name`;