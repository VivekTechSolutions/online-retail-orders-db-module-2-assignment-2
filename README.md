Online Retail Orders – Database Design
====================================

Module 2 Assignment Set 2
------------------------

1. Overview
***********
 
This project presents a normalized relational database design for an Online Retail Store using MySQL 8.
The objective is to model customers, products, orders, and order items with clean schema design, proper relationships, and performance-optimized indexing.

The implementation strictly follows industry best practices:

Normalized schema (3NF)

No redundant or denormalized data

Explicit queries (no SELECT *)

Justified indexing

Clean Git repository structure

2. Database Design
******************

2.1 Entities

customers – Stores customer information

products – Stores product details

orders – Stores orders placed by customers

order_items – Stores products included in each order

2.2 Relationships

One customer can place multiple orders

One order can contain multiple products

The many-to-many relationship between orders and products is resolved using order_items

2.3 Normalization

Product data is stored only once and reused across orders

Order-product relationships are handled via a junction table

Schema follows Third Normal Form (3NF)

3. Schema Design Decisions
**************************

Primary Keys are auto-incremented for uniqueness

Foreign Keys ensure referential integrity

UNIQUE(order_id, product_id) in order_items prevents duplicate products within the same order

Customer email is unique to avoid duplicate accounts

Derived values (such as order totals) are calculated at query time to avoid denormalization

4. Indexing Strategy
************************

4.1 Indexes Added

idx_orders_customer_id	    -> orders	 -> customer_id	Faster order retrieval by customer
idx_order_items_order_id    ->	order_items	order_id -> Faster access to items per order
idx_order_items_product_id  ->	order_items	product_id     ->	Efficient product joins
idx_products_name	products ->	product_name	 -> Faster product search
idx_customers_email	customers ->	email	-> Quick customer lookup