CREATE TABLE Employees(
EmployeeID INT PRIMARY KEY,
FirstName  VARCHAR(50),
LastNmae   VARCHAR(50),
Department VARCHAR(50),
Salary     DECIMAL(10,2),
HireDate   DATE
);


INSERT INTO Employees VALUES
(1, 'Amina', 'Odhiambo', 'Finance', 8500.00, '2019-03-14'),
(2, 'Brian', 'Mwangi', 'IT', 9500.00, '2021-07-01'),
(3, 'Cynthia', 'Wafula', 'IT', 7200.00, '2020-11-23'),
(4, 'David', 'Otieno', 'Marketing', 6000.00, '2018-05-09'),
(5, 'Esther', 'Kamau', 'Finance', 9100.00, '2022-01-17'),
(6, 'Felix', 'Njoroge', 'IT', 10500.00, '2023-02-11'),
(7, 'Grace', 'Achieng', 'Marketing', 5800.00, '2023-02-11'),
(8, 'Hassan', 'Ali', 'Finance', 7700.00, '2020-06-05');

SELECT * FROM Employees

SELECT MAX(Salary) AS HighestSalary,
       MIN(Salary) AS LowestSalary
FROM Employees;       

SELECT COUNT(*) AS TotalEmployees
FROM Employees

SELECT COUNT(*) AS IT
FROM Employees
WHERE Department ='IT';

SELECT AVG(Salary) AS AvarageSalary,
       SUM(Salary) AS TotalSalary
FROM Employees       

SELECT Department,
AVG(Salary) AS AvgDeptSalary,
COUNT(*) AS StaffCount
FROM Employees
ORDER BY Department;

SELECT FirstName, LastNmae, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3;

SELECT FirstName, LastNmae, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 2 OFFSET 3;

SELECT FirstName AS FirstName,
       LastNmae AS LastName,
       Salary * 12 AS AnnualSalary
FROM Employees;       

SELECT FirstName, LastNmae, Salary
FROM Employees
WHERE Hiredate BETWEEN '2019-01-01' AND '2021-12-31'