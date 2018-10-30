IF OBJECT_ID('dbo.Carousel', 'U') IS NOT NULL 
  DROP TABLE dbo.Carousel; 

Create TABLE Carousel
(
	Id INT IDENTITY(1,1),
	OrderId INT NOT NULL,
	ImageLocation VARCHAR(MAX) NOT NULL,
	Tooltip VARCHAR(MAX),
	IsEnabled BIT NOT NULL
)

INSERT INTO Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) VALUES (1, '~/Content/Images/Carousel/Carousel_IslamicStudiesClass.jpg', 'Islamic Studies', CAST(1 As Bit))
INSERT INTO Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) VALUES (2, '~/Content/Images/Carousel/Carousel_TajweedClass.jpg', 'Tajweed', CAST(1 As Bit))
INSERT INTO Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) VALUES (3, '~/Content/Images/Carousel/Carousel_MadrassahClass.jpg', 'Madrassah', CAST(1 As Bit))
INSERT INTO Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) VALUES (4, '~/Content/Images/Carousel/Carousel_TaleemulQuraanClass.jpg', 'Taleemul Quraan', CAST(1 As Bit))
INSERT INTO Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) VALUES (5, '~/Content/Images/Carousel/Carousel_RamadanTimetable.jpg', 'Ramadaan Schedule', CAST(1 As Bit))

Select * from Carousel