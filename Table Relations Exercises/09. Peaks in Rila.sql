SELECT 
    mountains.mountain_range AS 'mountain_range',
    peaks.peak_name AS 'peak_name',
    peaks.elevation AS 'peak_elevation'
FROM
    peaks
        JOIN
    mountains ON mountains.id = peaks.mountain_id
WHERE
    mountain_id = 17
        AND mountain_range = 'Rila'
ORDER BY elevation DESC;