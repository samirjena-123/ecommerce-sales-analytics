use olist_ecommerce;

SELECT
    c.customer_state,
    ROUND(SUM(p.payment_value), 2) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_payments p
    ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC;