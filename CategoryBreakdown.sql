select c.CategoryName, sum(od.UnitPrice * Quantity * (1-Discount)) as revenue, sum(Quantity) as Total_Items_Sold
from [order details] od
	join Products p
		on p.ProductID = od.ProductID
	join Categories c
		on c.CategoryID = p.CategoryID
group by c.CategoryName
order by CategoryName asc