#abbiamo controllato i database esistenti, successivamente abbiamo usato quello nominato "AdventureWorksDW"
show databases;
use AdventureWorksDW

#abbiamo chiesto di visualizzare le tabelle presenti nel Database scelto
show tables;

#abbiamo chiesto di mostrarci dalla tabella "dimproduct" tutti le colonne con l'intestazione presenti nella select
select ProductKey as ID, ProductAlternateKey as TargaProdotto, EnglishProductName, Color, StandardCost, FinishedGoodsFlag
from dimproduct

#abbiamo chiesto di mostrarci dalla tabella "dimproduct" tutte le colonne con l'intestazione presenti nella select, che però nella colonna "FinishedGoodsFlag" abbiano come risultato 1
select ProductKey as ID, ProductAlternateKey as TargaProdotto, EnglishProductName, Color, StandardCost, FinishedGoodsFlag
from dimproduct
where FinishedGoodsFlag = 1

select *
from dimproduct
