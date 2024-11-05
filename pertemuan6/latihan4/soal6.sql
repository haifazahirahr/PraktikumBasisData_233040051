SELECT a.[Name], b.[Name]
FROM [dbo].[Employee] AS a
INNER JOIN [dbo].[Employee] AS b ON a.[ManagerID] = b.[EmployeeID];
