SELECT
    DATE_TRUNC(
        'month',
        TO_DATE(order_date, 'MM/DD/YYYY')
    ) AS month,
    ROUND(SUM(sales),2) AS revenue
FROM orders
GROUP BY month
ORDER BY month;