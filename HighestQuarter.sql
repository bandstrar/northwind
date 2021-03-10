Select 
	Top 1 Datepart(quarter, OrderDate) as Quarter_Number, 
	sum(od.UnitPrice * Quantity * (1-Discount)) as revenue 
from Orders o
	join [Order Details] od
		on od.OrderID = o.OrderID
where Year(OrderDate) = 1997
group by Datepart(quarter, OrderDate)
order by revenue desc