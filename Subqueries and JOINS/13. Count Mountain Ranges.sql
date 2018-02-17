SELECT 
    mc.country_code, COUNT(country_code) AS mountain_range
FROM
    mountains_countries AS mc
GROUP BY mc.country_code
HAVING country_code IN (SELECT DISTINCT
        c.country_code
    FROM
        countries AS c
    WHERE
        c.country_name IN ('Bulgaria', 'Russia', 'United States'))
ORDER BY mountain_range DESC;

