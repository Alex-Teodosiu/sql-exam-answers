SELECT 
    title, 
    pub_year
FROM 
    book
WHERE 
    genre = 'fantasy' 
    AND SUBSTRING(title, 1, 1) = 'T';
