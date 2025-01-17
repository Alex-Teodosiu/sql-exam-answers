SELECT
    reader.first_name,
    reader.last_name,
    COALESCE(COUNT(book_loan.id), 0) AS books
FROM
    reader
LEFT JOIN
    book_loan ON reader.id = book_loan.reader_id
GROUP BY
    reader.id, reader.first_name, reader.last_name
ORDER BY
    books DESC,
    reader.last_name ASC,
    reader.first_name ASC;
