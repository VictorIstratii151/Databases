USE MARY;
DROP PROCEDURE IF EXISTS ex_break;
SET SQL_SAFE_UPDATES = 0;
DELIMITER //

CREATE PROCEDURE ex_break()

BEGIN
	START TRANSACTION;
		myloop: WHILE ((SELECT AVG(price) FROM books WHERE currency = 'USD') < 1000) DO
			UPDATE books
				SET price = price * 2 WHERE currency = 'USD';
			SELECT price FROM books WHERE currency = 'USD';
			IF ((SELECT MAX(price) FROM books WHERE currency = 'USD') > 500) THEN
				leave myloop;
			END IF;
        END WHILE;
    ROLLBACK;
END; //

DELIMITER ;

CALL ex_break;

