CREATE OR REPLACE VIEW view_vendas_detalhadas AS
SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    o.order_purchase_timestamp AS data_compra,

    oi.price AS preco,
    oi.freight_value AS frete,
    ROUND((oi.price + oi.freight_value), 2) AS valor_total,
    
    COALESCE(p.product_category_name, 'Não definido') AS categoria,
    
    c.customer_city AS cidade_cliente,
    c.customer_state AS estado_cliente

FROM orders o
INNER JOIN order_items oi ON o.order_id = oi.order_id
INNER JOIN products p    ON oi.product_id = p.product_id
INNER JOIN customers c   ON o.customer_id = c.customer_id

WHERE o.order_status != 'canceled';


SELECT * FROM view_vendas_detalhadas 
LIMIT 10;