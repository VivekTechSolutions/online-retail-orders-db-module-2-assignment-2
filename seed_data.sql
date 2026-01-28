USE online_retail_db;

-- Customers
INSERT INTO customers (name, email) VALUES
('Vivek Kumar', 'vivek.kumar@example.com'),
('Anita Sharma', 'anita.sharma@example.com'),
('Rahul Verma', 'rahul.verma@example.com');

-- Products
INSERT INTO products (product_name, price) VALUES
('Laptop', 65000.00),
('Wireless Mouse', 1200.00),
('Keyboard', 2500.00),
('Monitor', 15000.00);

-- Orders (order_date auto-generated)
INSERT INTO orders (customer_id) VALUES
(1),
(1),
(2);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(2, 4, 1),
(3, 2, 1),
(3, 3, 2);
