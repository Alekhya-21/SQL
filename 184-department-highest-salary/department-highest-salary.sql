# Write your MySQL query statement below
SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary
FROM Employee e,Department d
WHERE e.departmentId=d.id AND
(e.departmentId,e.salary) IN(
    SELECT e.departmentId,Max(e.salary)
    FROM Employee e
    GROUP BY e.departmentId
)