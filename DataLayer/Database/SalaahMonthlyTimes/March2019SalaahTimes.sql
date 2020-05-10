DECLARE @SalaahDate DATETIME = '20190301'
DECLARE @HijriDay INT = 24
DECLARE @HijriMonth INT = 6
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '05:09'
DECLARE @FajrIq DATETIME = @SalaahDate + '05:45'
DECLARE @Sunrise DATETIME = @SalaahDate + '06:54'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:24'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '15:10'
DECLARE @AsrIq DATETIME = @SalaahDate + '15:45'
DECLARE @MaghAd DATETIME = @SalaahDate + '17:48'
DECLARE @IshAd DATETIME = @SalaahDate + '19:21'
DECLARE @IshIq DATETIME = @SalaahDate + '19:45'
DECLARE @JumAd DATETIME = @SalaahDate + '12:30'
DECLARE @JumIq DATETIME = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190302'
SET @HijriDay = 25
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:07'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:52'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:11'
SET @AsrIq = @SalaahDate + '16:00'
SET @MaghAd = @SalaahDate + '17:50'
SET @IshAd = @SalaahDate + '19:22'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190303'
SET @HijriDay = 26
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:05'
SET @Sunrise = @SalaahDate + '06:50'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '15:12'
SET @MaghAd = @SalaahDate + '17:52'
SET @IshAd = @SalaahDate + '19:24'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190304'
SET @HijriDay = 27
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @AsrAd = @SalaahDate + '15:14'
SET @MaghAd = @SalaahDate + '17:54'
SET @IshAd = @SalaahDate + '19:26'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190305'
SET @HijriDay = 28
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:45'
SET @AsrAd = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190306'
SET @HijriDay = 29
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:58'
SET @Sunrise = @SalaahDate + '06:43'
SET @AsrAd = @SalaahDate + '15:16'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190307'
SET @HijriDay = 30
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:55'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '15:18'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190308'
SET @HijriDay = 1
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:53'
SET @Sunrise = @SalaahDate + '06:38'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:34'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190309'
SET @HijriDay = 2
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:51'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:36'
SET @AsrAd = @SalaahDate + '15:20'
SET @AsrIq = @SalaahDate + '16:15'
SET @MaghAd = @SalaahDate + '18:03'
SET @IshAd = @SalaahDate + '19:36'
SET @IshIq = @SalaahDate + '20:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190310'
SET @HijriDay = 3
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:48'
SET @Sunrise = @SalaahDate + '06:33'
SET @AsrAd = @SalaahDate + '15:21'
SET @MaghAd = @SalaahDate + '18:05'
SET @IshAd = @SalaahDate + '19:38'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190311'
SET @HijriDay = 4
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:46'
SET @Sunrise = @SalaahDate + '06:31'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '15:23'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190312'
SET @HijriDay = 5
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:43'
SET @Sunrise = @SalaahDate + '06:28'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190313'
SET @HijriDay = 6
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:41'
SET @Sunrise = @SalaahDate + '06:26'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190314'
SET @HijriDay = 7
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @AsrAd = @SalaahDate + '15:26'
SET @MaghAd = @SalaahDate + '18:13'
SET @IshAd = @SalaahDate + '19:46'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190315'
SET @HijriDay = 8
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:36'
SET @Sunrise = @SalaahDate + '06:21'
SET @ZuhrAd = @SalaahDate + '12:28'
SET @AsrAd = @SalaahDate + '15:28'
SET @MaghAd = @SalaahDate + '18:15'
SET @IshAd = @SalaahDate + '19:48'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190316'
SET @HijriDay = 9
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:34'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:19'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:17'
SET @IshAd = @SalaahDate + '19:50'
SET @IshIq = @SalaahDate + '20:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190317'
SET @HijriDay = 10
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:31'
SET @Sunrise = @SalaahDate + '06:16'
SET @AsrAd = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '18:18'
SET @IshAd = @SalaahDate + '19:52'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190318'
SET @HijriDay = 11
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:29'
SET @Sunrise = @SalaahDate + '06:14'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:20'
SET @IshAd = @SalaahDate + '19:54'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190319'
SET @HijriDay = 12
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:26'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:22'
SET @IshAd = @SalaahDate + '19:56'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190320'
SET @HijriDay = 13
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:24'
SET @Sunrise = @SalaahDate + '06:09'
SET @AsrAd = @SalaahDate + '15:33'
SET @MaghAd = @SalaahDate + '18:24'
SET @IshAd = @SalaahDate + '19:58'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190321'
SET @HijriDay = 14
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @AsrAd = @SalaahDate + '15:35'
SET @MaghAd = @SalaahDate + '18:26'
SET @IshAd = @SalaahDate + '20:01'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190322'
SET @HijriDay = 15
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:28'
SET @IshAd = @SalaahDate + '20:03'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190323'
SET @HijriDay = 16
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:17'
SET @FajrIq = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '06:02'
SET @AsrAd = @SalaahDate + '15:37'
SET @MaghAd = @SalaahDate + '18:30'
SET @IshAd = @SalaahDate + '20:05'
SET @IshIq = @SalaahDate + '20:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190324'
SET @HijriDay = 17
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:31'
SET @IshAd = @SalaahDate + '20:07'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190325'
SET @HijriDay = 18
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:12'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:57'
SET @AsrAd = @SalaahDate + '15:39'
SET @MaghAd = @SalaahDate + '18:33'
SET @IshAd = @SalaahDate + '20:09'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190326'
SET @HijriDay = 19
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:09'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:54'
SET @AsrAd = @SalaahDate + '15:40'
SET @MaghAd = @SalaahDate + '18:35'
SET @IshAd = @SalaahDate + '20:11'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190327'
SET @HijriDay = 20
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:07'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:52'
SET @AsrAd = @SalaahDate + '15:41'
SET @MaghAd = @SalaahDate + '18:37'
SET @IshAd = @SalaahDate + '20:14'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190328'
SET @HijriDay = 21
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:04'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:49'
SET @AsrAd = @SalaahDate + '15:42'
SET @MaghAd = @SalaahDate + '18:39'
SET @IshAd = @SalaahDate + '20:16'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190329'
SET @HijriDay = 22
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:02'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @Sunrise = @SalaahDate + '05:47'
SET @AsrAd = @SalaahDate + '15:43'
SET @MaghAd = @SalaahDate + '18:41'
SET @IshAd = @SalaahDate + '20:18'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190330'
SET @HijriDay = 23
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '03:59'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @Sunrise = @SalaahDate + '05:44'
SET @AsrAd = @SalaahDate + '15:44'
SET @MaghAd = @SalaahDate + '18:43'
SET @IshAd = @SalaahDate + '20:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190331'
SET @HijriDay = 24
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:57'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrAd = @SalaahDate + '16:45'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:44'
SET @IshAd = @SalaahDate + '21:21'
SET @IshIq = @SalaahDate + '21:45'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)