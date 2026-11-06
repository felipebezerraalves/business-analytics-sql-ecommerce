SELECT
    olist_orders_dataset.order_id,
    olist_orders_dataset.order_status,
    olist_customers_dataset.customer_city,
    olist_customers_dataset.customer_state
FROM olist_orders_dataset
INNER JOIN olist_customers_dataset
ON olist_orders_dataset.customer_id =
   olist_customers_dataset.customer_id
LIMIT 10;