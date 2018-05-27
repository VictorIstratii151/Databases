USE MARY;
GO
IF (SELECT COUNT(*) FROM authors) < 10
	PRINT 'There are quite fiew authors in our database.';
ELSE
	PRINT 'I think there are just enough authors in our database.';