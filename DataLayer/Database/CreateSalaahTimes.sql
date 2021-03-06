﻿IF OBJECT_ID('dbo.SalaahTimes', 'U') IS NOT NULL 
  DROP TABLE dbo.SalaahTimes; 

Create TABLE SalaahTimes
(
	Id INT IDENTITY(1,1),
	SalaahDate DATETIME NOT NULL,
	FajrAdhan DATETIME NOT NULL,
	FajrIqamah DATETIME NOT NULL,
	Sunrise DATETIME NOT NULL,
	ZuhrAdhan DATETIME NOT NULL,
	ZuhrIqamah DATETIME NULL,
	AsrAdhan DATETIME NOT NULL,
	AsrIqamah DATETIME NOT NULL,
	MaghribAdhan DATETIME NOT NULL,
	MaghribIqamah DATETIME NOT NULL,
	IshaAdhan DATETIME NOT NULL,
	IshaIqamah DATETIME NOT NULL,
	JummahKhutbah DATETIME NULL,
	JummahIqamah DATETIME NULL
)

ALTER TABLE SalaahTimes ADD HijriDate INT NULL
ALTER TABLE SalaahTimes ADD HijriMonth INT NULL
ALTER TABLE SalaahTimes ADD HijriYear INT NULL

