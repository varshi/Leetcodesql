# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1, Weather w2
WHERE w1.temperature > w2.temperature
AND SUBDATE(w1.recordDate, 1) = w2.recordDate
