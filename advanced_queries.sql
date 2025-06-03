SELECT 
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
  SUM(od.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 3;
SELECT 
  DATE_FORMAT(o.order_date, '%Y-%m') AS month,
  SUM(od.quantity * p.price) AS revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY month
ORDER BY month;
SELECT 
  o.order_id,
  COUNT(od.product_id) AS product_count
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
GROUP BY o.order_id
HAVING product_count > 2;