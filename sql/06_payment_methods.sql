use olist_ecommerce;

SELECT
    payment_type,
    COUNT(*) AS transactions,
    ROUND(AVG(payment_installments), 2) AS avg_installments,
    ROUND(SUM(payment_value), 2) AS total_value
FROM order_payments
GROUP BY payment_type
ORDER BY total_value DESC;