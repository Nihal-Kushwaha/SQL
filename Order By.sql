create database company3;
use company3;

create table sales(
SaleID int primary key auto_increment,
ProductID int,
CustomerID int,
SaleDate date,
Quantity int,
UnitPrice int,
Region varchar(15));

insert into sales(SaleID,ProductID,CustomerID,SaleDate,Quantity,UnitPrice,Region) 
values(1,101,1001,"2024-01-05",5,200,"North"),
(2,102,1002,"2024-01-10",10,150,"East"),
(3,103,1003,"2024-02-15",2,300,"North"),
(4,104,1001,"2024-02-20",7,250,"West"),
(5,101,1004,"2024-03-05",1,200,"East");

select * from sales;

#----1)	Write a query to calculate the total sales (Quantity * UnitPrice) for each product.

select ProductID, SUM(Quantity*UnitPrice) as total_sales from sales group by ProductID;

#----2)	Write a query to find the total number of products sold in each region. 

select Region, sum(Quantity)as Total_Product from sales group by Region;

#----3)	Write a query to get the average sales amount per product.

select ProductID, avg(Quantity*UnitPrice) as Average_Sales from sales group by ProductID;
 
#----4)	Find the regions where total sales are more than 3000. 

select Region,sum(Quantity*UnitPrice) as Total_Sales from sales group by Region having sum(Quantity*UnitPrice)>3000;

#----5)	Write a query to get the maximum quantity sold for each product. 

select ProductID, MAX(Quantity) as MAX_QUANTITY from sales group by ProductID;

#----6)	Write a query to calculate the average quantity of products sold per region. 

select Region,avg(quantity) as AVG_QUANTITY from sales group by Region; 

#----7)	Find the product IDs that have generated a total sales amount of more than 1000. 

select ProductID from sales group by ProductID having SUM(Quantity*UnitPrice)>1000;
 
#----8)	Write a query to get the total number of sales (rows) made for each customer. 

select CustomerID,sum(Quantity*UnitPrice) as Total_Sales from sales group by CustomerID;

#----9)	Find the products for which the average quantity sold is less than 5. 

select ProductID,avg(Quantity) as AVG_QUANTITY from sales where Quantity<5 group by ProductID;

#----10) Write a query to find the sum of total sales for each customer in each region. 

select CustomerID,Region,sum(Quantity*UnitPrice) as Total_Sales from sales group by CustomerID,Region;

#----11) rite a query to calculate the total sales for each month.

select Month(SaleDate) as Total_Month,sum(Quantity*UnitPrice) as Total_Sales from sales group by Month(SaleDate);
 
#----12) Find the regions where the average unit price is more than 200. 

select Region from sales group by Region,UnitPrice having avg(UnitPrice)>200; 

#----13) Write a query to get the minimum and maximum quantity sold per region.  

select Region,min(quantity) as Minimum_Quantity,max(Quantity) as Maximum_Quantity from sales group by Region;

#----14) Find the customers who have made more than 2 purchases.  

select CustomerID from sales group by CustomerID having count(ProductID)>2;

#----15) Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.  

select ProductID,sum(Quantity*UnitPrice) as Total_Sales from sales group by ProductID having sum(Quantity*UnitPrice)>1500;