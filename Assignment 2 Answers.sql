create database Order_Stores_Data 
create table Orders_Table (OrderDate date, Region varchar (20), Rep varchar (20), Order_Item varchar (30), Units int, Unit_Cost float, Total_Price float, Order_Id int)
create table Stores_Table (Store_Id int, Store_Type varchar(5), Assortment int, Competition_Distance int, MONTH int, Year int, Promo_Interval varchar (20))

select * from Orders_Table
select * from Stores_Table

insert into Orders_Table values ('01-06-2021','East', 'Aruna', 'Pencil', 95,1.99,189.05,1)
insert into Orders_Table values ('01-23-2021','Central', 'Kivell', 'Eraser', 50,19.99, 999.50 ,2)
insert into Orders_Table values ('02-09-2021','Central', 'Ganesh', ' ', 36,4.99,  179.64 ,3)
insert into Orders_Table values ('02-26-2021','Central', 'Payal', ' ', 27,19.99, 539.73,4)
insert into Orders_Table values ('03-15-2021','West', 'Sorvino', ' ', 56,2.99, 167.44 ,5)
insert into Orders_Table values ('04-01-2021','East', 'Hitesh', 'Pencil', 60,4.99, 299.40 ,6)
insert into Orders_Table values ('04-18-2021','Central', 'Akshita', ' ', 75,1.99, 149.25 ,7)
insert into Orders_Table values ('05-05-2021','Central', 'Ruchika', 'Books', 90,4.99, 449.10 ,8)
insert into Orders_Table values ('05-22-2021','West', 'Surbhi', ' ', 32,1.99, 63.68 ,9)
insert into Orders_Table values ('06-08-2021','East', 'Jones', 'Suitcase', 60,	8.99, 539.40 ,10)

insert into Stores_Table values (1,'c', 15, 1270, 9, 2008, 'Jan')
insert into Stores_Table values (2,'a', 30, 570, 11, 2007, 'Feb')
insert into Stores_Table values (3,'a', 43, 14130, 12, 2006, 'Mar')
insert into Stores_Table values (4,'c', 43, 620, 9, 2009, ' ')
insert into Stores_Table values (5,'a', 44, 29910, 4, 2015, 'May')
insert into Stores_Table values (6,'a', 34, 310, 12, 2013, 'June')
insert into Stores_Table values (7,'a', 32, 24000, 4, 2013, ' ')
insert into Stores_Table values (8,'a', 46, 7520, 10, 2014, 'Aug')
insert into Stores_Table values (9,'a', 20, 2030, 8, 2000, ' ')
insert into Stores_Table values (10,'a', 35, 3160, 9, 2009, 'Oct')

alter table Orders_Table alter column Order_id int not null 
alter table Orders_Table add primary key (Order_Id)

alter table Stores_Table add Stores_Names varchar(20)
insert into Stores_Table (Stores_Names) values ('Car')
if store_Id = 1

update Stores_Table
set Stores_Names = 'Bikes'
where Store_Id = 2;
update Stores_Table set Stores_Names = 'Hardware' where Store_Id = 3
update Stores_Table set Stores_Names = 'Electrics' where Store_Id = 4
update Stores_Table set Stores_Names = 'Fibers' where Store_Id = 5
update Stores_Table set Stores_Names = 'Elastics' where Store_Id = 6
update Stores_Table set Stores_Names = 'Books' where Store_Id = 7
update Stores_Table set Stores_Names = 'Shoes' where Store_Id = 8
update Stores_Table set Stores_Names = 'Clothes' where Store_Id = 9
update Stores_Table set Stores_Names = 'Scraps' where Store_Id = 10

alter table Stores_Table Add foreign key (Store_Id) references Orders_Table (Order_ID)

update Orders_Table set Order_Item = 'Compass' where Order_Id = 3
update Orders_Table set Order_Item = 'Torch' where Order_Id = 4
update Orders_Table set Order_Item = 'Phone' where Order_Id = 5
update Orders_Table set Order_Item = 'Laptop' where Order_Id = 7
update Orders_Table set Order_Item = 'Box' where Order_Id = 9

update Stores_Table set Promo_Interval = 'Apr' where Store_Id = 4
update Stores_Table set Promo_Interval = 'July' where Store_Id = 7
update Stores_Table set Promo_Interval = 'Sep' where Store_Id = 9

exec sp_rename 'Stores_Table.Assortment', 'Store_Nos'
exec sp_rename 'Orders_Table.Order_Item', 'Item_name'
exec sp_rename 'Orders_Table.Rep', 'Customers_name'

select * from Orders_Table order by Unit_Cost desc, Total_Price Asc

exec sp_rename 'Orders_Table.Customers_name', 'Cus_name'
select distinct region, count(Cus_name) as Cust_Name from Orders_Table group by Region

select sum(Total_Price) from Orders_Table
select sum(Unit_Cost) from Orders_Table

create table Order_Stores_Table (Order_Date date, Unit_Cost float, Store_Type varchar (20), Year int)
select * from Order_Stores_Table

select Order_Item, Region from Orders_Table where Order_ID in (4,5,6,9)

select Year from Stores_Table where Competition_Distance in (29910,310,3160)

select Order_Item from Orders_Table where Total_Price > 200 and Total_Price <400

exec sp_rename 'Stores_Table.Competition_Distance', 'CD'
select sum(CD) from Stores_Table

select count(Store_Type) as CountofST, count(CD) as CountofCD from Stores_Table

select Orders_Table.Order_Id, Stores_Table.Store_Id
from Orders_Table
cross join Stores_Table
where Orders_Table.Order_Id=Stores_Table.Store_Id

drop database Order_Stores_Data