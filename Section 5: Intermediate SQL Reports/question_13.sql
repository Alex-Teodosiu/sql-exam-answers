SELECT 
    treatment1.name, 
    treatment1.type
FROM 
    treatment AS treatment1
JOIN 
    (SELECT 
         type, 
         AVG(price) AS avg_price
     FROM 
         treatment
     GROUP BY 
         type) AS treatment2
ON 
    treatment1.type = treatment2.type
WHERE 
    treatment1.price > treatment2.avg_price;
