SELECT 
    SUM(sdfr.difference) AS 'sum_difference'
FROM
    (SELECT 
        wzFirst.first_name AS 'host_wizard',
            wzFirst.deposit_amount AS 'host_wizard_deposit',
            wzSecond.first_name AS 'guest_wizard',
            wzSecond.deposit_amount AS 'guest_wizard_deposit',
            (wzFirst.deposit_amount - wzSecond.deposit_amount) AS 'difference'
    FROM
        wizzard_deposits AS wzFirst, wizzard_deposits AS wzSecond
    WHERE
        wzFirst.id = wzSecond.id - 1) AS sdfr;