select
	p.product_category_name AS categoria,
    round(SUM(oi.price),2) AS faturamento_total,
    COUNT(oi.order_item_id) AS total_vendas
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY categoria
ORDER BY faturamento_total DESC
LIMIT 10;
