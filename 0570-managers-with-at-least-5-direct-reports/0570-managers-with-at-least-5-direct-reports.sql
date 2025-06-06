# Write your MySQL query statement below
SELECT name
FROM (
    SELECT  e1.id,
            e1.name, 
            COUNT(e1.id) AS n
    FROM Employee AS e1
    LEFT JOIN Employee AS e2
    ON e1.id = e2.managerId
    GROUP BY 1,2
    HAVING n > 4
) AS t1;