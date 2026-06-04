SELECT
    category,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY category
ORDER BY revenue DESC;