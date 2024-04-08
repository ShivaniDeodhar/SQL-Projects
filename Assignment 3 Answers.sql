create Database Assignment_3
create table EmployeeDetails (EmpId int, FullName varchar (20), ManagerId int, DateofJoining date, City varchar(20))
create table EmployeeSalary (EmpId int, Project varchar (20), Salary int, Variable int)

insert into EmployeeDetails values (121, 'John Snow', 321, '01-31-2019', 'Toronto')
insert into EmployeeDetails values (321, 'Walter White', 986, '01-30-2020', 'California')
insert into EmployeeDetails values (421, 'Kuldeep Rana', 876, '11-27-2021', 'New Delhi')

insert into EmployeeSalary values (121, 'P1', 8000, 500)
insert into EmployeeSalary values (321, 'P2', 10000, 1000)
insert into EmployeeSalary values (421, 'P1', 12000, 0)

select * from EmployeeDetails
select * from EmployeeSalary

select EmployeeDetails.ManagerId from EmployeeDetails Left join EmployeeSalary on EmployeeDetails.EmpId=EmployeeSalary.EmpId

select EmpId from EmployeeSalary where Project = Null

Select * from EmployeeDetails where year (DateofJoining) = 2020



select Project as Heading, count(EmpID) as CountofEmp from EmployeeSalary group by Project 

select EmployeeDetails.FullName, EmployeeSalary.Salary from EmployeeDetails join EmployeeSalary on EmployeeDetails.EmpId=EmployeeSalary.EmpId

select EmployeeDetails.EmpId from EmployeeDetails inner join EmployeeSalary on EmployeeDetails.EmpId=EmployeeSalary.EmpId

SELECT EmpId, FullName, ManagerId, DateOfJoining, City, COUNT(*) AS DuplicateCount FROM EmployeeDetails
GROUP BY EmpId, FullName, ManagerId, DateOfJoining, City
HAVING COUNT(*) > 1;

SELECT * FROM EmployeeDetails where EmpId % 2 <> 0

select EmpId, Fullname from EmployeeDetails where ManagerId = 986

select distinct(project) from EmployeeSalary

select count(Empid) as CountofEmp from EmployeeSalary where Project = 'P1'

select min(salary) as MinSalary, max(salary) as MaxSalary, avg(salary) as AvgSalary from EmployeeSalary

select Empid from EmployeeSalary where salary between 9000 and 15000

select * from EmployeeDetails where City = 'Toronto' and ManagerId = 321

select * from EmployeeDetails where City = 'California' or ManagerId = 321

select * from EmployeeSalary where Project not like 'P1'

select Empid, salary + variable as Totalsalary from EmployeeSalary

select * from EmployeeDetails where Fullname like '__hn%'

select EmployeeDetails.EmpId from EmployeeDetails join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId

select EmployeeDetails.EmpId from EmployeeDetails inner join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId

select EmployeeDetails.City from EmployeeDetails left join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId

select EmployeeDetails.EmpId from EmployeeDetails full outer join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId

select EmpID from EmployeeDetails where EmpID not in(select EmpID from EmployeeSalary)

select trim (FullName) from EmployeeDetails 

select charindex('r', 'Kuldeep Rana') 

select concat (EmpId, Managerid) from EmployeeDetails as CommonId

select left(fullname,charindex(' ',Fullname)) from EmployeeDetails

select lower(City) from EmployeeDetails 
select upper (Fullname) from EmployeeDetails

select count(fullname) from EmployeeDetails where fullname like '%n%'

UPDATE EmployeeDetails SET fullname = trim(fullname)

select Empid from EmployeeSalary where Project = null

select EmployeeDetails.Fullname, EmployeeSalary.Salary from EmployeeDetails join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId 
where salary >=5000 and salary <=10000

select CURRENT_TIMESTAMP

Select * from EmployeeDetails where year (DateofJoining) = 2020

select EmployeeDetails.Fullname, EmployeeSalary.Salary from EmployeeDetails join EmployeeSalary on EmployeeDetails.Empid=EmployeeSalary.EmpId 

select Project as Heading, count(EmpID) as Projectcount from EmployeeSalary group by Project order by Projectcount desc