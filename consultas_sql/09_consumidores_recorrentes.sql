SELECT
    customer_unique_id,
    COUNT(*) AS total_compras
FROM olist_customers_dataset
GROUP BY customer_unique_id
HAVING COUNT(*) > 1
ORDER BY total_compras DESC;