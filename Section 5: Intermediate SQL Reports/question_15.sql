SELECT
    product.name,
    product.category,
    order_items.order_id,
    order_items.quantity
FROM
    product
JOIN
    order_items ON product.id = order_items.product_id
WHERE
    order_items.quantity = (
        SELECT
            MAX(sub_order_items.quantity)
        FROM
            order_items sub_order_items
        WHERE
            sub_order_items.product_id = product.id);
