USE MARY;

CREATE TABLE authors(
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
birthday DATE NOT NULL
);