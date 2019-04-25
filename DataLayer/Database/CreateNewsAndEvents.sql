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


Declare @DateDisplayed DATETIME = '20180930'
Declare @EventLink varchar(max) = 'FiqhOfSalaah'
Declare @Tooltip varchar(max) = 'Fiqh Of Salaah'
Declare @Heading varchar(max) = 'Fiqh Of Salaah'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a lecture on the Fiqh of Salaah. Sisters only Event. MUST Attend. 4.45pm on Sunday 30th September.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Declare @DateDisplayed DATETIME = '20181028'
Declare @EventLink varchar(max) = 'FiveBeforeFive'
Declare @Tooltip varchar(max) = 'Five before Five'
Declare @Heading varchar(max) = 'Five before Five'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a lecture on the hadith around the Five things to take advantage of before five other matters take advantage of you. Sisters only Event. MUST Attend. 4.45pm on Sunday 28th October.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Declare @DateDisplayed DATETIME = '20181125'
Declare @EventLink varchar(max) = 'MentalHealth'
Declare @Tooltip varchar(max) = 'MentalHealth'
Declare @Heading varchar(max) = 'Mental Health'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a lecture on Mental Health from an Islamic perspective. Sisters only Event. MUST Attend. 4pm on Sunday 25th November.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Declare @DateDisplayed DATETIME = '20181230'
Declare @EventLink varchar(max) = 'Hijab'
Declare @Tooltip varchar(max) = 'Hijab & Modesty. Have you got it covered?'
Declare @Heading varchar(max) = 'Hijab & Modesty'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a talk on Hijab and Modesty. Sisters only Event. MUST Attend. After Maghrib on Sunday 30th December.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Declare @DateDisplayed DATETIME = '20190127'
Declare @EventLink varchar(max) = 'Ghusl'
Declare @Tooltip varchar(max) = 'Structured course on Death and Ghusl'
Declare @Heading varchar(max) = 'Course on Death and Ghusl'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a course on Death and Ghusl. Sisters only Event. MUST Attend. After Maghrib on Sunday 27th January.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Declare @DateDisplayed DATETIME = '20190224'
Declare @EventLink varchar(max) = 'WomenOfParadise'
Declare @Tooltip varchar(max) = 'Part 1 - Story of Aasiya'
Declare @Heading varchar(max) = 'Women of Paradise - Story of Aasiya'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a course on the Women of Paradise. Sisters only Event. MUST Attend. After Maghrib on Sunday 24th February.'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Declare @DateDisplayed DATETIME = '20190303'
Declare @EventLink varchar(max) = 'VisitMyMosque_2019'
Declare @Tooltip varchar(max) = 'Visit My Mosque'
Declare @Heading varchar(max) = 'Visit My Mosque - Open Day'
Declare @Content varchar(max) = 'Come and join IslamDewsbury for our annual Open Day. We will have guided Masjid tours, hear the call to the Islamic prayer, ask questions from the Imam, an Islamic exhibition, free food/refreshments, a Calligrapher and a goody bag for all. Mark your calendars as Sunday 3rd March from 12-4pm. If you have any questions, please feel free to contact us on 07827963264'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Declare @DateDisplayed DATETIME = '20190428'
Declare @EventLink varchar(max) = 'WomenOfParadise_Khadijah'
Declare @Tooltip varchar(max) = 'Women of Paradise - Khadija RA'
Declare @Heading varchar(max) = 'Women of Paradise - Khadija RA'
Declare @Content varchar(max) = 'Come and join IslamDewsbury for part 3 of The Four Women of Paradise : The Story of Khadija RA with Umm Ayesha from Islam Bradford. Note - Ladies Only'
INSERT INTO NewsAndEvents VALUES (GetDate(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)
