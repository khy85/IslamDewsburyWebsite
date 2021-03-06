﻿DECLARE @SalaahDate DATETIME = '20190201'
DECLARE @HijriDay INT = 26
DECLARE @HijriMonth INT = 5
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '06:07'
DECLARE @FajrIq DATETIME = @SalaahDate + '06:45'
DECLARE @Sunrise DATETIME = @SalaahDate + '07:52'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:25'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '14:26'
DECLARE @AsrIq DATETIME = @SalaahDate + '15:00'
DECLARE @MaghAd DATETIME = @SalaahDate + '16:53'
DECLARE @IshAd DATETIME = @SalaahDate + '18:30'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = @SalaahDate + '12:30'
DECLARE @JumIq DATETIME = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190202'
SET @HijriDay = 27
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:06'
SET @FajrIq = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '07:51'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:28'
SET @AsrIq = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '16:55'
SET @IshAd = @SalaahDate + '18:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190203'
SET @HijriDay = 28
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:29'
SET @MaghAd = @SalaahDate + '16:57'
SET @IshAd = @SalaahDate + '18:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190204'
SET @HijriDay = 29
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:31'
SET @MaghAd = @SalaahDate + '16:59'
SET @IshAd = @SalaahDate + '18:35'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190205'
SET @HijriDay = 30
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:32'
SET @MaghAd = @SalaahDate + '17:01'
SET @IshAd = @SalaahDate + '18:37'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190206'
SET @HijriDay = 1
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:34'
SET @MaghAd = @SalaahDate + '17:03'
SET @IshAd = @SalaahDate + '18:39'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190207'
SET @HijriDay = 2
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:56'
SET @Sunrise = @SalaahDate + '07:41'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:35'
SET @MaghAd = @SalaahDate + '17:05'
SET @IshAd = @SalaahDate + '18:40'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190208'
SET @HijriDay = 3
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:37'
SET @MaghAd = @SalaahDate + '17:07'
SET @IshAd = @SalaahDate + '18:42'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190209'
SET @HijriDay = 4
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:53'
SET @FajrIq = @SalaahDate + '06:15'
SET @Sunrise = @SalaahDate + '07:38'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:38'
SET @AsrIq = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '17:09'
SET @IshAd = @SalaahDate + '18:44'
SET @IshIq = @SalaahDate + '19:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190210'
SET @HijriDay = 5
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:51'
SET @Sunrise = @SalaahDate + '07:36'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:40'
SET @MaghAd = @SalaahDate + '17:11'
SET @IshAd = @SalaahDate + '18:46'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190211'
SET @HijriDay = 6
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:42'
SET @MaghAd = @SalaahDate + '17:13'
SET @IshAd = @SalaahDate + '18:47'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190212'
SET @HijriDay = 7
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:47'
SET @Sunrise = @SalaahDate + '07:32'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:43'
SET @MaghAd = @SalaahDate + '17:15'
SET @IshAd = @SalaahDate + '18:49'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190213'
SET @HijriDay = 8
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:30'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '18:51'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190214'
SET @HijriDay = 9
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:46'
SET @MaghAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '18:53'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190215'
SET @HijriDay = 10
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:41'
SET @Sunrise = @SalaahDate + '07:26'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:48'
SET @MaghAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '18:55'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190216'
SET @HijriDay = 11
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:38'
SET @FajrIq = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:23'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:49'
SET @MaghAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '18:56'
SET @IshIq = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190217'
SET @HijriDay = 12
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:36'
SET @Sunrise = @SalaahDate + '07:21'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:51'
SET @MaghAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '18:58'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190218'
SET @HijriDay = 13
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:34'
SET @Sunrise = @SalaahDate + '07:19'
SET @AsrAd = @SalaahDate + '14:52'
SET @MaghAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '19:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190219'
SET @HijriDay = 14
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:32'
SET @Sunrise = @SalaahDate + '07:17'
SET @AsrAd = @SalaahDate + '14:54'
SET @MaghAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '19:02'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190220'
SET @HijriDay = 15
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '07:15'
SET @AsrAd = @SalaahDate + '14:55'
SET @MaghAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '19:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190221'
SET @HijriDay = 16
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:28'
SET @Sunrise = @SalaahDate + '07:13'
SET @AsrAd = @SalaahDate + '14:57'
SET @MaghAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '19:05'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190222'
SET @HijriDay = 17
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @AsrAd = @SalaahDate + '14:58'
SET @MaghAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '19:07'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190223'
SET @HijriDay = 18
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:23'
SET @FajrIq = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:08'
SET @AsrAd = @SalaahDate + '15:00'
SET @AsrIq = @SalaahDate + '15:45'
SET @MaghAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '19:09'
SET @IshIq = @SalaahDate + '19:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190224'
SET @HijriDay = 19
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:21'
SET @Sunrise = @SalaahDate + '07:06'
SET @AsrAd = @SalaahDate + '15:01'
SET @MaghAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '19:11'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190225'
SET @HijriDay = 20
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '15:03'
SET @MaghAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '19:13'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190226'
SET @HijriDay = 21
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:04'
SET @MaghAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '19:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190227'
SET @HijriDay = 22
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @AsrAd = @SalaahDate + '15:05'
SET @MaghAd = @SalaahDate + '17:44'
SET @IshAd = @SalaahDate + '19:17'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190228'
SET @HijriDay = 23
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @AsrAd = @SalaahDate + '15:07'
SET @MaghAd = @SalaahDate + '17:46'
SET @IshAd = @SalaahDate + '19:19'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

Select * from SalaahTimes