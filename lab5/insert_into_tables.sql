use calculatoare

INSERT INTO pc_uri(cod, model, viteza, ram, hd, cd, pret)
VALUES
	(1, 1232, 500, 64, 5, '12x', 600),
	(2, 1121, 750, 128, 14, '40x', 850),
	(3, 1233, 500, 64, 5, '12x', 600),
	(4, 1121, 600, 128, 14, '40x', 850),
	(5, 1121, 600, 128, 8, '40x', 850),
	(6, 1233, 750, 128, 20, '50x', 950),
	(7, 1232, 500, 32, 10, '12x', 400),
	(8, 1232, 450, 64, 8, '24x', 350),
	(9, 1232, 450, 32, 10, '24x', 350),
	(10, 1260, 500, 32, 10, '12x', 350),
	(11, 1233, 900, 128, 40, '40x', 980);


INSERT INTO laptop_uri(cod, model, viteza, ram, hd, pret, ecran)
VALUES
	(1, 1298, 350, 32, 4, 700, 11),
	(2, 1321, 500, 64, 8, 970, 12),
	(3, 1750, 750, 128, 12, 1200, 14),
	(4, 1298, 600, 64, 10, 1050, 15),
	(5, 1752, 750, 128, 10, 1150, 15),
	(6, 1298, 450, 64, 10, 950, 12);


INSERT INTO imprimante(cod, model, color, tip, pret)
VALUES
	(1, 1276, 0, 'Laser', 400),
	(2, 1433, 1, 'Jet', 270),
	(3, 1434, 1, 'Jet', 290),
	(4, 1401, 0, 'Matrix', 150),
	(5, 1408, 0, 'Matrix', 270),
	(6, 1288, 0, 'Laser', 400);


INSERT INTO produse(producator, model, tip)
VALUES
	('B', 1121, 'PC'),
	('A', 1232, 'PC'),
	('A', 1233, 'PC'),
	('E', 1260, 'PC'),
	('A', 1276, 'Imprimante'),
	('D', 1288, 'Imprimante'),
	('A', 1298, 'Laptop_uri'),
	('C', 1321, 'Laptop_uri'),
	('A', 1401, 'Imprimante'),
	('A', 1408, 'Imprimante'),
	('D', 1433, 'Imprimante'),
	('E', 1434, 'Imprimante'),
	('B', 1750, 'Laptop_uri'),
	('A', 1752, 'Laptop_uri'),
	('E', 2111, 'PC'),
	('E', 2112, 'PC');