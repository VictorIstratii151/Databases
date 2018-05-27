USE MARY;
DROP PROCEDURE IF EXISTS ex_while;
SET SQL_SAFE_UPDATES = 0;

DELIMITER //

CREATE PROCEDURE ex_while ()
BEGIN
	START TRANSACTION;
		myloop: WHILE ((SELECT COUNT(*) FROM authors) < 20) DO
			INSERT INTO authors(first_name, last_name, birthday)
            VALUES ('dummy', 'authors', '1990-01-01');
		END WHILE;
        
        SELECT first_name, last_name, birthday FROM authors;
    ROLLBACK;
END; //

DELIMITER ; 

CALL ex_while();