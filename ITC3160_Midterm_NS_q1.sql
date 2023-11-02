-- Question 1

SELECT
    firstname
    || ' '
    || lastname AS fullname
FROM
    worker   w
    INNER JOIN dept     d ON w.departmentid = d.departmentid
WHERE
    salary > 30000
    AND departmentname = 'Development';