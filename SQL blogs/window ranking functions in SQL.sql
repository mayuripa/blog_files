CREATE TABLE EmployeeData (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    EmployeeSalary INT
);

INSERT INTO EmployeeData (EmployeeID, EmployeeName, Department, EmployeeSalary)
VALUES
    (1, 'Alice', 'Sales', 50000),
    (2, 'Bob', 'Sales', 55000),
    (3, 'Carol', 'HR', 48000),
    (4, 'David', 'IT', 60000),
    (5, 'Emily', 'IT', 58000),
    (6, 'Frank', 'Sales', 52000),
    (7, 'Grace', 'HR', 49000),
    (8, 'Henry', 'IT', 61000),
    (9, 'Ivy', 'HR', 50000),
    (10, 'Jack', 'IT', 59000),
    (11, 'Karen', 'Sales', 54000),
    (12, 'Larry', 'HR', 48000),
    (13, 'Megan', 'IT', 60000),
    (14, 'Nancy', 'Sales', 55000),
    (15, 'Oscar', 'HR', 49000);


	SELECT * FROM EmployeeData;

	SELECT * ,
	ROW_NUMBER() OVER(ORDER BY EmployeeSalary DESC) AS row_number,
	RANK() OVER(ORDER BY EmployeeSalary DESC) AS rank,
	DENSE_RANK() OVER(ORDER BY EmployeeSalary DESC) AS dense_rank
    FROM EmployeeData;


	SELECT * ,
	ROW_NUMBER() OVER(PARTITION BY Department ORDER BY EmployeeSalary DESC) AS row_number,
	RANK() OVER(PARTITION BY Department ORDER BY EmployeeSalary DESC) AS rank,
	DENSE_RANK() OVER(PARTITION BY Department ORDER BY EmployeeSalary DESC) AS dense_rank
    FROM EmployeeData;


	SELECT *,
    NTILE(3) OVER(ORDER BY EmployeeSalary DESC) AS tiles
FROM EmployeeData;


SELECT *,
NTILE(4) OVER(ORDER BY EmployeeSalary DESC) AS tiles
FROM EmployeeData;
