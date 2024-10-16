USE pertemuan3;

SELECT e.empid, e.firstname, e.lastname
FROM HR.Employees e
LEFT JOIN Sales.Orders o ON e.empid = o.empid AND o.orderdate >= '2016-05-01'
WHERE o.orderid IS NULL;