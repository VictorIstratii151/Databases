CREATE TABLE books(
	id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	name VARCHAR(25) NOT NULL,
	price SMALLMONEY NOT NULL,
	currency VARCHAR(10) NOT NULL,
	publisher_id int FOREIGN KEY REFERENCES publishers(id)
);