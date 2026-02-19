# Write your MySQL query statement below
SELECT score,
DENSE_RANK() OVER(ORDER by score DESC) AS 'rank' 
FROM Scores;