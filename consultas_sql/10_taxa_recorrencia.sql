SELECT
    COUNT(DISTINCT customer_unique_id) AS total_consumidores,
    COUNT(DISTINCT CASE
        WHEN total_compras > 1 THEN customer_unique_id
    END) AS consumidores_recorrentes,
    ROUND(
        COUNT(DISTINCT CASE
            WHEN total_compras > 1 THEN customer_unique_id
        END) * 100.0 /
        COUNT(DISTINCT customer_unique_id),
        2
    ) AS taxa_recorrencia
FROM (
    SELECT
        customer_unique_id,
        COUNT(*) AS total_compras
    FROM olist_customers_dataset
    GROUP BY customer_unique_id
);