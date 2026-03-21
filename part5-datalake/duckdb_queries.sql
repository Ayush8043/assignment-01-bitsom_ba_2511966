-- Q1:
SELECT c.customer_id, COUNT(o.order_id) AS total_orders
FROM read_csv_auto('customers.csv') c
LEFT JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- Q2:
SELECT c.customer_id, SUM(o.total_amount) AS total_spent
FROM read_csv_auto('customers.csv') c
JOIN read_json_auto('orders.json') o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 3;

-- Q3:
SELECT *
FROM read_csv_auto('customers.csv')
WHERE LOWER(city)='bangalore';

-- Q4:
SELECT *
FROM read_json_auto('orders.json');
