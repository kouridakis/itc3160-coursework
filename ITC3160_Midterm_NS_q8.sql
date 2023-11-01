-- Question 8

SELECT
    w.firstname
    || ' '
    || w.lastname AS fullname,
    a.rating
FROM
    worker    w
    INNER JOIN assign    a ON w.empid = a.empid
    INNER JOIN project   p ON a.projno = p.projno
WHERE
    p.projmgrid = (
        SELECT
            empid
        FROM
            worker
        WHERE
            lastname = 'Liu'
            AND firstname = 'Jun-Min'
    )
ORDER BY
    w.lastname ASC,
    w.firstname ASC;