IF OBJECT_ID('dbo.LogAccess', 'U') IS NOT NULL 
  DROP TABLE dbo.LogAccess; 

Create TABLE LogAccess
(
	Id INT IDENTITY(1,1),
	AccessDate DATETIME NOT NULL,
	Controller VARCHAR(100) NOT NULL,
	Method VARCHAR(100) NOT NULL,
	Description VARCHAR(100) NOT NULL
)

