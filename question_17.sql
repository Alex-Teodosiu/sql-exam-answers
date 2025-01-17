SELECT
    product.name AS name,
    product.category AS category,
    SUM(order_items.quantity) AS total_quantity,
    RANK() OVER (
        PARTITION BY product.category
        ORDER BY SUM(order_items.quantity) DESC, product.name ASC
    ) AS category_rank
FROM
    product
JOIN
    order_items ON product.id = order_items.product_id
GROUP BY
    product.id, product.name, product.category
ORDER BY
    product.category ASC, category_rank ASC, product.name ASC;
