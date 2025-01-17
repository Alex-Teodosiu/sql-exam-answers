SELECT
    order_id,
    order_date,
    total_price,
    SUM(total_price) OVER (ORDER BY order_date) AS running_total
FROM
    orders
ORDER BY
    order_date;
