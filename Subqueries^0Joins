use supermart_db;

SELECT s.*,
       c.CustomerName,
       c.Age,
       p.ProductName,
       p.Category
FROM sales s
JOIN customer c ON s.`Customer ID` = c.CustomerID
JOIN product p ON s.`Product ID` = p.ProductID;
