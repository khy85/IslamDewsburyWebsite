DECLARE @SalaahDate DATETIME = '20200101'
DECLARE @HijriDay INT = 4
DECLARE @HijriMonth INT = 7
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME = @SalaahDate + '06:39'
DECLARE @FajrIq DATETIME = @SalaahDate + '07:00'
DECLARE @Sunrise DATETIME = @SalaahDate + '08:24'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:15'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '14:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '16:01'
DECLARE @IshAd DATETIME = @SalaahDate + '17:43'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200102'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @AsrAd = @SalaahDate + '13:46'
SET @MaghAd = @SalaahDate + '16:02'
SET @IshAd = @SalaahDate + '17:45'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200103'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @AsrAd = @SalaahDate + '13:47'
SET @MaghAd = @SalaahDate + '16:03'
SET @IshAd = @SalaahDate + '17:48'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200104'
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:48'
SET @AsrIq = @SalaahDate + '14:30'
SET @MaghAd = @SalaahDate + '16:04'
SET @IshAd = @SalaahDate + '17:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200105'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:49'
SET @MaghAd = @SalaahDate + '16:06'
SET @IshAd = @SalaahDate + '17:51'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200106'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:51'
SET @MaghAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '17:52'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200107'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '13:52'
SET @MaghAd = @SalaahDate + '16:08'
SET @IshAd = @SalaahDate + '17:53'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200108'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '13:53'
SET @MaghAd = @SalaahDate + '16:10'
SET @IshAd = @SalaahDate + '17:54'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200109'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:54'
SET @MaghAd = @SalaahDate + '16:11'
SET @IshAd = @SalaahDate + '17:56'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200110'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:35'
SET @Sunrise = @SalaahDate + '08:20'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:55'
SET @MaghAd = @SalaahDate + '16:13'
SET @IshAd = @SalaahDate + '17:57'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200111'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:57'
SET @AsrIq = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '17:58'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200112'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:33'
SET @Sunrise = @SalaahDate + '08:18'
SET @ZuhrAd = @SalaahDate + '12:20'
SET @AsrAd = @SalaahDate + '13:58'
SET @MaghAd = @SalaahDate + '16:16'
SET @IshAd = @SalaahDate + '17:59'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200113'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:20'
SET @AsrAd = @SalaahDate + '13:59'
SET @MaghAd = @SalaahDate + '16:17'
SET @IshAd = @SalaahDate + '18:01'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200114'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:01'
SET @MaghAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '18:02'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200115'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:31'
SET @Sunrise = @SalaahDate + '08:16'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:02'
SET @MaghAd = @SalaahDate + '16:21'
SET @IshAd = @SalaahDate + '18:04'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200116'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '08:15'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:03'
SET @MaghAd = @SalaahDate + '16:22'
SET @IshAd = @SalaahDate + '18:05'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200117'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:29'
SET @Sunrise = @SalaahDate + '08:14'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:05'
SET @MaghAd = @SalaahDate + '16:24'
SET @IshAd = @SalaahDate + '18:06'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200118'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:27'
SET @Sunrise = @SalaahDate + '08:12'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:06'
SET @AsrIq = @SalaahDate + '14:30'
SET @MaghAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '18:08'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200119'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:26'
SET @Sunrise = @SalaahDate + '08:11'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:08'
SET @MaghAd = @SalaahDate + '16:28'
SET @IshAd = @SalaahDate + '18:09'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200120'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:25'
SET @Sunrise = @SalaahDate + '08:10'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:09'
SET @MaghAd = @SalaahDate + '16:30'
SET @IshAd = @SalaahDate + '18:11'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200121'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:24'
SET @Sunrise = @SalaahDate + '08:09'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:10'
SET @MaghAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '18:12'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200122'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:23'
SET @Sunrise = @SalaahDate + '08:08'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:12'
SET @MaghAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '18:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200123'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:21'
SET @Sunrise = @SalaahDate + '08:06'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:13'
SET @MaghAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '18:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200124'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:20'
SET @Sunrise = @SalaahDate + '08:05'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:15'
SET @MaghAd = @SalaahDate + '16:37'
SET @IshAd = @SalaahDate + '18:17'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200125'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:18'
SET @Sunrise = @SalaahDate + '08:03'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:16'
SET @AsrIq = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '16:39'
SET @IshAd = @SalaahDate + '18:19'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200126'
SET @HijriDay = 1
SET @HijriMonth = 8
SET @FajrAd = @SalaahDate + '06:17'
SET @FajrIq = @SalaahDate + '06:45'
SET @Sunrise = @SalaahDate + '08:02'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:18'
SET @MaghAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '18:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200127'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:15'
SET @Sunrise = @SalaahDate + '08:00'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:20'
SET @MaghAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '18:22'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200128'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:14'
SET @Sunrise = @SalaahDate + '07:59'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:21'
SET @MaghAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '18:23'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200129'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:12'
SET @Sunrise = @SalaahDate + '07:57'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:23'
SET @MaghAd = @SalaahDate + '16:47'
SET @IshAd = @SalaahDate + '18:25'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200130'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:11'
SET @Sunrise = @SalaahDate + '07:56'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:24'
SET @MaghAd = @SalaahDate + '16:49'
SET @IshAd = @SalaahDate + '18:27'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200131'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:09'
SET @Sunrise = @SalaahDate + '07:54'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:26'
SET @MaghAd = @SalaahDate + '16:51'
SET @IshAd = @SalaahDate + '18:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

Select * from SalaahTimes order by Id desc