use zara;
-- 1. Overall Business Baseline: Total Products, Total Units Sold & Total Revenue
SELECT 
    COUNT(DISTINCT product_id) AS total_products,
    SUM(sales_volume) AS total_units_sold,
    ROUND(SUM(price * sales_volume), 2) AS total_revenue
FROM zara_sales_eda;
   
   -- 2. Section & Category Performance: Which department and category drive the most revenue?
   
SELECT 
    section,
    product_catagory,
    COUNT(product_id) AS product_count,
    SUM(sales_volume) AS total_units_sold,
    ROUND(SUM(price * sales_volume), 2) AS total_revenue,
    ROUND(AVG(price), 2) AS avg_price
FROM zara_sales_eda
GROUP BY section, product_catagory
ORDER BY total_revenue DESC;

-- 3. Store Placement Strategy: Does product position (Aisle, End-cap, Front of Store) boost sales?

SELECT 
    product_position,
    COUNT(product_id) AS total_items,
    ROUND(AVG(sales_volume), 0) AS avg_units_sold_per_item,
    ROUND(SUM(price * sales_volume), 2) AS total_revenue
FROM zara_sales_eda
GROUP BY product_position
ORDER BY avg_units_sold_per_item DESC;

-- 4. Promotional Impact: Do promoted items actually sell higher volumes than non-promoted items?

SELECT 
    promotion,
    COUNT(product_id) AS item_count,
    ROUND(AVG(price), 2) AS avg_price,
    ROUND(AVG(sales_volume), 0) AS avg_sales_volume,
    ROUND(SUM(price * sales_volume), 2) AS total_revenue
FROM zara_sales_eda
GROUP BY promotion;

-- 5. Fabric & Material Trends: Which materials generate the highest revenue and customer demand?

SELECT 
    material,
    COUNT(product_id) AS product_count,
    SUM(sales_volume) AS total_units_sold,
    ROUND(SUM(price * sales_volume), 2) AS total_revenue
FROM zara_sales_eda
WHERE material IS NOT NULL AND material != ''
GROUP BY material
ORDER BY total_revenue DESC
LIMIT 10;



