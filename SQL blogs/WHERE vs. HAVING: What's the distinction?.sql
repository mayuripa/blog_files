--Create table statement
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2),
    Department VARCHAR(50)
);
-- Table values
INSERT INTO Employee (EmployeeID, Name, Salary, Department)
VALUES
    (1, 'John Doe', 5000.00, 'Sales'),
    (2, 'Jane Smith', 6000.00, 'Marketing'),
    (3, 'Michael Johnson', 4500.00, NULL),
    (4, 'Emily Davis', 5500.00, 'Finance'),
    (5, 'David Wilson', NULL, 'Human Resources'),
    (6, 'Sarah Anderson', 4000.00, 'Sales'),
    (7, 'Robert Thompson', NULL, 'Finance'),
    (8, 'Jessica Brown', 4800.00, 'Marketing'),
    (9, 'Kenn Jordan', 5200.00, 'Human Resources'),
    (10, 'William Lee', 4700.00, NULL);

SELECT * FROM Employee;

-- Employees with a salary greater than 5000
SELECT EmployeeID, FirstName, LastName, Salary
FROM Employees
WHERE Salary > 5000;


-- Finding the average salary group by
SELECT Department, AVG(Salary) AS avg_salary
FROM employees
WHERE Salary > 5000
GROUP BY Department;


-- Finding the average salary greater than 5300 department-wise.
SELECT Department,AVG(salary) AS avg_salary
FROM Employee
WHERE Salary > 5000
GROUP BY Department
HAVING AVG(Salary) > 5300;




