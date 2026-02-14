SELECT eni.unique_id, e.name 
FROM Employees e
LEFT JOIN EmployeeUNI eni
ON e.id = eni.id;
