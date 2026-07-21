E-Commerce Sales Analytics SQL Queries
Database: SQLite
Author: Diya

1. Display all records
SELECT * FROM ecommerce;

2. Count total records
SELECT COUNT(*) AS Total_Records
FROM ecommerce;

3. Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM ecommerce;

4. Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM ecommerce;

5. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM ecommerce;

6. Average Discount
SELECT ROUND(AVG(Discount),2) AS Average_Discount
FROM ecommerce;

7. Sales by Category
SELECT Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM ecommerce
GROUP BY Category
ORDER BY Total_Sales DESC;

8. Profit by Category
SELECT Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM ecommerce
GROUP BY Category
ORDER BY Total_Profit DESC;

9. Sales by Region
SELECT Region,
ROUND(SUM(Sales),2) AS Total_Sales
FROM ecommerce
GROUP BY Region
ORDER BY Total_Sales DESC;

10. Top 10 States by Sales
SELECT State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM ecommerce
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

11. Top 10 Sub-Categories by Sales
SELECT Sub_Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM ecommerce
GROUP BY Sub_Category
ORDER BY Total_Sales DESC
LIMIT 10;

12. Average Discount by Category
SELECT Category,
ROUND(AVG(Discount),2) AS Avg_Discount
FROM ecommerce
GROUP BY Category
ORDER BY Avg_Discount DESC;

13. Loss-Making States
SELECT State,
ROUND(SUM(Profit),2) AS Total_Profit
FROM ecommerce
GROUP BY State
HAVING Total_Profit < 0
ORDER BY Total_Profit;

14. Loss-Making Sub-Categories
SELECT Sub_Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM ecommerce
GROUP BY Sub_Category
HAVING Total_Profit < 0
ORDER BY Total_Profit;

15. Highest Sales Value
SELECT MAX(Sales) AS Highest_Sale
FROM ecommerce;
