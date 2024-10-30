SELECT e.[Name], p.[ProjectsName]
FROM [dbo].[Employee] e 
LEFT JOIN [dbo].[Project] p ON e.[DepartementsID] = p.DepartementsID;