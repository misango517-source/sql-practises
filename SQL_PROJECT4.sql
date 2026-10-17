SELECT * FROM Employees

SELECT FirstName, Lastnmae
FROM Employees

SELECT Firstname, Department, Salary
FROM Employees

SELECT Firstname, Department, Hiredate
FROM Employees;

SELECT DISTINCT Department
FROM Employees;

SELECT * FROM Employees
WHERE Department ='IT';

SELECT * FROM Employees
WHERE Salary > 8000;

SELECT * FROM Employees
WHERE Salary <= 7000;

SELECT * FROM Employees
WHERE Employeeid = 5;

SELECT * FROM Employees
WHERE Department = 'Finance'
AND Salary > 8000;

SELECT * FROM Employees
WHERE Department ='IT' OR Department = 'Marketing';

SELECT * FROM Employees
WHERE Salary BETWEEN 7000 AND 10000;

SELECT * FROM Employees
WHERE Firstname LIKE 'A%'

SELECT * FROM Employees
ORDER BY Salary ASC;

SELECT * FROM Employees
ORDER BY Salary DESC;

SELECT * FROM Employees
ORDER BY Firstname ASC;

SELECT * FROM Employees
ORDER BY Hiredate ASC;

SELECT * FROM Employees
ORDER BY Hiredate DESC;

SELECT * FROM Employees 
ORDER BY Department ASC,Salary DESC;

SELECT COUNT(*) FROM Employees

SELECT MAX(Salary) FROM Employees

SELECT MIN(Salary) FROM Employees

SELECT AVG(Salary) FROM Employees

SELECT SUM(Salary) FROM Employees

SELECT COUNT(*) AS IT_DEPARTMENT
FROM Employees
WHERE Department = 'IT';

SELECT AVG(Salary) AS AVGSALARY
FROM Employees
WHERE Department ='Finance';

SELECT MAX(Salary) AS MAXSALARY
FROM Employees
WHERE Department ='Marketing';

SELECT Department,
     COUNT(*) AS totalemployees,
     AVG(Salary) AS avgsalary,
     SUM(Salary) AS totalsalary,
     MAX(Salary) AS Highestsalary
FROM Employees
GROUP BY Department;

SELECT Department,
          AVG(Salary) AS avgsalary
FROM Employees          
GROUP BY Department
HAVING AVG(Salary)>7500;

SELECT Department,
COUNT(*) AS totalemployees
FROM Employees
GROUP BY Department
HAVING COUNT(*)>2;

SELECT Department,
SUM(Salary) AS totalsalary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) >20000;

UPDATE Employees
SET Salary = 8000
WHERE FirstName='Cynthia' AND LastNmae='Wafula';

UPDATE Employees
SET Department= 'Finance'
WHERE FirstName='Grace' AND LastNmae='Achieng';

UPDATE Employees
SET Salary= Salary+500
WHERE Department='IT';

UPDATE Employees
SET Salary =8200, Department='IT'
WHERE FirstName='Hassan' AND LastNmae='Ali';
