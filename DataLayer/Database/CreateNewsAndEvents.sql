﻿delete from [dbo].[NewsAndEvents]
INSERT INTO NewsAndEvents VALUES ('20170907', '20170907', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Large.jpg', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Medium.jpg', '/Content/Images/LatestNewsAndEvents/IslamicStudies_Small.jpg', 'Islamic Studies', 'New Class - Islamic Studies', 'Islam Dewsbury is introducing a new Islamic Studies class for brothers across all ages. Our new imam, Ustaad Hussain Sattar will teach Tauheed, Fiqh, Hadith, Seerah, Tafseer and Adab every Thursday at 7pm.')
INSERT INTO NewsAndEvents VALUES ('20170904', '20170904', '/Content/Images/LatestNewsAndEvents/Tajweed_Large.jpg', '/Content/Images/LatestNewsAndEvents/Tajweed_Medium.jpg', '/Content/Images/LatestNewsAndEvents/Tajweed_Small.jpg', 'Tajweed', 'New Class - Tajweed', 'Islam Dewsbury is introducing a new Tajweed class for brothers across all ages. Every Monday at 7.30pm from 4th September.')
INSERT INTO NewsAndEvents VALUES ('20170919', '20170919', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Small.jpg', 'Taleemul Qur''aan', 'Taleemul Qur''aan - ENGLISH', 'Taleemul Qur''aan class is running on Wednesdays from 5-7pm. We have got through 3/4 of Juz 1')
INSERT INTO NewsAndEvents VALUES ('20170913', '20170913', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/TaleemulQuraan_Small.jpg', 'Taleemul Qur''aan - URDU', 'Taleemul Qur''aan - URDU', 'Taleemul Qur''aan class is running on Wednesdays from 10.30am to 2.15pm. We are currently on Juz 2')
INSERT INTO NewsAndEvents VALUES ('20180512', '20180512', '/Content/Images/LatestNewsAndEvents/Ramadaan_Large.jpg', '/Content/Images/LatestNewsAndEvents/Ramadaan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/Ramadaan_Small.jpg', 'Ramadaan Timetable', 'Ramadaan Timetable', 'After Ramadaan is announced, we will initially be doing Isha/Taraweeh at 10.30pm. Sisters are welcome. We have Daily (after Fajr) and Weekly (Sunday) Ramadaan reminders, as well as Daily Qur''aan Tafseer classes for Sisters in English and Urdu from 11am - 2pm.')
INSERT INTO NewsAndEvents VALUES ('20180508', '20180508', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Large.jpg', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Medium.jpg', '/Content/Images/LatestNewsAndEvents/RamadanDohraQuraan_Small.jpg', 'Ramadan Dohra Quraan', 'Ramadan Dohra Quraan', 'Qur''aan translation to be done by sister Maryam (English) and Sister Munazza (Urdu). It will be 1 Juz a day.')
INSERT INTO NewsAndEvents VALUES ('20180624', '20180624', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Large.jpg', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Medium.jpg', '/Content/Images/LatestNewsAndEvents/RulingsOnMiscarriage_Small.jpg', 'Ramadan Dohra Quraan', 'Rulings on Miscarriage', 'Ustada Yasmin Ishaq is presenting a lecture on the rulings on Miscarriage. Sisters only Event. MUST Attend. 6pm After Asr on Sunday 8th July.')


Declare @DateDisplayed DATETIME = '20181028'
Declare @EventLink varchar(max) = 'FiveBeforeFive'
Declare @Tooltip varchar(max) = 'Five before Five'
Declare @Heading varchar(max) = 'Five before Five'
Declare @Content varchar(max) = 'Ustada Yasmin Ishaq is presenting a lecture on the hadith around the Five things to take advantage of before five other matters take advantage of you. Sisters only Event. MUST Attend. 4.45pm on Sunday 28th October.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20181125'
Set @EventLink = 'MentalHealth'
Set @Tooltip = 'MentalHealth'
Set @Heading = 'Mental Health'
Set @Content = 'Ustada Yasmin Ishaq is presenting a lecture on Mental Health from an Islamic perspective. Sisters only Event. MUST Attend. 4pm on Sunday 25th November.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20181230'
Set @EventLink = 'Hijab'
Set @Tooltip = 'Hijab & Modesty. Have you got it covered?'
Set @Heading = 'Hijab & Modesty'
Set @Content = 'Ustada Yasmin Ishaq is presenting a talk on Hijab and Modesty. Sisters only Event. MUST Attend. After Maghrib on Sunday 30th December.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20190127'
Set @EventLink = 'Ghusl'
Set @Tooltip = 'Structured course on Death and Ghusl'
Set @Heading = 'Course on Death and Ghusl'
Set @Content = 'Ustada Yasmin Ishaq is presenting a course on Death and Ghusl. Sisters only Event. MUST Attend. After Maghrib on Sunday 27th January.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190224'
Set @EventLink = 'WomenOfParadise'
Set @Tooltip = 'Part 1 - Story of Aasiya'
Set @Heading = 'Women of Paradise - Story of Aasiya'
Set @Content = 'Ustada Yasmin Ishaq is presenting a course on the Women of Paradise. Sisters only Event. MUST Attend. After Maghrib on Sunday 24th February.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20190303'
Set @EventLink = 'VisitMyMosque_2019'
Set @Tooltip = 'Visit My Mosque'
Set @Heading = 'Visit My Mosque - Open Day'
Set @Content = 'Come and join IslamDewsbury for our annual Open Day. We will have guided Masjid tours, hear the call to the Islamic prayer, ask questions from the Imam, an Islamic exhibition, free food/refreshments, a Calligrapher and a goody bag for all. Mark your calendars as Sunday 3rd March from 12-4pm. If you have any questions, please feel free to contact us on 07827963264'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190428'
Set @EventLink = 'WomenOfParadise_Khadijah'
Set @Tooltip = 'Women of Paradise - Khadija RA'
Set @Heading = 'Women of Paradise - Khadija RA'
Set @Content = 'Come and join IslamDewsbury for part 3 of The Four Women of Paradise : The Story of Khadija RA with Umm Ayesha from Islam Bradford. Note - Ladies Only'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190518'
Set @EventLink = 'TasteRamadaan'
Set @Tooltip = 'Taste Ramadaan'
Set @Heading = 'Taste Ramadaan'
Set @Content = 'IslamDewsbury invites you to be a guest at an Iftar dinner (a meal to break the fast). Taste Ramadaan is a national initiative that welcomes people from all faiths & backgrounds interested in connecting with the community & learning about other cultures. Share in the blessings, build bonds and explore different cultures this Ramadan.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20190505'
Set @EventLink = 'Ramadaan2019'
Set @Tooltip = 'Ramadaan 2019'
Set @Heading = 'Ramadaan 2019'
Set @Content = 'Ramadaan 2019 Timetable'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190526'
Set @EventLink = 'WomenOfParadise_Fatimah'
Set @Tooltip = 'Women of paradise - Fatimah RA'
Set @Heading = 'Women of paradise - Fatimah RA'
Set @Content = 'Come and join IslamDewsbury for part 4 of The Four Women of Paradise : The Story of Fatimah RA with Ustada Yasmin. Note - Ladies Only'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190630'
Set @EventLink = 'Duaa'
Set @Tooltip = 'Duaa - The Weapon of the Believer'
Set @Heading = 'Duaa - The Weapon of the Believer'
Set @Content = 'Come and join IslamDewsbury for a study on Duaa - the weapon of the believer with Ustada Yomna. Note - Ladies Only'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20190421'
Set @EventLink = 'BirdsAndTheBees'
Set @Tooltip = 'The Birds and the Bees'
Set @Heading = 'The Birds and the Bees'
Set @Content = 'Workshop on Sex and Relationship education by Imam Hussain Sattar'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20190825'
Set @EventLink = 'PropheticParenting'
Set @Tooltip = 'Prophetic Parenting'
Set @Heading = 'Prophetic Parenting'
Set @Content = 'Ustada Yasmin Ishaq is presenting a lecture on Prophetic Parenting. Sisters only Event.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20190929'
Set @EventLink = 'WhoIsAllah'
Set @Tooltip = 'Who Is Allah'
Set @Heading = 'Who Is Allah'
Set @Content = 'Ustada Yasmin Ishaq is presenting a talk on Allah SWT. Sisters only Event.'
INSERT INTO NewsAndEvents VALUES (GETDATE(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)
