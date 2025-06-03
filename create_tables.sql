-- Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample data
INSERT INTO customers VALUES
(1, 'Alice', 'Johnson', 'alice@email.com'),
(2, 'Bob', 'Smith', 'bob@email.com'),
(3, 'Charlie', 'Brown', 'charlie@email.com');

INSERT INTO products VALUES
(1, 'Laptop', 1200.00),
(2, 'Phone', 800.00),
(3, 'Headphones', 150.00),
(4, 'Monitor', 300.00);

INSERT INTO orders VALUES
(1, 1, '2024-05-01'),
(2, 2, '2024-06-15'),
(3, 1, '2024-07-20');

INSERT INTO order_details VALUES
(1, 1, 1, 1),
(2, 1, 3, 2),
(3, 2, 2, 1),
(4, 3, 4, 2),
(5, 3, 3, 1);
