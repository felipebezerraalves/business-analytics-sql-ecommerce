SELECT
    DATE(olist_orders_dataset.order_purchase_timestamp) AS dia,
    COUNT(DISTINCT olist_orders_dataset.order_id) AS total_pedidos,
    ROUND(SUM(olist_order_items_dataset.price), 2) AS valor_vendas
FROM olist_orders_dataset
INNER JOIN olist_order_items_dataset
ON olist_orders_dataset.order_id =
   olist_order_items_dataset.order_id
WHERE olist_orders_dataset.order_purchase_timestamp >= '2017-11-01'
AND olist_orders_dataset.order_purchase_timestamp < '2017-12-01'
GROUP BY DATE(olist_orders_dataset.order_purchase_timestamp)
ORDER BY valor_vendas DESC;