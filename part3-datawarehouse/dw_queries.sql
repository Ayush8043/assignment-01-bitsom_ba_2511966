-- Q1:
SELECT p.category, SUM(f.total_amount)
FROM fact_sales f
JOIN dim_product p ON f.product_id = p.product_id
GROUP BY p.category;

-- Q2:
SELECT store_id, SUM(total_amount)
FROM fact_sales
GROUP BY store_id
ORDER BY SUM(total_amount) DESC
LIMIT 2;

-- Q3:
SELECT date_id, SUM(total_amount)
FROM fact_sales
GROUP BY date_id;
