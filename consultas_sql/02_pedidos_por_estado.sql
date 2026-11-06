SELECT
    olist_customers_dataset.customer_state,
    COUNT(*) AS total_pedidos
FROM olist_orders_dataset
INNER JOIN olist_customers_dataset
ON olist_orders_dataset.customer_id =
   olist_customers_dataset.customer_id
GROUP BY olist_customers_dataset.customer_state
ORDER BY total_pedidos DESC;