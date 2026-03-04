-- Create table
CREATE TABLE sales (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price NUMERIC(10,2),
    region VARCHAR(50)
);

-- Insert data
INSERT INTO sales (order_date, customer_name, product, category, quantity, unit_price, region) VALUES
('2025-01-05','Maria Lopez','Laptop','Electronics',1,1200,'Europe'),
('2025-01-07','John Smith','Mouse','Electronics',3,25,'Europe'),
('2025-01-10','Anna Petrova','Desk Chair','Furniture',2,150,'Asia'),
('2025-01-12','David Kim','Monitor','Electronics',1,300,'Asia'),
('2025-01-15','Elena Rossi','Notebook','Office Supplies',5,5,'Europe'),
('2025-02-01','Chris Brown','Tablet','Electronics',2,400,'North America'),
('2025-02-03','Sophia Lee','Desk','Furniture',1,500,'North America'),
('2025-02-08','Liam Wilson','Keyboard','Electronics',4,45,'Europe'),
('2025-02-10','Emma Novak','Printer','Office Supplies',1,200,'Asia'),
('2025-02-15','Noah Garcia','Laptop','Electronics',1,1200,'North America');

-- Total revenue
SELECT SUM(quantity * unit_price) AS total_revenue
FROM sales;

-- Revenue by region
SELECT region,
       SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- Product performance
SELECT product,
       SUM(quantity) AS total_units_sold,
       SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC;

-- Category revenue
SELECT category,
       SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY category
ORDER BY revenue DESC;