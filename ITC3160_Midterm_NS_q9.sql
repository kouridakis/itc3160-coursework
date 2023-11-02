-- Question 9

CREATE VIEW projects_and_workers AS
    SELECT
        p.projno,
        p.projname,
        w.empid,
        w.firstname
        || ' '
        || w.lastname AS fullname
    FROM
        project   p
        INNER JOIN assign    a ON a.projno = p.projno
        INNER JOIN worker    w ON w.empid = a.empid;