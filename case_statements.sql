-- Label Orders as "Small", "Medium", "Large" Based on Quantity
SELECT 
  od.order_id,
  od.quantity,
  CASE 
    WHEN od.quantity = 1 THEN 'Small Order'
    WHEN od.quantity = 2 THEN 'Medium Order'
    ELSE 'Large Order'
  END AS order_size
FROM order_details od;


-- Categorize Customers Based on Total Spend
SELECT 
  c.customer_id,
  CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
  SUM(od.quantity * p.price) AS total_spent,
  CASE 
    WHEN SUM(od.quantity * p.price) >= 2000 THEN 'VIP'
    WHEN SUM(od.quantity * p.price) >= 1000 THEN 'Regular'
    ELSE 'New'
  END AS customer_status
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
GROUP BY c.customer_id, customer_name;


--  Classify Orders by Time of Year (Month → Season)
SELECT 
  order_id,
  order_date,
  CASE 
    WHEN MONTH(order_date) IN (12, 1, 2) THEN 'Winter'
    WHEN MONTH(order_date) IN (3, 4, 5) THEN 'Spring'
    WHEN MONTH(order_date) IN (6, 7, 8) THEN 'Summer'
    ELSE 'Autumn'
  END AS season
FROM orders;

