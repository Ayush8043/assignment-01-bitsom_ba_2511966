CREATE TABLE dim_product (
    product_id VARCHAR PRIMARY KEY,
    category VARCHAR
);

CREATE TABLE dim_store (
    store_id VARCHAR PRIMARY KEY,
    city VARCHAR
);

CREATE TABLE dim_date (
    date_id DATE PRIMARY KEY
);

CREATE TABLE fact_sales (
    sale_id VARCHAR,
    product_id VARCHAR,
    store_id VARCHAR,
    date_id DATE,
    total_amount DECIMAL
);
