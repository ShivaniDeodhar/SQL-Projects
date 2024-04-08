create database Brands
create database Products

create table ITEMS_Table(ItemID int, Item_Description varchar(50), Vendor_no int, Vendor_name varchar(80), Bottle_size int, Bottle_price int)
alter table ITEMS_Table alter column Bottle_price float
alter table ITEMS_Table alter column ITEMID int not null
create table PRODUCT_Table(Product_ID int, Country varchar(50), Product varchar(50), Units_Sold float, Manufacturing_price float, Sale_Price float, Gross_sales float,
Sales float, COGS float, Profit float, "Date" date, Month_Number int, Month_Name varchar (30), "Year" int)

select * from ITEMS_Table
select * from PRODUCT_Table

insert into ITEMS_Table values (1, 'Travis_Hasse_Apple_Pie', 305, 'Mhw Ltd', 750, $ 9.77)
insert into ITEMS_Table values (2, 'D aristi Xtabentun', 391, 'Anchor Distilling (preiss Imports)', 750, 14.12)
insert into ITEMS_Table values (3, 'Hiram Walker Peach Brandy', 370, 'Pernod Ricard Usa/austin Nichols', 1000, 6.50)
insert into ITEMS_Table values (4, 'Oak Cross Whisky', 305, 'Mhw Ltd', 750, 25.33)
insert into ITEMS_Table values (5, 'Uv Red(cherry) Vodka', 380, 'Phillips Beverage Company', 200, 1.97)
insert into ITEMS_Table values (6, 'Heaven Hill Old Style White Label', 259, 'Heaven Hill Distilleries Inc.', 750, 6.37)
insert into ITEMS_Table values (7, 'Hyde Herbal Liqueur', 194, 'Fire Tail Brands Llc', 750, 5.06)
insert into ITEMS_Table values (8, 'Dupont Calvados Fine Reserve', 403, 'Robert Kacher Selections', 750, 23.61)

insert into PRODUCT_Table values (1, 'Canada', ' Carretera ', 1618.5, 3.00, 20.00,32370.00, 32370.00, 16185.00, 16185.00, '1-1-2014', 1, 'January', 2014) 
insert into PRODUCT_Table values (2, 'Germany', ' Carretera ', 1321, 3.00, 20.00,26420.00, 26420.00, 13210.00, 13210.00, '1-1-2014', 1, 'January', 2015) 
insert into PRODUCT_Table values (3, 'France', ' Carretera ', 2178, 3.00, 15.00,32670.00, 32670.00, 21780.00, 10890.00, '6-1-2014', 6, 'June', 2016) 
insert into PRODUCT_Table values (4, 'Germany', ' Carretera ', 888, 3.00, 15.00,13320.00, 13320.00, 8880.00, 4440.00, '6-1-2014', 6, 'June', 2017) 
insert into PRODUCT_Table values (5, 'Mexico', ' Carretera ', 2470, 3.00, 15.00,37050.00, 37050.00, 24700.00, 12350.00, '6-1-2014', 6, 'June', 2018) 
insert into PRODUCT_Table values (6, 'Germany', ' Carretera ', 1513, 3.00, 350.00,529550.00, 529550.00, 393380.00, 136170.00, '12-1-2014', 12, 'December', 2019) 
insert into PRODUCT_Table values (7, 'Germany', '  Montana  ', 921, 5.00, 15.00,13815.00, 13815.00, 9210.00, 4605.00, '3-1-2014', 3, 'March', 2020) 
insert into PRODUCT_Table values (8, 'Canada', '  Montana  ', 2518, 5.00, 12.00,30216.00, 30216.00, 7554.00, 22662.00, '6-1-2014', 6, 'June', 2021) 

delete from PRODUCT_Table where Units_Sold in (1618.5, 888, 2470)

drop table PRODUCT_Table
create table PRODUCT_Table(Product_ID int, Country varchar(50), Product varchar(50), Units_Sold float, Manufacturing_price float, Sale_Price float, Gross_sales float,
Sales float, COGS float, Profit float, "Date" date, Month_Number int, Month_Name varchar (30), "Year" int)

insert into PRODUCT_Table values (1, 'Germany', ' Carretera ', 1321, 3.00, 20.00,26420.00, 26420.00, 13210.00, 13210.00, '1-1-2014', 1, 'January', 2015)
insert into PRODUCT_Table values (2, 'France', ' Carretera ', 2178, 3.00, 15.00,32670.00, 32670.00, 21780.00, 10890.00, '6-1-2014', 6, 'June', 2016) 
insert into PRODUCT_Table values (3, 'Germany', ' Carretera ', 1513, 3.00, 350.00,529550.00, 529550.00, 393380.00, 136170.00, '12-1-2014', 12, 'December', 2019) 
insert into PRODUCT_Table values (4, 'Germany', '  Montana  ', 921, 5.00, 15.00,13815.00, 13815.00, 9210.00, 4605.00, '3-1-2014', 3, 'March', 2020) 
insert into PRODUCT_Table values (5, 'Canada', '  Montana  ', 2518, 5.00, 12.00,30216.00, 30216.00, 7554.00, 22662.00, '6-1-2014', 6, 'June', 2021) 

select sum(Sales) from PRODUCT_Table
select sum(Gross_sales) from PRODUCT_Table

select Top 1 Year, max(Sales) as Highestsales 
from PRODUCT_Table 
group by Year 
order by Highestsales desc

select Product from PRODUCT_Table where Sales = 37050
select Country from PRODUCT_Table where Profit >= 4605 and Profit <= 22662
select Product_ID from PRODUCT_Table where sales = 24700

select * from ITEMS_Table

select Item_Description from ITEMS_Table where Bottle_size = 750
select distinct Vendor_name from ITEMS_Table where Vendor_no in (305,380,391)
select sum(Bottle_price) from ITEMS_Table 
alter table ITEMS_Table add primary key (ItemID)
select ItemID from ITEMS_Table where Bottle_price = 5.06

Select * from ITEMS_Table
INNER JOIN Product_table on ITEMS_Table.ItemID = product_table.product_id

select * from ITEMS_Table
Full Outer Join Product_table on ITEMS_Table.ItemID = product_table.product_id

select * from ITEMS_Table
Left Join Product_table on ITEMS_Table.ItemID = product_table.product_id

select * from ITEMS_Table
Outer Join Product_table on ITEMS_Table.ItemID = product_table.product_id;

select * from ITEMS_Table
right join product_table on ITEMS_Table.ItemID = product_table.product_id;

select * from ITEMS_Table
cross join product_table

SELECT 
Item_Description, Product
FROM [Brands].[dbo].[ITEMS_Table] tb_1
LEFT JOIN [Products].[dbo].[PRODUCT_Table] tb_2 ON tb_1.ItemID = tb_2.product_id
where Gross_sales = 13320

select 
    case when CHARINDEX(' ',Item_Description)>0 
         then SUBSTRING(Item_Description,1,CHARINDEX(' ',Item_Description)-1) 
         else Item_Description end Item_desc1, 
    CASE WHEN CHARINDEX(' ',Item_Description)>0 
         THEN SUBSTRING(Item_Description,CHARINDEX(' ',Item_Description)+1,len(Item_Description))  
         ELSE NULL END as Item_desc2
from ITEMS_Table
