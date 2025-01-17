SELECT
    book.title
FROM
    book
JOIN
    book_loan ON book.id = book_loan.book_id
GROUP BY
    book.id, book.title
HAVING
    COUNT(book_loan.id) >= (
        SELECT
            MAX(stephen_king_loans)
        FROM
            (
                SELECT
                    book.id AS book_id,
                    COUNT(book_loan.id) AS stephen_king_loans
                FROM
                    book
                JOIN
                    author ON book.author_id = author.id
                JOIN
                    book_loan ON book.id = book_loan.book_id
                WHERE
                    author.first_name = 'Stephen' AND author.last_name = 'King'
                GROUP BY
                    book.id
            ) AS stephen_king_loans_table
    )
ORDER BY
    book.title;
