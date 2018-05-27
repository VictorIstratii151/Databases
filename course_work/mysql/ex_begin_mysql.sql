USE MARY;
DROP PROCEDURE IF EXISTS AverageHawkingPrice;
DELIMITER //

CREATE PROCEDURE AverageHawkingPrice ()

BEGIN
    DECLARE avg_hawking_prices DECIMAL(15, 2);
    DECLARE hawking_id INT(6) UNSIGNED;
    SET hawking_id = (SELECT id FROM authors WHERE first_name = 'Stephen' AND last_name = 'Hawking');
		
	SET avg_hawking_prices = 
 		(SELECT AVG(price)
 		FROM books
 		WHERE id IN (SELECT book_id
 					FROM books_authors
 					WHERE author_id = hawking_id));
                    
    IF ((SELECT COUNT(*) FROM books_authors WHERE author_id = hawking_id) > 1) THEN
        SELECT CONCAT('Avg Hawking books price is: ', CONVERT(avg_hawking_prices USING utf8));
	ELSEIF ((SELECT COUNT(*) FROM books_authors WHERE author_id = hawking_id) = 1) THEN
		SELECT CONCAT('There is only one Hawking book and its price is: ', CONVERT(avg_hawking_prices USING utf8));
	ELSE
		SELECT 'There are no recorded books written by Stephen Hawking';
    END IF;
    
END; //

DELIMITER ;

CALL AverageHawkingPrice;
