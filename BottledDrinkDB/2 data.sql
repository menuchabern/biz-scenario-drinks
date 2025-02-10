use BottledDrinkDB
go
delete DrinkSale
go
insert DrinkSale(DrinkName, DateProduced, DateSold, Price, RefrigerationRequirement)
      select 'Coke', '2005-12-28', '2006-01-24', 6.00, 0  
union select 'Orange Juice', '2018-02-12', '2018-04-11', 8.50, 2  
union select 'Beer', '2019-04-21', '2019-06-04', 10.00, 0  
union select 'Vitamin Water', '2023-06-11', '2023-07-21', 12.00, 0 
union select 'Coke', '2019-03-12', '2019-04-28', 7.50, 0  
union select 'Lemonade', '2014-04-28', '2014-05-28', 5.50, 0  
union select 'Grape Juice', '2019-05-23', '2019-07-18', 6.00, 2  
union select 'Apple Juice', '2014-07-02', '2014-08-13', 6.50, 2  
union select 'Seltzer', '2018-11-05', '2018-11-28', 5.50, 0  
union select 'Sprite', '2022-02-08', '2022-03-22', 5.80, 0  
union select 'Vitamin Water', '2016-07-11', '2016-07-21', 9.00, 0  
union select 'Coffee', '2024-11-02', NULL, 15.00, 1  
union select 'Milk', '2024-10-29', NULL, 10.00, 1
