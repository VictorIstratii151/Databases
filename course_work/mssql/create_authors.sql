CREATE TABLE authors(
	id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_nam VARCHAR(20) NOT NULL,
	birthday DATE NOT NULL 
);