USE MARY;
GO
DECLARE @HawkingId INT;
DECLARE @AvgHawkingPrice MONEY;
SET @HawkingId = (SELECT id FROM authors WHERE first_name = 'Stephen' AND last_name = 'Hawking');

IF (SELECT COUNT(*) FROM books_authors WHERE author_id = @HawkingId) > 0
BEGIN
	SET @AvgHawkingPrice = 
		(SELECT AVG(price)
		FROM books
		WHERE id IN (SELECT book_id
					FROM books_authors
					WHERE author_id = @HawkingId));
	PRINT 'The average price for books written by Stephen Hawking is ' + CAST(@AvgHawkingPrice as varchar(255)); 
END;
ELSE
BEGIN
	PRINT 'There are no recorded books written by Stephen Hawking';
END;