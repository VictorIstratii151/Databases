USE MARY;
GO
BEGIN TRAN;
WHILE ((SELECT AVG(price) FROM books WHERE currency = 'USD') < 1000)
BEGIN
	UPDATE books
		SET price = price * 2 WHERE currency = 'USD';
	SELECT price FROM books WHERE currency = 'USD';
	IF ((SELECT MAX(price) FROM books WHERE currency = 'USD') > 500)
		BREAK
	ELSE
		CONTINUE
END;
ROLLBACK TRAN;