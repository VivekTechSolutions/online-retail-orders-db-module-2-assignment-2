USE online_retail_db;

-- Orders: frequently joined with customers
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);

-- Order items: frequently joined with orders
CREATE INDEX idx_order_items_order_id
ON order_items(order_id);

-- Order items: frequently joined with products
CREATE INDEX idx_order_items_product_id
ON order_items(product_id);

-- Products: searched by name
CREATE INDEX idx_products_name
ON products(product_name);

-- Customers: searched by email
CREATE INDEX idx_customers_email
ON customers(email);


