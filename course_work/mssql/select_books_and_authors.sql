SELECT b.name, a.first_name, a.last_name
FROM books b
INNER JOIN books_authors ba
	ON b.id = ba.book_id
INNER JOIN authors a
	ON a.id = ba.author_id;