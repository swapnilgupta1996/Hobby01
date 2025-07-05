

--VIEW >>> DENY ACCESS TO THE TABLES 

CREATE VIEW MYCUSTOMUSVIEW

AS 
SELECT * FROM AdventureWorks2012.Sales.SalesTerritory
WHERE CountryRegionCode LIKE 'US'

SELECT * FROM MYCUSTOMUSVIEW


SELECT * FROM AdventureWorks2012.Sales.vPersonDemographics

SELECT * FROM AdventureWorks2012.Sales.SalesPerson
---Two tables to join 

CREATE VIEW NASalesQuota
AS 
SELECT [Name],[Group][SalesQuota],[bonus]
From Adventureworks2012.sales.salesterritory A inner join Adventureworks2012.sales.salesperson b
ON A.TerritoryID = B.TerritoryID
WHERE [Group] LIKE 'NORTH AMERICA'

SELECT * FROM NASalesQuota
-------------------------------
CREATE VIEW NASalesQuota1
AS 
SELECT [Name],[Group],[SalesQuota],[bonus]
From Adventureworks2012.sales.salesterritory A inner join Adventureworks2012.sales.salesperson b
ON A.TerritoryID = B.TerritoryID
WHERE [Group] LIKE 'NORTH AMERICA'

SELECT * FROM NASalesQuota1

CREATE VIEW NASalesQuota2
AS 
SELECT [Name],[Group],[SalesQuota],[bonus]
From Adventureworks2012.sales.salesterritory A inner join Adventureworks2012.sales.salesperson b
ON A.TerritoryID = B.TerritoryID
WHERE [Group] LIKE 'NORTH AMERICA'


SELECT * FROM NASalesQuota2
