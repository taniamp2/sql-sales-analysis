# SQL Sales Performance Analysis

This project analyzes transactional sales data using **PostgreSQL** to extract key business insights related to revenue, product performance, and regional sales trends.

## Dataset Structure

The dataset contains the following fields:

- order_id
- order_date
- customer_name
- product
- category
- quantity
- unit_price
- region

## Analysis Objectives

- Calculate total revenue
- Analyze revenue by region
- Identify top-performing products
- Evaluate category contribution to total sales

## Key Insights

- **Total revenue:** 4780
- **Top region:** North America generated the highest revenue (2500)
- **Top product:** Laptops produced the highest revenue despite low unit volume
- **Category dominance:** Electronics account for the majority of total revenue

## Example SQL Analysis

Revenue by region:

```sql
SELECT region,
       SUM(quantity * unit_price) AS revenue
FROM sales
GROUP BY region
ORDER BY revenue DESC;
