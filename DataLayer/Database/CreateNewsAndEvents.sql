IF OBJECT_ID('dbo.NewsAndEvents', 'U') IS NOT NULL 
  DROP TABLE dbo.NewsAndEvents; 

Create TABLE NewsAndEvents
(
	Id INT IDENTITY(1,1),
	UploadedDate DATETIME NOT NULL,
	DateDisplayed DATETIME NOT NULL,
	LargeImgLocation VARCHAR(MAX) NOT NULL,
	MediumImgLocation VARCHAR(MAX) NOT NULL,
	SmallImgLocation VARCHAR(MAX) NOT NULL,
	Tooltip VARCHAR(MAX) NOT NULL,
	Heading VARCHAR(MAX) NOT NULL,
	Content VARCHAR(MAX) NOT NULL
)

INSERT INTO NewsAndEvents VALUES (GetDate(), '20170907', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Large.jpg', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Medium.jpg', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Small.jpg', 'Islamic Studies', 'New Class - Islamic Studies', 'Islam Dewsbury is introducing a new Islamic Studies class for brothers across all ages. Our new imam, Ustaad Hussain Sattar will teach Tauheed, Fiqh, Hadith, Seerah, Tafseer and Adab every Thursday at 7pm.')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20170904', '/Content/Images/LatestNewsAndEvents/Tajweed_Large.jpg', '/Content/Images/LatestNewsAndEvents/Tajweed_Medium.jpg', '/Content/Images/LatestNewsAndEvents/Tajweed_Small.jpg', 'Tajweed', 'New Class - Tajweed', 'Islam Dewsbury is introducing a new Tajweed class for brothers across all ages. Every Monday at 7.30pm from 4th September.')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20170919', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Small.jpg', 'Taleemul Qur''aan', 'Taleemul Qur''aan - ENGLISH', 'Taleemul Qur''aan class is running on Wednesdays from 5-7pm. We have got through 3/4 of Juz 1')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20170913', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Small.jpg', 'Taleemul Qur''aan - URDU', 'Taleemul Qur''aan - URDU', 'Taleemul Qur''aan class is running on Wednesdays from 10.30am to 2.15pm. We are currently on Juz 2')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20180512', '/Content/Images/LatestNewsAndEvents/Ramadaan_Large.jpg', '/Content/Images/LatestNewsAndEvents/Ramadaan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/Ramadaan_Small.jpg', 'Ramadaan Timetable', 'Ramadaan Timetable', 'After Ramadaan is announced, we will initially be doing Isha/Taraweeh at 10.30pm. Sisters are welcome. We have Daily (after Fajr) and Weekly (Sunday) Ramadaan reminders, as well as Daily Qur''aan Tafseer classes for Sisters in English and Urdu from 11am - 2pm.')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20180508', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Small.jpg', 'Ramadan Dohra Quraan', 'Ramadan Dohra Quraan', 'Qur''aan translation to be done by sister Maryam (English) and Sister Munazza (Urdu). It will be 1 Juz a day.')
INSERT INTO NewsAndEvents VALUES (GetDate(), '20180624', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Large.jpg', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Medium.jpg', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Small.jpg', 'Ramadan Dohra Quraan', 'Rulings on Miscarriage', 'Ustada Yasmin Ishaq is presenting a lecture on the rulings on Miscarriage. Sisters only Event. MUST Attend. 6pm After Asr on Sunday 8th July.')
