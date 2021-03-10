select od.OrderID, sum(od.UnitPrice * Quantity) as undiscountedSubtotal
from [order details] od
	join Products p
		on p.ProductID = od.ProductID
	join Categories c
		on c.CategoryID = p.CategoryID
group by od.OrderID
order by od.OrderId asc