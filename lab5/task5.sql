INSERT INTO pc_uri (cod, model, viteza, ram, hd, pret)
SELECT
	min(cod) + 30,
	model,
	max(viteza),
	max(ram) * 2,
	max(hd) * 2,
	max(pret) / 1.5
FROM laptop_uri
GROUP BY model;