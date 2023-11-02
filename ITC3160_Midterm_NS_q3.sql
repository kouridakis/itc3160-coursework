-- Question 3

SELECT
    projno,
    projname,
    round(budget / 3) AS annualbudget
FROM
    project;