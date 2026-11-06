SELECT
    strftime('%Y-%m', olist_orders_dataset.order_purchase_timestamp) AS mes,
    COUNT(DISTINCT olist_orders_dataset.order_id) AS total_pedidos,
    ROUND(SUM(olist_order_items_dataset.price), 2) AS valor_vendas
FROM olist_orders_dataset
INNER JOIN olist_order_items_dataset
ON olist_orders_dataset.order_id =
   olist_order_items_dataset.order_id
GROUP BY strftime('%Y-%m', olist_orders_dataset.order_purchase_timestamp)
ORDER BY mes;