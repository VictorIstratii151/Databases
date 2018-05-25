use calculatoare

CREATE TABLE imprimante_stoc(
	cod INT PRIMARY KEY NOT NULL,
	model INT NOT NULL,
	color BIT NOT NULL,
	tip varchar(16) NOT NULL,
	pret INT NOT NULL
);

INSERT INTO imprimante_stoc
SELECT * FROM imprimante;