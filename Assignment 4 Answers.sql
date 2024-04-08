create database Assignment_4
create table Student_Table (Studentid int not null primary key, First_Name varchar(20), Surname varchar(20), Birth_Date date, Gender varchar(10), Class int, Point float)

alter table Student_Table alter column Class varchar(20)

select * from Student_Table

insert into Student_Table values (1, 'Raj', 'Joshi', '01-26-1996', 'Male', 2, 9.8)
insert into Student_Table values (2, 'Alok', 'Verma', '03-20-1996', 'Male', '10_Math', 6.2)
insert into Student_Table values (3, 'Abhijeet', 'Sharma', '02-15-1996', 'Male', '10_Phy', 7.9)
insert into Student_Table values (4, 'Shivani', 'Deodhar', '04-23-1996', 'Female','10_Sci', 8.0)
insert into Student_Table values (5, 'Rohan', 'Shelar', '06-26-1996', 'Male', '10_Eng', 9.6)
insert into Student_Table values (6, 'Priya', 'Nehru', '07-12-1996', 'Female','10_Math', 6.8)
insert into Student_Table values (7, 'Akshay', 'Mishra', '08-26-1996', 'Male','10_Sci', 7.8)
insert into Student_Table values (8, 'Shyam', 'Chaudhary', '09-11-1996', 'Male','10_Math', 9.1)
insert into Student_Table values (9, 'Chinmay', 'Muley', '10-13-1996', 'Male','10_Sci', 7.5)
insert into Student_Table values (10, 'Lavanya', 'Karandikar', '11-18-1996', 'Female','10_Phy', 7.2)
insert into Student_Table values (11, 'Adu', 'Deshpande', '12-06-1996', 'Male','10_Math', 6.2)
insert into Student_Table values (12, 'Pranali', 'Jain', '01-30-1996', 'Female','10_Sci', 6.4)
insert into Student_Table values (13, 'Mike', 'Sethi', '02-28-1996', 'Male','10_Sci', 5.4)
insert into Student_Table values (14, 'Sayali', 'Matkar', '03-05-1996', 'Female','10_Math', 9.3)
insert into Student_Table values (15, 'Prakhar', 'Karpe', '04-09-1996', 'Male','10_Phy', 9.8)
insert into Student_Table values (16, 'Ashu', 'Kulkarni', '05-13-1996', 'Male', '10_Eng', 10.0)
insert into Student_Table values (17, 'Ashwini', 'Deshkar', '06-12-1996', 'Female','10_Math', 6.0)
insert into Student_Table values (18, 'Sejal', 'Patel', '07-10-1996', 'Female', '10_Eng', 7.0)
insert into Student_Table values (19, 'Ram', 'Pathak', '08-01-1996', 'Male','10_Phy',8.0)
insert into Student_Table values (20, 'Robin', 'Dsouza', '09-19-1996', 'Male','10_Math', 9.0)

select * from Student_Table

select First_Name, Surname, Class from Student_Table

select * from Student_Table where Gender = 'Female'

select distinct(Class) as CLASS from Student_Table

select * from Student_Table where Gender = 'Female' and Class = '10_Math'

select First_Name, Surname, Class from Student_Table where Class = '10_Math' or Class = '10_Sci'

select First_Name, Surname, Point from Student_Table

select concat(First_Name, ' ', Surname) as FullName from Student_Table 

select First_Name from Student_Table where First_Name like 'A%'

select First_Name from Student_Table where First_Name like 'E%' or First_Name like 'S%' or First_Name like 'R%'