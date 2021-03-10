select p.ProductName as Product_For_Sale
from Products p
where p.Discontinued != 1
order by Product_For_Sale