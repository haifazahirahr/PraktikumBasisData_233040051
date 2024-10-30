
CREATE TABLE Departements (
	DepartementsID INT IDENTITY(1,1) PRIMARY KEY, 
	DepartementsName VARCHAR(50) NOT NULL 
)

CREATE TABLE Project (
	ProjectsID INT IDENTITY(1,1) PRIMARY KEY, 
	ProjectsName VARCHAR(50) NOT NULL, 
	DepartementsID INT
	FOREIGN KEY (DepartementsID) REFERENCES Departements(DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE 
)

CREATE TABLE Employee (
	EmployeeID INT IDENTITY(1,1) PRIMARY KEY, 
	Name VARCHAR(50) NOT NULL ,
	DepartementsID INT
	FOREIGN KEY (DepartementsID) REFERENCES Departements(DepartementsID)
	ON UPDATE CASCADE ON DELETE CASCADE, 
	ManagerID INT
	FOREIGN KEY (ManagerID) REFERENCES Employee(EmployeeID)
)

CREATE TABLE Salaries (
	EmployeeID INT
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
	ON UPDATE CASCADE ON DELETE CASCADE,
	Salaries DECIMAL(10,2) NOT NULL
)

INSERT INTO [dbo].[Departements] ([DepartementsName])
	VALUES 
	('human resources'),
	('finance'), 
	('IT')

INSERT INTO [dbo].[Employee] ([Name],[DepartementsID],[ManagerID])
	VALUES 
		('haifa', 1, NULL),--managerHR
		('nada', 1, 1),
		('ilona', 1, 1),
		('andika', 1, 1),
		('adriansyah', 1, 1),
		('nur', 2, NULL),
		('chalida', 2, 6),
		('sufi', 2, 6),
		('fauzi', 2, 6),
		('kresna', 2, 6),
		('reza', 3, NULL),
		('hikmat', 3, 11),
		('riyadu', 3, 11),
		('riki', 3, 11),
		('rivan', 3, 11)

		INSERT INTO [dbo].[Project] ([ProjectsName],[DepartementsID])
		VALUES 
		('project', 1),
		('project1', 1),
		('project2', 1),
		('project3', 2),
		('project4', 2),
		('project5', 2),
		('project6', 3),
		('project7', 3),
		('project8', 3),
		('project9', 3)

		INSERT INTO [dbo].[Salaries] ([EmployeeID], [Salaries])
		VALUES 
			(1, 1.513),
			(2, 1.349),
			(3, 1.458),
			(4, 1.350),
			(5, 1.436),
			(6, 1.336),
			(6, 1.434),
			(7, 1.252),
			(8, 1.484),
			(9, 1.346),
			(10, 1.392),
			(11, 1.283),
			(12, 1.278),
			(13, 1.700),
			(14, 1.466),
			(15, 1.456)
			


		SELECT * FROM [dbo].[Departements];
		SELECT * FROM [dbo].[Employee];
		SELECT * FROM [dbo].[Project];
		SELECT * FROM [dbo].[Salaries];
