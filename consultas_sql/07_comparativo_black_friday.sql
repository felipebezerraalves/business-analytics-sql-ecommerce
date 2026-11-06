WITH vendas_diarias AS (
    SELECT
        DATE(olist_orders_dataset.order_purchase_timestamp) AS dia,
        SUM(olist_order_items_dataset.price) AS valor_vendas
    FROM olist_orders_dataset
    INNER JOIN olist_order_items_dataset
    ON olist_orders_dataset.order_id =
       olist_order_items_dataset.order_id
    WHERE olist_orders_dataset.order_purchase_timestamp >= '2017-11-01'
      AND olist_orders_dataset.order_purchase_timestamp < '2017-12-01'
    GROUP BY DATE(olist_orders_dataset.order_purchase_timestamp)
),
comparativo AS (
    SELECT
        MAX(CASE WHEN dia = '2017-11-24' THEN valor_vendas END) AS vendas_black_friday,
        AVG(CASE WHEN dia <> '2017-11-24' THEN valor_vendas END) AS media_outros_dias
    FROM vendas_diarias
)
SELECT
    ROUND(vendas_black_friday, 2) AS vendas_black_friday,
    ROUND(media_outros_dias, 2) AS media_outros_dias,
    ROUND(
        (vendas_black_friday - media_outros_dias)
        / media_outros_dias * 100,
        2
    ) AS variacao_percentual
FROM comparativo;