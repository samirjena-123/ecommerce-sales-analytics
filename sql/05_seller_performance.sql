use olist_ecommerce;

SELECT
    s.seller_id,
    ROUND(SUM(oi.price), 2) AS revenue,
    ROUND(AVG(r.review_score), 2) AS avg_rating
FROM sellers s
JOIN order_items oi
    ON s.seller_id = oi.seller_id
JOIN order_reviews r
    ON oi.order_id = r.order_id
GROUP BY s.seller_id
ORDER BY revenue DESC
LIMIT 20;