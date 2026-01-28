USE online_retail_db;

-- Index to improve performance when fetching orders by customer
CREATE INDEX idx_orders_customer_id
ON orders(customer_id);
