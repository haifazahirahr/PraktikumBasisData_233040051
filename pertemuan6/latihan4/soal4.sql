SELECT e.[Name], s.[Salaries]
FROM [dbo].[Employee] AS e
FULL JOIN [dbo].[Salaries] AS s ON e.EmployeeID = s.EmployeeID;