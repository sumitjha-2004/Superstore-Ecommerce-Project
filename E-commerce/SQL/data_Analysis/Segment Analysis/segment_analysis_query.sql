SELECT
    segment,
    ROUND(SUM(sales),2) AS revenue,
    ROUND(SUM(profit),2) AS profit
FROM orders
GROUP BY segment
ORDER BY revenue DESC;