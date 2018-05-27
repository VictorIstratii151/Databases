USE MARY;
DROP PROCEDURE IF EXISTS ex_if_else;
DELIMITER //

CREATE PROCEDURE ex_if_else()

BEGIN
	IF (SELECT COUNT(*) FROM authors) < 10 THEN
		SELECT 'There are quite fiew authors in our database.';
	ELSE
		SELECT 'I think there are just enough authors in our database.';
	END IF;
END; //

DELIMITER ;

CALL ex_if_else;