
select * from Ecommerce_Sales

--1. Calculate Sales Quantity by Product Category
SELECT Category as Product_Category, SUM(Qty) AS Quantity 
FROM Ecommerce_Sales
GROUP BY Category
ORDER BY Quantity DESC;

--2. Analyze Orders and Sales Revenue by Month
SELECT Month, COUNT(Order_ID) AS Orders, 
CONCAT(CAST(SUM(Sales_Amount)/100000.0 AS DECIMAL(5,2) ),' M') AS Sales_Amount 
FROM Ecommerce_Sales
GROUP BY Month
ORDER BY 
  CASE Month
    WHEN 'Jan' THEN 1
    WHEN 'Feb' THEN 2
    WHEN 'Mar' THEN 3
    WHEN 'Apr' THEN 4
    WHEN 'May' THEN 5
    WHEN 'Jun' THEN 6
    WHEN 'Jul' THEN 7
    WHEN 'Aug' THEN 8
    WHEN 'Sep' THEN 9
    WHEN 'Oct' THEN 10
    WHEN 'Nov' THEN 11
    WHEN 'Dec' THEN 12
  END;

--3. Identify Top 5 States by Total Sales Revenue
SELECT TOP 5 Ship_State, 
CONCAT('$', CAST(SUM(Sales_Amount)/1000000.0 AS DECIMAL(10,2)), ' M') AS Total_Sales_Revenue
FROM Ecommerce_Sales
GROUP BY Ship_State
ORDER BY SUM(Sales_Amount) DESC;


--4. Identify Bottom 5 States by Total Sales Revenue
SELECT TOP 5 Ship_State, 
CONCAT('$',CAST(SUM(Sales_Amount)/1000.0 AS DECIMAL(10,2)),' K') AS Total_Sales_Revenue
FROM Ecommerce_Sales
GROUP BY Ship_State
ORDER BY SUM(Sales_Amount) ASC;

--5.Identify Top 5 Cities by Total Sales Revenue
SELECT TOP 5 Ship_City AS Top_5_Ship_Cities,
CONCAT('$', CAST(SUM(Sales_Amount) / 1000000.0 AS DECIMAL(5,2)), ' M') AS Sales_Revenue
FROM Ecommerce_Sales
GROUP BY Ship_City
ORDER BY Sales_Revenue DESC;

SELECT TOP 5 Ship_city as Top_5_Ship_Cities, 
CONCAT('$', ROUND(SUM(Sales_Amount) / 1000000.0,2), ' M') AS Sales_Revenue FROM Ecommerce_Sales                        
GROUP BY Ship_City
ORDER BY Sales_Revenue DESC;

--6. Identify Bottom 5 Cities by Total Sales Revenue
SELECT TOP 5 Ship_City AS Ship_Cities, 
CONCAT('$', SUM(Sales_Amount)) AS Sales_Revenue FROM Ecommerce_Sales
GROUP BY Ship_City
ORDER BY SUM(Sales_Amount) ASC;

--7. Analyze Sales Contribution by Gender (Men vs Women)                                                      
SELECT Gender, 
CONCAT('$',CAST(SUM(Sales_Amount) / 1000000.0 AS DECIMAL(5,2)),' M') AS Total_Sales_Revenue,
CONCAT(CAST(SUM(Sales_Amount)*100.0 / (SELECT SUM(Sales_Amount) FROM Ecommerce_Sales) 
AS DECIMAL(5,0)), ' %') AS Percentage_Contribution FROM Ecommerce_Sales
GROUP BY Gender;

--8. Calculate Percentage of Total Orders by Status
SELECT Status, COUNT(Order_ID) AS Total_Orders, 
CONCAT(CAST(COUNT(Order_ID) * 100.0 / (SELECT COUNT(*) FROM Ecommerce_Sales) 
AS DECIMAL(5,0)), ' %') AS Percentage_Order_Status FROM Ecommerce_Sales
GROUP BY Status
ORDER BY COUNT(Order_ID) * 100.0 / (SELECT COUNT(Order_ID) FROM Ecommerce_Sales) DESC;


--9. Examine Relationship Between Age Group and Gender with Total Orders
SELECT Age_Group, Gender,
CONCAT(CAST(COUNT(Order_ID) * 100.0 / (SELECT COUNT(Order_ID) FROM Ecommerce_Sales) 
AS DECIMAL(5,0)), ' %') AS Percent_of_Orders
FROM Ecommerce_Sales
GROUP BY Age_Group, Gender
ORDER BY Gender DESC;

--10. Calculate Percentage of Total Orders by Sales Channels
SELECT Channel, CONCAT(CAST(COUNT(Order_ID) * 100.0 / (SELECT COUNT(Order_ID) 
FROM Ecommerce_Sales) AS DECIMAL(5,0)), ' %') 
AS Total_Orders_Distribution FROM Ecommerce_Sales
GROUP BY Channel
ORDER BY COUNT(Order_ID) * 100.0 / (SELECT COUNT(Order_ID) FROM Ecommerce_Sales) DESC;

/*
Note: 
If you try to ORDER BY Total_Orders_Distribution DESC, 
SQL Server will sort alphabetically, not numerically, 
because Total_Orders_Distribution is a string (due to CONCAT and '%').
To sort correctly by percentage, use the numeric calculation in ORDER BY.
*/



