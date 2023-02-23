--CREATE TABLE Employee(
--EmployeeID int,
--FastName varchar(30),
--LastName varchar(20),
--Gender varchar(20),
--Age int
--)

--CREATE TABLE Salary(
--EmployeeID int,
--JobTitle varchar(50),
--Salary Int)



--INSERT INTO Employee VALUES(107, 'Sopno', 'Isalm','Male',25),
--(106, 'Saju', 'Isalm','Male',24),
--(105, 'AL-amin', 'Isalm','Male',35),

INSERT INTO Salary VALUES(108,'CEO',100000),(109,'Manager',90000)
--INSERT INTO Salary VALUES
--(103,'HR',80000),
--(104,'Marketing',70000),
--(105,'Marketing',60000),
--(106,'Marketing',70000),
--(107,'Sales',40000)

--select * from Employee where FastName <> 'Sopnil'

select SUM(Age) as AGE from Employee  
select Count(Age) as Age from Employee 
select DISTINCT(Age) as Age from Employee

select Gender,Age, Count(Age) as Age from Employee GROUP BY Gender,Age

--SELECT * FROM sopnil.dbo.Employee 
--INNER JOIN sopnil.dbo.Salary
--ON Employee.EmployeeID =Salary.EmployeeID

SELECT * FROM sopnil.dbo.Employee 
FUll OUTER JOIN sopnil.dbo.Salary
ON Employee.EmployeeID =Salary.EmployeeID

SELECT * FROM sopnil.dbo.Employee 
LEFT OUTER JOIN sopnil.dbo.Salary
ON Employee.EmployeeID =Salary.EmployeeID

SELECT Employee.EmployeeID, FastName, LastName, JobTitle, Salary
FROM sopnil.dbo.Employee 
LEFT OUTER JOIN sopnil.dbo.Salary
ON Employee.EmployeeID =Salary.EmployeeID
Where JobTitle = 'HR'

--Update data table
UPDATE sopnil.dbo.Employee 
SET FastName = 'Sahirul'
WHERE EmployeeID = 101

Update sopnil.dbo.Employee 
SET EmployeeID = 105 where FastName = 'Al-amin'

SELECT FastName, LastName, Salary, COUNT(Age) OVER (PARTITION By Age ) AS TotalAge
From sopnil.dbo.Employee dem
JOIN sopnil.dbo.Salary sal
On dem.EmployeeID = sal.EmployeeID

select * from [sopnil].[dbo].[Employee]
select * from [sopnil].[dbo].[Salary]

Delete From sopnil.dbo.Employee where EmployeeID = 108


--CTE table
WITH CTE_Employe as(
SELECT FastName, LastName, Salary, COUNT(Age) OVER (PARTITION By Age ) AS TotalAge
From sopnil.dbo.Employee dem
JOIN sopnil.dbo.Salary sal
On dem.EmployeeID = sal.EmployeeID
)
select * FROM CTE_Employe

CREATE TABLE #TEM_TABLE (
EmployeeID int,
JobTitle varchar(50),
Salary Int)

SELECT * FROM #TEM_TABLE

INSERT INTO #TEM_TABLE VALUES (110,'HR', 30000)

insert into #TEM_TABLE SELECT * FROM sopnil..Salary

CREATE TABLE #TEM_Employee (
JobTitle varchar(50),
EmployeePerJOb int,
AvgAge int,
AvgSalary int )

insert into #TEM_Employee 
SELECT JobTitle, COUNT(JobTitle), Avg(Age), AVG(Salary)
FROM sopnil..Employee emp
join sopnil..Salary sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

Drop Table #TEM_Employee

SELECT * From #TEM_Employee

