create database Supermart_DB;
use Supermart_DB;

create table Customer (
CustomerID varchar(20) primary key,
CustomerName varchar(80),
Segment varchar(50),
Age int,
Country varchar(70),
City varchar(90),
State varchar(90),
PostalCode int,
Region varchar(50)
);

create table Product (
ProductID varchar(20) primary key,
Category varchar(50),
SubCategory varchar(50),
ProductName varchar(200)
);

CREATE TABLE Sales (
OrderLine int primary key,
OrderID varchar(20),
OrderDate date,
ShipDate date,
ShipMode varchar(80),
CustomerID varchar(10),
ProductID varchar(20),
Sales decimal(10,5),
Quantity INT,
Discount DECIMAL(5, 3),
Profit DECIMAL(10, 5)
);
drop table Sales;
select *from Customer;
select * from Product;
select * from Sales;

CREATE TABLE Sales (
OrderLine int primary key,
OrderID varchar(20),
OrderDate date,
ShipDate date,
ShipMode varchar(80),
CustomerID varchar(10),
ProductID varchar(20),
Sales decimal(10,5),
Quantity INT,
Discount DECIMAL(5, 3),
Profit DECIMAL(10, 5),
FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID),
FOREIGN KEY (ProductID) REFERENCES product(ProductID)
 );

SELECT DISTINCT City FROM customer
WHERE Region IN ('North', 'East');

SELECT * FROM sales
WHERE Sales BETWEEN 100 AND 500;

SELECT * FROM customer
WHERE LastName LIKE '____';


SELECT * FROM sales WHERE Discount > 0
ORDER BY Discount DESC;

SELECT * FROM sales WHERE Discount > 0
ORDER BY Discount DESC
LIMIT 10;

SELECT SUM(Sales) AS TotalSales
FROM sales;

SELECT COUNT(*) AS NumberOfCustomers
FROM customer
WHERE Region = 'North' AND Age BETWEEN 20 AND 30;

SELECT AVG(Age) AS AverageAge
FROM customer
WHERE Region = 'East';

SELECT MIN(Age) AS MinAge, MAX(Age) AS MaxAge
FROM customer
WHERE City = 'Philadelphia';

SELECT `Product ID`, SUM(Sales) AS TotalSales
FROM sales
GROUP BY `Product ID`
ORDER BY TotalSales DESC;

SELECT `Product ID`, SUM(Quantity) AS TotalQuantity
FROM sales
GROUP BY `Product ID`;

SELECT 'Product ID', COUNT(DISTINCT 'OrderID') AS NumberOfOrders
FROM sales
GROUP BY 'Product ID';

SELECT 'Product ID', MAX(Sales) AS MaxSales
FROM sales
GROUP BY 'Product ID';

SELECT `Product ID`, MIN(Sales) AS MinSales
FROM sales
GROUP BY `Product ID`;

SELECT 'Product ID', AVG(Sales) AS AverageSales
FROM sales
GROUP BY 'Product ID';


SELECT "Product ID"
FROM sales
GROUP BY "Product ID"
HAVING SUM(Quantity) > 10;

SELECT  `Product ID`
FROM sales
WHERE Quantity > 10;
