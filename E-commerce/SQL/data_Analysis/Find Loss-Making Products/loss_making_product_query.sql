SELECT
    product_name,
    ROUND(SUM(profit),2) AS total_profit
FROM orders
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit;