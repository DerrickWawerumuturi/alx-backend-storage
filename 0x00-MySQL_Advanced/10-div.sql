-- function divides and returns the first and
-- the second number or 0
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT DETERMINISTIC
BEGIN
    DECLARE result FLOAT DEFAULT 0;

    IF b != 0 THEN
        SET result = a / b;
    ELSE
        SET result = 0;
    END IF;

    RETURN result;
END $$
DELIMITER ;
