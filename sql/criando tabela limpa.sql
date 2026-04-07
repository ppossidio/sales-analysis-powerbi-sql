CREATE TABLE superstore_clean
LIKE superstore_sales;

INSERT INTO superstore_clean
SELECT *
FROM superstore_sales;

ALTER TABLE superstore_clean
RENAME COLUMN `Row ID` TO row_id,
RENAME COLUMN `Order ID` TO order_id,
RENAME COLUMN `Order Date` TO order_date,
RENAME COLUMN `Ship Date` TO ship_date,
RENAME COLUMN `Ship Mode` TO ship_mode,
RENAME COLUMN `Customer ID` TO customer_id,
RENAME COLUMN `Customer Name` TO customer_name,
RENAME COLUMN `Segment` TO segment,
RENAME COLUMN `Country` TO country,
RENAME COLUMN `City` TO city,
RENAME COLUMN `State` TO state,
RENAME COLUMN `Postal Code` TO postal_code,
RENAME COLUMN `Region` TO region,
RENAME COLUMN `Product ID` TO product_id,
RENAME COLUMN `Category` TO category,
RENAME COLUMN `Sub-Category` TO sub_category,
RENAME COLUMN `Product Name` TO product_name,
RENAME COLUMN `Sales` TO sales;

ALTER TABLE superstore_clean
RENAME COLUMN `Quantity` TO quantity,
RENAME COLUMN `Discount` TO discount,
RENAME COLUMN `Profit` TO profit;

DESCRIBE superstore_clean;

SET SQL_SAFE_UPDATES = 0;

UPDATE superstore_clean
SET 
    order_date = STR_TO_DATE(order_date, '%m/%d/%Y'),
    ship_date  = STR_TO_DATE(ship_date, '%m/%d/%Y')
WHERE order_date IS NOT NULL
   OR ship_date IS NOT NULL;

ALTER TABLE superstore_clean
MODIFY order_date DATE,
MODIFY ship_date DATE;

SELECT 
    MIN(order_date) AS primeira_data,
    MAX(order_date) AS ultima_data
FROM superstore_clean;

SELECT COUNT(*) AS datas_invalidas
FROM superstore_clean
WHERE order_date IS NULL;

SELECT COUNT(*) AS datas_invalidas
FROM superstore_clean
WHERE ship_date IS NULL;

SELECT * FROM superstore_clean LIMIT 10;