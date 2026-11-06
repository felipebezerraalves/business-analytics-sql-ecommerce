WITH compras_por_consumidor AS (
    SELECT
        olist_customers_dataset.customer_unique_id,
        COUNT(DISTINCT olist_orders_dataset.order_id) AS total_compras
    FROM olist_orders_dataset
    INNER JOIN olist_customers_dataset
    ON olist_orders_dataset.customer_id =
       olist_customers_dataset.customer_id
    WHERE olist_orders_dataset.order_status = 'delivered'
    GROUP BY olist_customers_dataset.customer_unique_id
)
SELECT
    COUNT(*) AS total_consumidores,
    SUM(CASE
        WHEN total_compras > 1 THEN 1
        ELSE 0
    END) AS consumidores_recorrentes,
    ROUND(
        SUM(CASE
            WHEN total_compras > 1 THEN 1
            ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS taxa_recompra
FROM compras_por_consumidor;