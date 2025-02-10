use BottledDrinkDB
go
-- report 1: average days each type of drink sits in the warehouse before being sold
select drinkname, avg(datediff(day, dateproduced, datesold)) as avgdaysinwarehouse
from dbo.drinksale
where datesold is not null
group by drinkname
order by avgdaysinwarehouse

-- report 2: fda report: list of drink name, date produced, date sold, best by date, and how many days before best by date the drink was sold
select drinkname, dateproduced, datesold, 
    case 
        when refrigerationrequirement = 1 then dateadd(day, 35, dateproduced) 
        when refrigerationrequirement = 0 then dateadd(day, 70, dateproduced) 
        when refrigerationrequirement = 2 then dateadd(day, 60, dateproduced)
    end as bestbydate,
    datediff(day, datesold, 
        case 
            when refrigerationrequirement = 1 then dateadd(day, 35, dateproduced) 
            when refrigerationrequirement = 0 then dateadd(day, 70, dateproduced) 
            when refrigerationrequirement = 2 then dateadd(day, 60, dateproduced)
        end) as daysbeforebestby
from dbo.drinksale
where datesold is not null

-- report 3: advertisement report: average time from date sold to expiration date
select drinkname, avg(datediff(day, datesold, 
        case 
            when refrigerationrequirement = 1 then dateadd(day, 35, dateproduced) 
            when refrigerationrequirement = 0 then dateadd(day, 70, dateproduced) 
            when refrigerationrequirement = 2 then dateadd(day, 60, dateproduced)
        end)) as avgtimefromsoldtoexpiration
from dbo.drinksale
where datesold is not null
group by drinkname

-- report 4: if the sold date is null, how many days left to sell before expiration date
select drinkname, dayslefttosellbeforeexpiration = datediff(day, 
        case 
            when refrigerationrequirement = 1 then dateadd(day, 35, dateproduced) 
            when refrigerationrequirement = 0 then dateadd(day, 70, dateproduced) 
            when refrigerationrequirement = 2 then dateadd(day, 60, dateproduced)
        end, getdate()) 
from dbo.drinksale
where datesold is null

