ALTER VIEW dbo.view_laptops
WITH SCHEMABINDING
AS
SELECT model, ram,ecran
FROM dbo.laptop_uri
WHERE pret > 1000
WITH CHECK OPTION