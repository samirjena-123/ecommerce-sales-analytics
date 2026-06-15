use olist_ecommerce;

SELECT
    review_score,
    COUNT(*) AS reviews
FROM order_reviews
GROUP BY review_score
ORDER BY review_score;