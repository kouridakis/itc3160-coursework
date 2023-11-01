-- Question 4

SELECT
    w.firstname
    || ' '
    || w.lastname AS fullname
FROM
    worker   w
    INNER JOIN assign   a ON w.empid = a.empid
WHERE
    a.projno = 1040
ORDER BY
    lastname ASC,
    firstname ASC;