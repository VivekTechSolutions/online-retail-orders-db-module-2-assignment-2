
========================== feature/db-design ==================================

-- Create the database only if it does not already exist
CREATE DATABASE IF NOT EXISTS online_retail_db;

-- Switch to the online_retail_db database for subsequent operations
USE online_retail_db;


=========================== feature/db-schema-design =========================

-- Customer table
-- Stores basic customer details.
-- One customer can place multiple orders.
CREATE TABLE IF NOT EXISTS customers (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);


-- Product table
-- Stores product information.
-- Product data is stored only once and reused in orders.
CREATE TABLE IF NOT EXISTS products (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);


-- Orders table
-- Stores order details placed by customers.
-- Each order belongs to one customer.
CREATE TABLE IF NOT EXISTS orders (
    order_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


-- Order items table
-- Stores products included in each order.
-- Connects orders and products.
-- Prevents the same product from appearing twice in one order.
CREATE TABLE IF NOT EXISTS order_items (
    order_item_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    UNIQUE (order_id, product_id)
);
