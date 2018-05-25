CREATE TABLE books_authors(
	book_id int,
	author_id int,
	CONSTRAINT book_author_pk PRIMARY KEY (book_id, author_id),
	CONSTRAINT FK_book FOREIGN KEY (book_id) REFERENCES books(id),
	CONSTRAINT FK_author FOREIGN KEY (author_id) REFERENCES authors(id)
);