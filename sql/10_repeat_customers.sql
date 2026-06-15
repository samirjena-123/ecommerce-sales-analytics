use olist_ecommerce;

SELECT
    COUNT(*) AS repeat_customers
FROM (
    SELECT
        customer_unique_id,
        COUNT(*) AS orders_count
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY customer_unique_id
    HAVING COUNT(*) > 1
) t;