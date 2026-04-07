SELECT 
SUM(sales) as total_sales,
SUM(profit) as total_profit,
COUNT(DISTINCT order_id) as total_orders
FROM superstore_clean;

SELECT 
YEAR(order_date) AS year,
SUM(sales) AS sales
FROM superstore_clean
GROUP BY year
ORDER BY year;

SELECT 
MONTH(order_date) AS month,
SUM(sales) AS sales
FROM superstore_clean
GROUP BY month
ORDER BY month;

SELECT 
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(sales) AS sales
FROM superstore_clean
GROUP BY year, month
ORDER BY year, month;

SELECT
category,
SUM(sales) AS sales,
SUM(profit) AS profit
FROM superstore_clean
GROUP BY category
ORDER BY sales DESC;

SELECT
sub_category,
SUM(sales) AS sales,
SUM(profit) AS profit
FROM superstore_clean
GROUP BY sub_category
ORDER BY profit DESC;

SELECT
product_name,
SUM(sales) AS sales,
SUM(profit) AS profit
FROM superstore_clean
GROUP BY product_name
ORDER BY profit DESC
LIMIT 10;

SELECT
customer_name,
SUM(sales) AS sales,
SUM(profit) AS profit
FROM superstore_clean
GROUP BY customer_name
ORDER BY sales DESC
LIMIT 10;

SELECT
region,
SUM(sales) AS sales,
SUM(profit) AS profit
FROM superstore_clean
GROUP BY region
ORDER BY sales DESC;