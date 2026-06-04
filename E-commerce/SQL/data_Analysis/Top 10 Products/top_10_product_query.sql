SELECT
    product_name,
    ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;