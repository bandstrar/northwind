select ProductName, UnitPrice
from Products p
where UnitPrice > (Select avg(UnitPrice) from Products)
group by ProductName, UnitPrice