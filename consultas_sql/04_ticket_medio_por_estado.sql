SELECT
    olist_customers_dataset.customer_state,
    COUNT(DISTINCT olist_orders_dataset.order_id) AS total_pedidos,
    ROUND(SUM(olist_order_items_dataset.price), 2) AS valor_vendas,
    ROUND(
        SUM(olist_order_items_dataset.price) /
        COUNT(DISTINCT olist_orders_dataset.order_id),
        2
    ) AS ticket_medio
FROM olist_orders_dataset
INNER JOIN olist_customers_dataset
ON olist_orders_dataset.customer_id =
   olist_customers_dataset.customer_id
INNER JOIN olist_order_items_dataset
ON olist_orders_dataset.order_id =
   olist_order_items_dataset.order_id
GROUP BY olist_customers_dataset.customer_state
ORDER BY ticket_medio DESC;