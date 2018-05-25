/*Lab 3 exercises*/

use calculatoare
go

/*ex 1*/
SELECT model, viteza, hd FROM pc_uri
WHERE pret < 500;

/*ex 2*/
SELECT producator FROM produse
WHERE tip = 'Imprimante';

/*ex 3*/
SELECT model, ram FROM laptop_uri
WHERE pret > 1000;

/*ex 4*/
SELECT * FROM imprimante
WHERE color = 1;

/*ex 5*/
SELECT model, viteza, hd FROM pc_uri
WHERE pret < 600 AND cd IN ('12x', '24x');

/*ex 6*/
SELECT p1.producator, p2.viteza FROM produse as p1, pc_uri as p2
WHERE p1.model = p2.model
AND p2.hd = (SELECT min(hd) FROM pc_uri);


SELECT p1.producator, p2.viteza FROM produse as p1 INNER JOIN  pc_uri as p2
ON p1.model = p2.model WHERE
p2.hd = (SELECT min(hd) FROM pc_uri);

/*ex 7*/
SELECT produse.model, produse.producator FROM produse, pc_uri, laptop_uri, imprimante
WHERE pc_uri.pret > 450 OR laptop_uri.pret > 450 OR imprimante.pret > 450;

/*ex 8*/
SELECT DISTINCT producator FROM produse
WHERE producator NOT IN 
(SELECT DISTINCT producator FROM produse 
WHERE tip = 'imprimante')
/*mai intai gasim producatorii care vind imprimante.
 Apoi selectam din toti producatorii pe acee care nu le vind*/

 /*ex 9*/
SELECT producator FROM pc_uri, produse
WHERE viteza > 450 AND produse.model = pc_uri.model;

/*ex 10*/
SELECT model, pret FROM imprimante
WHERE pret = (SELECT max(pret) FROM imprimante);

/*ex 11*/
SELECT avg(viteza) AS viteza_medie FROM pc_uri;

/*12*/
SELECT avg(viteza) AS viteza_medie_peste_1000 FROM laptop_uri 
WHERE Pret > 1000;

/*13*/
SELECT avg(viteza) viteza_medie_producator_A FROM pc_uri, produse
WHERE producator = 'A';

/*14*/
SELECT pc_uri.model, producator FROM pc_uri, produse 
WHERE viteza > (SELECT max(viteza) FROM laptop_uri);

/*15*/
SELECT producator FROM produse, pc_uri 
WHERE ram > (SELECT avg(ram) FROM laptop_uri);

/*16*/ 
SELECT laptop_uri.model FROM laptop_uri, pc_uri
WHERE laptop_uri.pret > (SELECT min(pret) FROM pc_uri) * 2;

/*17*/
SELECT viteza, AVG(pret) as Pret_mediu from pc_uri
GROUP BY viteza;


/*next 18*/

/*18*/
SELECT hd, COUNT(hd) as numar FROM pc_uri
GROUP BY hd
HAVING COUNT(hd) >= 2;

/*19*/
SELECT PC1.model, PC2.model, PC1.viteza, PC1.ram
FROM pc_uri as PC1, pc_uri as PC2
WHERE
PC1.viteza = PC2.viteza AND
PC1.ram = PC2.ram AND
PC1.model != PC2.model;

/*20*/
SELECT DISTINCT tip, laptop_uri.model, laptop_uri.viteza
FROM laptop_uri, produse
WHERE laptop_uri.viteza < ANY (SELECT viteza FROM pc_uri)
AND tip = 'Laptop_uri';

/*21*/
SELECT producator, laptop_uri.model, laptop_uri.pret
FROM produse, laptop_uri
WHERE pret = (SELECT max(pret) FROM laptop_uri)
AND produse.model = laptop_uri.model
UNION
SELECT producator, pc_uri.model, pc_uri.pret
FROM produse, pc_uri
WHERE pret = (SELECT max(pret) FROM pc_uri)
AND produse.model = pc_uri.model;

/*22*/
SELECT producator, AVG(ecran) as Marime_medie FROM produse, laptop_uri
WHERE laptop_uri.model = produse.model
GROUP BY producator;

/*23*/
SELECT producator, COUNT(model) AS numar_de_modele FROM produse
GROUP BY producator
HAVING COUNT(model) >= 3;

/*24*/
SELECT producator, MAX(pret) AS Pret_maximal FROM produse, pc_uri
WHERE pc_uri.model = produse.model
GROUP BY producator;

/*25*/
SELECT viteza, AVG(pret) AS Pret_mediu FROM pc_uri
WHERE viteza > 600
GROUP BY viteza;

/*26*/
SELECT DISTINCT producator FROM produse, laptop_uri, pc_uri
WHERE laptop_uri.viteza > 750 OR pc_uri.viteza > 750
AND (pc_uri.model = produse.model OR laptop_uri.model = produse.model);


/*27*/
SELECT SUM(pret_minim) AS
'suma celor mai ieftine imprimante'
FROM
(
	SELECT DISTINCT MIN(pret) as pret_minim
	FROM imprimante 
	GROUP BY tip
)   temp_table;

/*28*/
WITH Temp AS 
(
	SELECT model, pret FROM pc_uri
	UNION 
	SELECT model, pret FROM laptop_uri
	UNION
	SELECT model, pret FROM imprimante
)  
SELECT model as 
'Cel mai scump'
FROM Temp
WHERE pret = (SELECT MAX(pret) FROM Temp)

/*28*/
SELECT producator FROM produse,pc_uri
	WHERE ram = (SELECT MIN(ram) FROM pc_uri)
	AND (pc_uri.model = produse.model) 
INTERSECT
SELECT DISTINCT producator 
	FROM produse
	WHERE tip = 'Imprimante';

/*30*/
SELECT producator, AVG(pret) AS Avg_price_prod
	FROM produse, pc_uri
	WHERE pc_uri.model = produse.model 
	GROUP BY producator
	HAVING producator IN
(SELECT DISTINCT producator 
	FROM produse
	WHERE tip = 'Imprimante');

/*40*/
SELECT AVG(hd) AS AVG_HDD FROM pc_uri, produse
	WHERE pc_uri.model = produse.model 
	AND producator IN
(SELECT DISTINCT producator 
	FROM produse
	WHERE tip = 'Imprimante');

/*41*/
WITH t AS
(	SELECT model, pret FROM pc_uri
	UNION 
	SELECT model, pret FROM laptop_uri
	UNION
	SELECT model, pret FROM imprimante)
 
SELECT producator, tip, produse.model, t.pret 
FROM produse, t
WHERE t.model = produse.model and
producator IN
	(
	SELECT producator FROM produse
	GROUP BY producator
	HAVING COUNT(tip) = 1
	);