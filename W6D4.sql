show databases;
use AdventureWorksDW
show tables;
describe dimproduct;
describe dimproductsubcategory;
describe dimproductcategory;
describe factresellersales;

#1
select d.ProductKey, d.EnglishProductName, d.ProductSubCategoryKey
from dimproduct as d
left join dimproductsubcategory as ds on d.ProductSubcategoryKey = ds.ProductSubcategoryKey

#2
select d.ProductKey, d.EnglishProductName, d.ProductSubCategoryKey, dpc.ProductCategoryKey
FROM dimproduct AS d
LEFT JOIN dimproductsubcategory AS ds ON d.ProductSubcategoryKey = ds.ProductSubcategoryKey
left join dimproductcategory as dpc on ds.ProductCategoryKey = dpc.ProductCategoryKey

#3
select frs.ProductKey, frs.SalesOrderNumber, frs.OrderDate, dp.EnglishProductName
from factresellersales as frs
inner join dimproduct as dp on frs.ProductKey = dp.ProductKey

#4
SELECT dp.ProductKey, dp.EnglishProductName, dp.ListPrice
FROM dimproduct AS dp
LEFT JOIN factresellersales AS frs ON dp.ProductKey = frs.ProductKey
WHERE dp.FinishedGoodsFlag = 1 AND frs.ProductKey IS NULL;

#5
select dp.EnglishProductName, frs.SalesOrderNumber, frs.ProductKey
from factresellersales as frs
left join dimproduct as dp on frs.ProductKey = dp.ProductKey

#6
select dpc.ProductCategoryKey, frs.SalesOrderNumber, frs.OrderDate, frs.ProductKey
FROM factresellersales AS frs
LEFT JOIN dimproduct AS dp ON frs.ProductKey = dp.ProductKey
LEFT JOIN dimproductsubcategory AS dps ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
LEFT JOIN dimproductcategory AS dpc ON dps.ProductCategoryKey = dpc.ProductCategoryKey;

#7
describe dimreseller

#8
select ResellerKey, GeographyKey, ResellerName
from dimreseller

#9
select frs.SalesOrderNumber, frs.SalesOrderLineNumber, frs.OrderDate, frs.UnitPrice, frs.OrderQuantity, frs.TotalProductCost, dp.EnglishProductName, dpc.EnglishProductCategoryName, dr.ResellerName, dr.GeographyKey
from factresellersales as frs
LEFT JOIN dimproduct AS dp ON frs.ProductKey = dp.ProductKey
LEFT JOIN dimproductsubcategory AS dps ON dp.ProductSubcategoryKey = dps.ProductSubcategoryKey
LEFT JOIN dimproductcategory AS dpc ON dps.ProductCategoryKey = dpc.ProductCategoryKey
left join dimreseller as dr on frs.ResellerKey = dr.ResellerKey;
