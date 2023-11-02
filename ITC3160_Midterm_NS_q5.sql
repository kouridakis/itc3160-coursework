-- Question 5

SELECT
    firstname
    || ' '
    || lastname AS fullname
FROM
    worker   w
    INNER JOIN dept     d ON w.departmentid = d.departmentid
WHERE
    departmentname = 'Development'
    AND salary > (
        SELECT
            AVG(salary)
        FROM
            worker   w
            INNER JOIN dept     d ON w.departmentid = d.departmentid
        WHERE
            departmentname = 'Development'
    );