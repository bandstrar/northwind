select od.OrderID, sum(od.UnitPrice * Quantity * (1-Discount)) as Cost
from [order details] od
	join Products p
		on p.ProductID = od.ProductID
group by od.OrderID
order by od.OrderID asc