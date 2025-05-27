#Es. 5 Pag.2
show databases;
use AdventureWorksDW

select  ProductKey as ID, ModelName, EnglishProductName, StandardCost, ListPrice
from dimproduct
where ProductAlternateKey like 'FR%' 
or ProductAlternateKey like 'BK%'

#Es.1 Pag.3
select  ProductKey as ID, ModelName, EnglishProductName, StandardCost, ListPrice, StandardCost - ListPrice as Markup
from dimproduct
where ProductAlternateKey like 'FR%' 
or ProductAlternateKey like 'BK%'



