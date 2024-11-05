SELECT p.[ProjectsName], d.[DepartementsName]
FROM [dbo].[Project] p
LEFT JOIN [dbo].[Departements] d ON p.[DepartementsID] = d.DepartementsID;