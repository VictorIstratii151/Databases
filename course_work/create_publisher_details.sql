CREATE TABLE publisher_details(
	id INT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	publisher_id INT NOT NULL UNIQUE FOREIGN KEY REFERENCES publishers(id),
	annual_income MONEY NOT NULL,
	orig_country VARCHAR(255),
	nr_workers INT NOT NULL,
	created_at DATE NOT NULL
);