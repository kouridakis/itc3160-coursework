-- Question 6

SELECT
    *
FROM
    project
WHERE
    expecteddurationweeks = (
        SELECT
            MIN(expecteddurationweeks)
        FROM
            project
    );