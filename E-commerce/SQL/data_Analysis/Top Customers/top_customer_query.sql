SELECT
    customer_name,
    ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;