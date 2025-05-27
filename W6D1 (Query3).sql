#Es.2 Pag.3
select  ProductKey as ID, ModelName, EnglishProductName, StandardCost, ListPrice, StandardCost - ListPrice as Markup
from dimproduct
where ListPrice between 1000 and 2000

#Es.3 Pag.3
show databases;
use AdventureWorksDW
show tables;
select *
from dimemployee;

#Es.4 Pag.3
select EmployeeKey, FirstName, LastName, Title, EmailAddress
from dimemployee
where SalesPersonFlag = 1


#Es.5 Pag.3
show tables;

select OrderDate, SalesOrderNumber, SalesAmount - TotalProductCost as Profitto, ProductKey
from factresellersales
where OrderDate >= '2020-01-01'
AND ProductKey IN (597, 598, 477, 214)




