DECLARE @SalaahDate DATETIME = '20181101'
DECLARE @HijriDay INT = 23
DECLARE @HijriMonth INT = 2
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '05:21'
DECLARE @Sunrise DATETIME = @SalaahDate + '07:06'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '11:55'
DECLARE @AsrAd DATETIME = @SalaahDate + '14:09'
DECLARE @MaghAd DATETIME = @SalaahDate + '16:37'
DECLARE @IshAd DATETIME = @SalaahDate + '18:12'

DECLARE @FajrIq DATETIME = @SalaahDate + '05:45'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '14:45'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 24
SET @HijriMonth = 2
SET @SalaahDate = '20181102'
SET @FajrAd = @SalaahDate + '05:23'
SET @Sunrise = @SalaahDate + '07:08'
SET @AsrAd = @SalaahDate + '14:08'
SET @MaghAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '18:10'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 25
SET @HijriMonth = 2
SET @SalaahDate = '20181103'
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @AsrAd = @SalaahDate + '14:06'
SET @MaghAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '18:09'
SET @FajrIq = @SalaahDate + '06:00'
SET @AsrIq = @SalaahDate + '14:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 26
SET @HijriMonth = 2
SET @SalaahDate = '20181104'
SET @FajrAd = @SalaahDate + '05:27'
SET @Sunrise = @SalaahDate + '07:12'
SET @AsrAd = @SalaahDate + '14:05'
SET @MaghAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '18:07'

INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 27
SET @HijriMonth = 2
SET @SalaahDate = '20181105'
SET @FajrAd = @SalaahDate + '05:29'
SET @Sunrise = @SalaahDate + '07:14'
SET @AsrAd = @SalaahDate + '14:04'
SET @MaghAd = @SalaahDate + '16:29'
SET @IshAd = @SalaahDate + '18:05'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 28
SET @HijriMonth = 2
SET @SalaahDate = '20181106'
SET @FajrAd = @SalaahDate + '05:31'
SET @Sunrise = @SalaahDate + '07:16'
SET @AsrAd = @SalaahDate + '14:03'
SET @MaghAd = @SalaahDate + '16:27'
SET @IshAd = @SalaahDate + '18:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 29
SET @HijriMonth = 2
SET @SalaahDate = '20181107'
SET @FajrAd = @SalaahDate + '05:33'
SET @Sunrise = @SalaahDate + '07:18'
SET @AsrAd = @SalaahDate + '14:02'
SET @MaghAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '18:02'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 3
SET @SalaahDate = '20181108'
SET @FajrAd = @SalaahDate + '05:35'
SET @Sunrise = @SalaahDate + '07:20'
SET @AsrAd = @SalaahDate + '14:01'
SET @MaghAd = @SalaahDate + '16:24'
SET @IshAd = @SalaahDate + '18:01'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 2
SET @HijriMonth = 3
SET @SalaahDate = '20181109'
SET @FajrAd = @SalaahDate + '05:37'
SET @Sunrise = @SalaahDate + '07:22'
SET @AsrAd = @SalaahDate + '13:59'
SET @MaghAd = @SalaahDate + '16:22'
SET @IshAd = @SalaahDate + '17:59'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 3
SET @HijriMonth = 3
SET @SalaahDate = '20181110'
SET @FajrAd = @SalaahDate + '05:39'
SET @Sunrise = @SalaahDate + '07:24'
SET @AsrAd = @SalaahDate + '13:58'
SET @MaghAd = @SalaahDate + '16:20'
SET @IshAd = @SalaahDate + '17:58'
SET @FajrIq = @SalaahDate + '06:15'
SET @AsrIq = @SalaahDate + '14:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 4
SET @HijriMonth = 3
SET @SalaahDate = '20181111'
SET @FajrAd = @SalaahDate + '05:41'
SET @Sunrise = @SalaahDate + '07:26'
SET @ZuhrAd =  @SalaahDate + '11:56'
SET @AsrAd = @SalaahDate + '13:56'
SET @MaghAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '17:57'

INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 5
SET @HijriMonth = 3
SET @SalaahDate = '20181112'
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @AsrAd = @SalaahDate + '13:55'
SET @MaghAd = @SalaahDate + '16:17'
SET @IshAd = @SalaahDate + '17:55'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 6
SET @HijriMonth = 3
SET @SalaahDate = '20181113'
SET @FajrAd = @SalaahDate + '05:44'
SET @Sunrise = @SalaahDate + '07:29'
SET @AsrAd = @SalaahDate + '13:54'
SET @MaghAd = @SalaahDate + '16:15'
SET @IshAd = @SalaahDate + '17:54'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 7
SET @HijriMonth = 3
SET @SalaahDate = '20181114'
SET @FajrAd = @SalaahDate + '05:46'
SET @Sunrise = @SalaahDate + '07:31'
SET @AsrAd = @SalaahDate + '13:53'
SET @MaghAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '17:53'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 8
SET @HijriMonth = 3
SET @SalaahDate = '20181115'
SET @FajrAd = @SalaahDate + '05:48'
SET @Sunrise = @SalaahDate + '07:33'
SET @AsrAd = @SalaahDate + '13:51'
SET @MaghAd = @SalaahDate + '16:12'
SET @IshAd = @SalaahDate + '17:52'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 9
SET @HijriMonth = 3
SET @SalaahDate = '20181116'
SET @FajrAd = @SalaahDate + '05:50'
SET @Sunrise = @SalaahDate + '07:35'
SET @AsrAd = @SalaahDate + '13:50'
SET @MaghAd = @SalaahDate + '16:11'
SET @IshAd = @SalaahDate + '17:50'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 10
SET @HijriMonth = 3
SET @SalaahDate = '20181117'
SET @FajrAd = @SalaahDate + '05:52'
SET @Sunrise = @SalaahDate + '07:37'
SET @AsrAd = @SalaahDate + '13:49'
SET @MaghAd = @SalaahDate + '16:09'
SET @IshAd = @SalaahDate + '17:49'
SET @FajrIq = @SalaahDate + '06:30'
SET @AsrIq = @SalaahDate + '14:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 11
SET @HijriMonth = 3
SET @SalaahDate = '20181118'
SET @FajrAd = @SalaahDate + '05:54'
SET @Sunrise = @SalaahDate + '07:39'
SET @AsrAd = @SalaahDate + '13:47'
SET @MaghAd = @SalaahDate + '16:08'
SET @IshAd = @SalaahDate + '17:48'

INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 12
SET @HijriMonth = 3
SET @SalaahDate = '20181119'
SET @FajrAd = @SalaahDate + '05:56'
SET @Sunrise = @SalaahDate + '07:41'
SET @AsrAd = @SalaahDate + '13:46'
SET @MaghAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '17:47'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 13
SET @HijriMonth = 3
SET @SalaahDate = '20181120'
SET @FajrAd = @SalaahDate + '05:57'
SET @Sunrise = @SalaahDate + '07:42'
SET @AsrAd = @SalaahDate + '13:45'
SET @MaghAd = @SalaahDate + '16:05'
SET @IshAd = @SalaahDate + '17:45'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 14
SET @HijriMonth = 3
SET @SalaahDate = '20181121'
SET @FajrAd = @SalaahDate + '05:59'
SET @Sunrise = @SalaahDate + '07:44'
SET @AsrAd = @SalaahDate + '13:44'
SET @MaghAd = @SalaahDate + '16:04'
SET @IshAd = @SalaahDate + '17:44'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 15
SET @HijriMonth = 3
SET @SalaahDate = '20181122'
SET @FajrAd = @SalaahDate + '06:01'
SET @Sunrise = @SalaahDate + '07:46'
SET @ZuhrIq = @SalaahDate + '11:58'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '16:03'
SET @IshAd = @SalaahDate + '17:43'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 16
SET @HijriMonth = 3
SET @SalaahDate = '20181123'
SET @FajrAd = @SalaahDate + '06:03'
SET @Sunrise = @SalaahDate + '07:48'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '16:02'
SET @IshAd = @SalaahDate + '17:42'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 17
SET @HijriMonth = 3
SET @SalaahDate = '20181124'
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '16:01'
SET @IshAd = @SalaahDate + '17:41'
SET @FajrIq = @SalaahDate + '06:45'
SET @AsrIq = @SalaahDate + '14:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 18
SET @HijriMonth = 3
SET @SalaahDate = '20181125'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:59'
SET @IshAd = @SalaahDate + '17:39'

INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 19
SET @HijriMonth = 3
SET @SalaahDate = '20181126'
SET @FajrAd = @SalaahDate + '06:08'
SET @Sunrise = @SalaahDate + '07:53'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:58'
SET @IshAd = @SalaahDate + '17:38'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 20
SET @HijriMonth = 3
SET @SalaahDate = '20181127'
SET @FajrAd = @SalaahDate + '06:09'
SET @Sunrise = @SalaahDate + '07:54'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:57'
SET @IshAd = @SalaahDate + '17:37'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 21
SET @HijriMonth = 3
SET @SalaahDate = '20181128'
SET @FajrAd = @SalaahDate + '06:11'
SET @Sunrise = @SalaahDate + '07:56'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 22
SET @HijriMonth = 3
SET @SalaahDate = '20181129'
SET @FajrAd = @SalaahDate + '06:13'
SET @Sunrise = @SalaahDate + '07:58'
SET @ZuhrAd = @SalaahDate + '12:00'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 23
SET @HijriMonth = 3
SET @SalaahDate = '20181130'
SET @FajrAd = @SalaahDate + '06:14'
SET @Sunrise = @SalaahDate + '07:59'
SET @ZuhrAd = @SalaahDate + '12:00'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


Select * from SalaahTimes