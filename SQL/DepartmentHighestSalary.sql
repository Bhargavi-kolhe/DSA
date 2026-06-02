SELECT 
d.name AS Department,
e.salary AS Salary,
e.name AS Employee
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
WHERE e.salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);
