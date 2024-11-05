SELECT e.*, d.*
FROM [dbo].[Employee] AS e
FULL JOIN [dbo].[Departements] AS d ON e.ManagerID = d.DepartementsID;
