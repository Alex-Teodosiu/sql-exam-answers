SELECT 
    title, 
    genre
FROM 
    book
WHERE 
    pub_year = 1998 
    AND LENGTH(title) = 5;
