-- Total Sales
SELECT SUM(sales) AS total_sales FROM orders;

-- Total Profit
SELECT SUM(profit) AS total_profit FROM orders;

-- Sales by Region
SELECT region, SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

-- Top 5 Products
SELECT product_name, SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Sales by Category
SELECT category, SUM(sales)
FROM orders
GROUP BY category;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(sales)
FROM orders
GROUP BY month
ORDER BY month;

-- Profit by Segment
SELECT segment, SUM(profit)
FROM orders
GROUP BY segment;
