# Write your MySQL query statement below
SELECT month, 
       country, 
       COUNT(month) AS trans_count, 
       SUM(CASE WHEN state='approved' THEN 1 ELSE 0 END) AS approved_count, 
       SUM(amount) AS trans_total_amount, 
       SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM(
    SELECT *,
        CONCAT(CAST(YEAR(trans_date) AS CHAR), '-', CAST(LPAD(MONTH(trans_date), 2, '0') AS CHAR)) AS month
    FROM Transactions
) AS t1
GROUP BY 1,2;