select Top 10 ProductName, p.UnitPrice
from Products p
group by p.ProductName, p.UnitPrice
order by p.UnitPrice Desc