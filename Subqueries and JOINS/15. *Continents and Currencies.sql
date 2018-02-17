SELECT 
    cu1.continent_code, cu1.currency_code, cu1.currency_usage
FROM
    (SELECT 
        c.continent_code,
            c.currency_code,
            COUNT(c.currency_code) AS 'currency_usage'
    FROM
        countries AS c
    GROUP BY c.currency_code , c.continent_code
    HAVING currency_usage >= 2) AS cu1
        LEFT JOIN
    (SELECT 
        c.continent_code,
            c.currency_code,
            COUNT(c.currency_code) AS 'currency_usage'
    FROM
        countries AS c
    GROUP BY c.currency_code , c.continent_code
    HAVING currency_usage >= 2) AS cu2 ON cu1.continent_code = cu2.continent_code
        AND cu2.currency_usage > cu1.currency_usage
WHERE
    cu2.currency_usage IS NULL
ORDER BY cu1.continent_code , cu1.currency_code;