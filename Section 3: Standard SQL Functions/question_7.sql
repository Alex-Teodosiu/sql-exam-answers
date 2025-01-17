SELECT 
    YEAR(order_date) AS year, 
    ROUND(SUM(price), 2) AS revenue, 
    ROUND(AVG(price), 2) AS avg_sale
FROM 
    sale
GROUP BY 
    YEAR(order_date);
