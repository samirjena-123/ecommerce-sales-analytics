use olist_ecommerce;

SELECT
    ct.product_category_name_english AS category,
    ROUND(SUM(oi.price), 2) AS revenue
FROM order_items oi
JOIN products pr
    ON oi.product_id = pr.product_id
JOIN category_translation ct
    ON pr.product_category_name = ct.product_category_name
GROUP BY category
ORDER BY revenue DESC
LIMIT 10;