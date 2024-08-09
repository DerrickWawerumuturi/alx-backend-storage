-- Script creates a trigger that resets the
-- valid_email attribute only when the email
-- has been changed

DROP TRIGGER IF EXISTS resetEmail;
DELIMITER $$
CREATE TRIGGER resetEmail
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email != NEW.email THEN
        SET NEW.valid_email = 0;
    ELSE
        SET NEW.valid_email = NEW.valid_email;
    END IF;
END $$
DELIMITER ;
