-- create a view that list all students that have a
-- score of under 80 and no last meeting
DROP VIEW IF EXISTS  need_meeting;
DELIMITER $$
CREATE VIEW need_meeting AS
    SELECT name
        FROM students
        WHERE score < 80 and
            (
                last_meeting IS NULL
                OR last_meeting < SUBDATE(CURRENT_DATE(), INTERVAL 1 MONTH)
            )