CREATE TABLE orders (
    row_id INT,
    order_id VARCHAR(30),
    order_date TEXT,
    ship_date TEXT,
    ship_mode VARCHAR(50),
    customer_id VARCHAR(30),
    customer_name VARCHAR(100),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    product_id VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales NUMERIC,
    quantity INT,
    discount NUMERIC,
    profit NUMERIC
);


COPY orders
FROM 'D:\E-commerce\SQL\Data_import/Sample_Superstore_UTF8.csv'
WITH (
    FORMAT CSV,
    HEADER TRUE
);