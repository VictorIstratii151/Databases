ALTER VIEW dbo.view_pcs
WITH SCHEMABINDING
AS
SELECT model, ram, cd
FROM dbo.pc_uri 
WHERE ram > 32
WITH CHECK OPTION