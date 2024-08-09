-- creating a table called users
-- with attributes id, email, name and country
-- project focusses on making an atrribute unique
-- directly in a schema to avoid bugs and enforce rules
DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') NOT NULL
)
