IF OBJECT_ID('dbo.IslamicMonths', 'U') IS NOT NULL 
  DROP TABLE dbo.IslamicMonths; 

Create TABLE IslamicMonths
(
	Id INT IDENTITY(1,1),
	MonthName VARCHAR(20)
)

INSERT INTO IslamicMonths Values ('Muharram')
INSERT INTO IslamicMonths Values ('Safar')
INSERT INTO IslamicMonths Values ('Rabee Al-Awwal')
INSERT INTO IslamicMonths Values ('Rabee Al-Thany')
INSERT INTO IslamicMonths Values ('Jumad Al-Awwal')
INSERT INTO IslamicMonths Values ('Jumad Al-Thany')
INSERT INTO IslamicMonths Values ('Rajab')
INSERT INTO IslamicMonths Values ('Sha''aban')
INSERT INTO IslamicMonths Values ('Ramadan')
INSERT INTO IslamicMonths Values ('Shawwal')
INSERT INTO IslamicMonths Values ('Zul-Qaadah')
INSERT INTO IslamicMonths Values ('Zul-Hijjah')

