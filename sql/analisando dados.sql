SELECT * FROM superstore_sales LIMIT 100;

SELECT COUNT(*) FROM superstore_sales;

DESCRIBE superstore_sales;

SELECT *
FROM superstore_sales
WHERE Sales IS NULL;

SELECT
COUNT(*) AS total_linhas,
SUM(Sales IS NULL) AS sales_null,
SUM(Profit IS NULL) AS profit_null,
SUM(`Customer Name` IS NULL) AS customer_name_null,
SUM(`Product Name` IS NULL) AS product_name_null,
SUM(`Order Date` IS NULL) AS order_date_null,
SUM(Region IS NULL) AS region_null,
SUM(Category IS NULL) AS category_null
FROM superstore_sales;

SELECT
COUNT(DISTINCT Region) AS regioes,
COUNT(DISTINCT Category) AS categorias,
COUNT(DISTINCT `Sub-Category`) AS sub_categoria,
COUNT(DISTINCT Segment) AS segmentos,
COUNT(DISTINCT `Ship Mode`) AS modo_de_envio
FROM superstore_sales;
