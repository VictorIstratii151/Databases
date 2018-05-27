IF OBJECT_ID('publisherincome', 'P') IS NOT NULL
	DROP PROCEDURE publisherincome;
GO
CREATE PROCEDURE publisherincome @pub_id INT = NULL
AS
IF @pub_id IS NULL
	RAISERROR ('You must give a valid publisher ID', 10,1) WITH NOWAIT
ELSE
	BEGIN
		DECLARE @result MONEY
		SET @result = (SELECT annual_income FROM publisher_details WHERE publisher_id = @pub_id)
		PRINT 'The result is ' +  CAST(@result as varchar(255))
		RETURN @result
	END;
GO 

EXEC publisherincome 3;
