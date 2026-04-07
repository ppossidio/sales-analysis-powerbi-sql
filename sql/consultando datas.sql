SELECT COUNT(DISTINCT YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y'))) AS anos_diferentes
FROM superstore_sales;

SELECT DISTINCT YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS ano
FROM superstore_sales
ORDER BY ano;

SELECT
MIN(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS primeira_data,
MAX(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS ultima_data
FROM superstore_sales;