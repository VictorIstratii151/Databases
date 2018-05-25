CREATE TABLE nodes(
	id INT,
	dependent_id INT
);

INSERT INTO nodes
VALUES
	(4, 2),
	(3, 2),
	(2, 1),
	(1, 0),
	(5, 0),
	(0, NULL);
