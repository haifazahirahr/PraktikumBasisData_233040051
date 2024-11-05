SELECT e.[Name], d.[DepartementsName]
FROM [dbo].[Employee] e
LEFT JOIN [dbo].[Departements] d ON e.DepartementsID = d.DepartementsID;