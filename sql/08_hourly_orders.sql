use olist_ecommerce;

SELECT
    HOUR(order_purchase_timestamp) AS purchase_hour,
    COUNT(*) AS total_orders
FROM orders
GROUP BY purchase_hour
ORDER BY purchase_hour;