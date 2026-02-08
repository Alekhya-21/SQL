# Write your MySQL query statement below
SELECT A.name as Employee
FROM Employee as A
JOIN Employee as B
ON A.managerId=B.id
WHERE A.salary>B.salary