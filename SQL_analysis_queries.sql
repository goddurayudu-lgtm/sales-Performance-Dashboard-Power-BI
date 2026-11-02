-- SQL Server / MySQL-style analysis examples
-- Import sales_data.csv into a table named Sales.

-- 1. Overall KPIs
SELECT
    SUM(Revenue) AS total_revenue,
    SUM(Profit) AS total_profit,
    COUNT(DISTINCT Order_ID) AS total_orders,
    SUM(Quantity) AS total_quantity,
    SUM(Profit) / NULLIF(SUM(Revenue), 0) AS profit_margin
FROM Sales;

-- 2. Monthly revenue trend
SELECT
    YEAR(Order_Date) AS sales_year,
    MONTH(Order_Date) AS sales_month,
    SUM(Revenue) AS monthly_revenue,
    SUM(Profit) AS monthly_profit
FROM Sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY sales_year, sales_month;

-- 3. Revenue and profit by category
SELECT Category, SUM(Revenue) AS revenue, SUM(Profit) AS profit
FROM Sales
GROUP BY Category
ORDER BY revenue DESC;

-- 4. Regional performance
SELECT Region, SUM(Revenue) AS revenue, SUM(Profit) AS profit,
       COUNT(DISTINCT Order_ID) AS orders
FROM Sales
GROUP BY Region
ORDER BY revenue DESC;

-- 5. Sales representative leaderboard
SELECT Sales_Rep, SUM(Revenue) AS revenue, SUM(Profit) AS profit,
       COUNT(DISTINCT Order_ID) AS orders
FROM Sales
GROUP BY Sales_Rep
ORDER BY revenue DESC;

-- 6. Top 10 products by revenue
SELECT Product, SUM(Revenue) AS revenue, SUM(Profit) AS profit
FROM Sales
GROUP BY Product
ORDER BY revenue DESC
LIMIT 10;
