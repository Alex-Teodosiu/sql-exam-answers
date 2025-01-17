SELECT 
    book_title, 
    reader, 
    borrow_date, 
    return_date
FROM 
    book_loan
WHERE 
    DATEDIFF(return_date, borrow_date) <= 5;
