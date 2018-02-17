SELECT 
    c.country_name, rv.river_name
FROM
    countries AS c
        LEFT JOIN
    countries_rivers AS cr ON cr.country_code = c.country_code
        LEFT JOIN
    rivers AS rv ON rv.id = cr.river_id
WHERE
    c.continent_code = 'AF'
ORDER BY c.country_name ASC LIMIT 5;
