delete from [dbo].[NewsAndEvents]
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


Set @DateDisplayed = '20191025'
Set @EventLink = 'PreparingForDeath'
Set @Tooltip = 'Preparing For Death'
Set @Heading = 'Preparing For Death'
Set @Content = 'Sheikh Wajid Malik (Imam of Middlesboro Central Mosque) will be delivering a talk on Preparing For Death as part of "The Journey of Certainty" series. After Isha at 8pm.'
INSERT INTO NewsAndEvents VALUES (GETDATE(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20191027'
Set @EventLink = 'LordOfTheWorlds'
Set @Tooltip = 'Lord Of The Worlds - An explanation of some of the beautiful names of Allah'
Set @Heading = 'Lord Of The Worlds'
Set @Content = 'Ustadha Yomna will be delivering a reminder on some of the beautiful names of Allah and its explanation. Sisters only event.'
INSERT INTO NewsAndEvents VALUES (GETDATE(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20191124'
Set @EventLink = 'ProphetsSmile'
Set @Tooltip = 'The Prophet''s Smile'
Set @Heading = 'The Prophet''s Smile'
Set @Content = 'Ustadha Yomna will be delivering a reminder on the characteristics of the Prophet SAW. Sisters only event.'
INSERT INTO NewsAndEvents VALUES (GETDATE(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)


Set @DateDisplayed = '20191129'
Set @EventLink = 'LifeInTheGrave'
Set @Tooltip = 'Life in the Grave'
Set @Heading = 'Life in the Grave'
Set @Content = 'Ustadh Nasir Al-Libee, a graduate of the Islamic University of Minnesota, will be delivering a reminder on the life in the grave. Friday 27th November, after Isha'
INSERT INTO NewsAndEvents VALUES (GETDATE(), @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20191227'
Set @EventLink = 'DayOfJudgement'
Set @Tooltip = 'Day Of Judgement'
Set @Heading = 'Day Of Judgement'
Set @Content = 'Talk by Qari Zaka Ullah Saleem from Green Lane Masjid. After Isha (7pm) on Friday 27th December.'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20191229'
Set @EventLink = 'MajorSignsOfJudgementDay'
Set @Tooltip = '10 Major Signs Of Judgement Day'
Set @Heading = '10 Major Signs Of Judgement Day'
Set @Content = 'Ustadha Yomna is delivering a talk on the 10 Major Signs of Judgement Day after Asr prayer (2.15) on Sunday 29th December. Sisters ONLY event'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20200105'
Set @EventLink = 'GhuslWorkshop'
Set @Tooltip = 'A structured and practical workshop on death & ghusl'
Set @Heading = 'Death & Ghusl'
Set @Content = 'Every soul will taste death. Join us as Ustaadh Hussain will be delivering a structured and practical workshop on death & the ghusl process. 5th January after Maghrib (4.06pm)'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20200119'
Set @EventLink = 'CleanlinessForGirls'
Set @Tooltip = 'Cleanliness and Purification for girls'
Set @Heading = 'Cleanliness and Purification for girls'
Set @Content = 'Learn about the rulings of Wudhu, Ghusl & Purification in Islam by Ustadha Umm Eyesha. 1pm on Sunday 19th January 2020'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20200126'
Set @EventLink = 'Divorce'
Set @Tooltip = 'Effects of Divorce'
Set @Heading = 'Effects of Divorce'
Set @Content = 'The effects of Divorce according to the Quraan & Sunnah by Ustadha Yasmin. Sisters only. Sunday 26th January after Maghrib (4.41pm)'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20200131'
Set @EventLink = 'ParadiseDescription'
Set @Tooltip = 'Description of Paradise'
Set @Heading = 'Description of Paradise'
Set @Content = 'A description of Paradise delivered by Ustaad Ehsan Arshad (Graduate of the University of Madinah). Friday 31st January after Isha (7pm)'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20201026'
Set @EventLink = 'FortyHadith'
Set @Tooltip = '40 Hadith of Imam An-Nawwawi'
Set @Heading = '40 Hadith of Imam An-Nawwawi'
Set @Content = 'Ustadh Ehsan Arshad will be doing a weekly class on the explanation of Imam An-Nawwawis 40 hadith. Every Wednesday, live on Facebook after Isha salaah'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)

Set @DateDisplayed = '20201105'
Set @EventLink = 'QuranGems'
Set @Tooltip = 'Gems from the Quran'
Set @Heading = 'Gems from the Quran'
Set @Content = 'Ustada Ehsan Arshad is presenting a weekly session on an explanation of selected surahs from the Quraan and gems extracted from it. Must attend weekly class which can be seen via Facebook Live. Every Thursday after Isha prayer. www.Facebook.com.IslamDewsbury'
INSERT INTO NewsAndEvents VALUES (@DateDisplayed, @DateDisplayed, '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Large.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Medium.jpg', '/Content/Images/LatestNewsAndEvents/' + @EventLink + '_Small.jpg', @Tooltip, @Heading, @Content)
