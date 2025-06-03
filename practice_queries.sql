SELECT 
o.order_id,
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

SELECT 
CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
  SUM(od.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY customer_name;
