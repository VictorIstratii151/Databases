USE MARY;

DECLARE Author_Cursor CURSOR FOR
SELECT id, first_name, last_name
FROM authors
WHERE birthday > '1900-01-01';
OPEN Author_Cursor;
FETCH NEXT FROM Author_Cursor;
WHILE @@FETCH_STATUS = 0
	BEGIN
		FETCH NEXT FROM Author_Cursor;
	END;
CLOSE Author_Cursor;
DEALLOCATE Author_Cursor;
GO
