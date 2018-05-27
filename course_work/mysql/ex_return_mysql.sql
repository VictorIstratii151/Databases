USE MARY;
DROP FUNCTION IF EXISTS ex_return;
-- SET SQL_SAFE_UPDATES = 0;
DELIMITER //

CREATE FUNCTION ex_return(pub_id INT(6)UNSIGNED) RETURNS DECIMAL(15, 2)
BEGIN
	DECLARE result DECIMAL(15, 2);
    SET result = (SELECT annual_income FROM publisher_details WHERE publisher_id = pub_id);
    RETURN result;
END; //

DELIMITER ;

SELECT ex_return(3);