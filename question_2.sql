SELECT 
    name, 
    category, 
    price
FROM 
    product
WHERE 
    (price <= 10 OR price >= 40) 
    AND category = 'pants';
