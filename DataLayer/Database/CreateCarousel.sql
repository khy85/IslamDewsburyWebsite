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

Update Carousel Set OrderId = Id + 1
insert into Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) Values (1, '~/Content/Images/Carousel/Carousel_VisitMyMosque2019.jpg', 'Visit My Mosque Open Day', 1)

insert into Carousel (OrderId, ImageLocation, Tooltip, IsEnabled) Values (7, '~/Content/Images/Carousel/Carousel_TasteRamadaan.jpg', 'Taste Ramadaan', 1)
Select * from Carousel


/*  Ramadaan 2021
update carousel set IsEnabled = 1 where Id = 5
Update Carousel set OrderId = 1 Where Id = 5
Update Carousel set OrderId = 2 Where Id = 2
Update Carousel set OrderId = 3 Where Id = 3
Update Carousel set ImageLocation = '~/Content/Images/Carousel/Carousel_RamadanTimetable2021.jpg' where Id = 5

*/