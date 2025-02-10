use BottledDrinkDB
go
drop table if exists DrinkSale
go
create table dbo.DrinkSale(
    DrinkId int not null identity primary key,
    DrinkName varchar(100) not null constraint ck_drink_sale_name_cannot_be_blank check(DrinkName > ''), 
    DateProduced date not null constraint ck_drink_sale_date_produced_must_be_valid check(DateProduced between '2000-01-01' and getdate()),
    DateSold date constraint ck_drink_sale_date_sold_cannot_be_in_the_future check(DateSold is null or DateSold <= getdate()),
    Price decimal(5,2) not null constraint ck_drink_sale_price_range check(Price between 5.50 and 30.00),
    RefrigerationRequirement tinyint not null constraint ck_drink_sale_refrigeration check(RefrigerationRequirement in (0, 1, 2)),
    RefrigerationRequirementText as (
        case
            when RefrigerationRequirement = 0 then 'Non-Refrigerated'
            when RefrigerationRequirement = 1 then 'Refrigerated'
            when RefrigerationRequirement = 2 then 'Refrigerated After Opening'
            else 'Unknown'
        end
    ) persisted,
	constraint ck_drink_date_sold_must_be_after_date_produced_and_must_be_fresh 
		check (DateSold is null
			or (DateSold >= DateProduced and 
				(
					(RefrigerationRequirement = 1 and DateSold <= DateAdd(day, 35, DateProduced)) 
					or 
					(RefrigerationRequirement = 0 and DateSold <= DateAdd(day, 70, DateProduced) ) 
					or
					(RefrigerationRequirement = 2 and DateSold <= DateAdd(day, 60, DateProduced)) 
				)
			)
		)
)
go


