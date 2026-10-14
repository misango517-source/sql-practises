SELECT * FROM Employees

SELECT COUNT(*) FROM Employees
WHERE Department ='Marketing';

SELECT AVG(Salary) AS avgsalary
FROM Employees
WHERE Department = 'IT'; 

SELECT MAX(Salary) 
FROM Employees
WHERE Department NOT IN('Finance');

SELECT SUM(Salary) AS TotalPayroll
FROM Employees

SELECT FirstName, LastNmae, HireDate
FROM Employees
ORDER BY HireDate DESC
LIMIT 2;

SELECT FirstName, LastNmae, HireDate
FROM Employees
ORDER BY HireDate ASC
LIMIT 3;


SELECT FirstName, LastNmae ,HireDate EXTRACT(YEAR FROM AGE(CURRENT_DATE, HireDate)) AS YearsEmployed
FROM Employees;

SELECT COUNT(*) AS HiredIn2020
FROM Employees
WHERE EXTRACT(YEAR FROM HireDate) =2020;

SELECT 
Department AS Deptname,
COUNT(*) AS Numberofstaff,
MIN(HireDate) AS Earliesthiredate
FROM Employees
GROUP BY Department;
