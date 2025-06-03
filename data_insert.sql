USE sales_data;

-- Insert Customers
INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'Alice', 'Johnson', 'alice@email.com'),
(2, 'Bob', 'Smith', 'bob@email.com'),
(3, 'Charlie', 'Brown', 'charlie@email.com'),
(4, 'Doreen', 'Njagi', 'doreen@email.com'),
(5, 'Eli', 'Carter', 'eli@email.com'),
(6, 'Faith', 'Kimani', 'faith@email.com'),
(7, 'George', 'Odhiambo', 'george@email.com'),
(8, 'Hilda', 'Mwangi', 'hilda@email.com'),
(9, 'Ian', 'Murithi', 'ian@email.com'),
(10, 'Joyce', 'Kariuki', 'joyce@email.com'),
(11, 'Kevin', 'Otieno', 'kevin@email.com'),
(12, 'Lilian', 'Chebet', 'lilian@email.com');

-- Insert Products
INSERT INTO products (product_id, product_name, price) VALUES
(1, 'Laptop', 1200.00),
(2, 'Phone', 800.00),
(3, 'Headphones', 150.00),
(4, 'Monitor', 300.00),
(5, 'Keyboard', 100.00);

-- Insert Orders
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-05-01'),
(2, 2, '2024-06-15'),
(3, 1, '2024-07-20'),
(4, 5, '2024-08-01'),
(5, 6, '2024-08-05'),
(6, 3, '2024-08-10'),
(7, 7, '2024-08-12'),
(8, 8, '2024-08-15');

-- Insert Order Details
INSERT INTO order_details (order_detail_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 1),   -- 1 Laptop
(2, 1, 3, 2),   -- 2 Headphones
(3, 2, 2, 1),   -- 1 Phone
(4, 3, 4, 2),   -- 2 Monitors
(5, 3, 3, 1),   -- 1 Headphones
(6, 4, 2, 2),   -- 2 Phones
(7, 4, 3, 1),   -- 1 Headphones
(8, 5, 1, 1),   -- 1 Laptop
(9, 6, 5, 2),   -- 2 Keyboards
(10, 7, 3, 3),  -- 3 Headphones
(11, 8, 2, 1),  -- 1 Phone
(12, 8, 4, 1);  -- 1 Monitor
