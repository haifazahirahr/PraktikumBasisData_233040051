USE pertemuan3;

SELECT c.custid, c.companyname, o.orderid, o.orderdate
FROM sales.customers AS c
INNER JOIN Sales.orders o ON c.custid = o.custid;
