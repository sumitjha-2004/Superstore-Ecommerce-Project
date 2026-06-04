WITH customer_sales AS (
    SELECT
        region,
        customer_name,
        SUM(sales) AS revenue,
        ROW_NUMBER() OVER(
            PARTITION BY region
            ORDER BY SUM(sales) DESC
        ) AS rn
    FROM orders
    GROUP BY region, customer_name
)
SELECT *
FROM customer_sales
WHERE rn = 1;