-- Question 7

SELECT
    firstname
    || ' '
    || lastname AS fullname,
    departmentname
FROM
    assign    a
    INNER JOIN worker    w ON w.empid = a.empid
    INNER JOIN dept      d ON d.departmentid = w.departmentid
WHERE
    a.projno = 1019;