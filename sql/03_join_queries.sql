USE online_retail_db;

-- 1. Orders with customer details
SELECT
    o.order_id,
    o.order_date,
    c.customer_id,
    c.name,
    c.email
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- 2. Orders with their products
SELECT
    o.order_id,
    o.order_date,
    p.product_id,
    p.product_name,
    p.price,
    oi.quantity
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id;
