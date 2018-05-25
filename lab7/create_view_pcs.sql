USE Calculatoare
GO 
IF OBJECT_ID ('view_pcs', 'V') IS NOT NULL DROP VIEW view_pcs 
GO
CREATE VIEW view_pcs AS SELECT model, ram, cd
	FROM pc_uri 
	WHERE ram > 32;