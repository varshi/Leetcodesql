# Write your MySQL query statement below
SELECT query_name, 
       ROUND(SUM(quality) / COUNT(*), 2) AS quality,
       ROUND((SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS poor_query_percentage
FROM (
    SELECT *, rating / position AS quality
    FROM Queries
    WHERE query_name IS NOT NULL
) AS t1
GROUP BY query_name;