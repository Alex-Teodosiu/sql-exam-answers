SELECT 
    reader.first_name, 
    reader.last_name, 
    book.title, 
    book_loan.borrow_date
FROM 
    reader
LEFT JOIN 
    book_loan 
    ON reader.id = book_loan.reader_id 
    AND book_loan.return_date IS NULL
LEFT JOIN 
    book 
    ON book_loan.book_id = book.id;
