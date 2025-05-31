# Write your MySQL query statement below
SELECT   a.student_id,
         a.student_name, 
         b.subject_name, 
         COUNT(c.subject_name) AS attended_exams 
FROM Students as a 
CROSS JOIN Subjects as b 
LEFT JOIN Examinations as c 
ON  a.student_id = c.student_id AND
    b.subject_name = c.subject_name  
GROUP BY 1,2,3
ORDER BY 1, 3;