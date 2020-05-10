DECLARE @SalaahDate DATETIME = '20190701'
DECLARE @HijriDay INT = 28
DECLARE @HijriMonth INT = 10
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '02:55'
DECLARE @Sunrise DATETIME = @SalaahDate + '04:40'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:15'
DECLARE @AsrAd DATETIME = @SalaahDate + '17:42'
DECLARE @IshAd DATETIME = @SalaahDate + '22:44'
DECLARE @FajrIq DATETIME = @SalaahDate + '03:45'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '18:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '21:44'
DECLARE @IshIq DATETIME = @SalaahDate + '22:55'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190702'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:56'
SET @Sunrise = @SalaahDate + '04:41'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:43'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:43'
SET @IshIq = @SalaahDate + '22:55'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190703'
SET @HijriMonth = 11
SET @HijriDay = 1
SET @FajrAd = @SalaahDate + '02:57'
SET @Sunrise = @SalaahDate + '04:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:43'
SET @MaghAd = @SalaahDate + '21:43'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190704'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:58'
SET @Sunrise = @SalaahDate + '04:43'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:42'
SET @MaghAd = @SalaahDate + '21:42'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190705'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:42'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190706'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:41'
SET @MaghAd = @SalaahDate + '21:41'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190707'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:40'
SET @MaghAd = @SalaahDate + '21:40'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190708'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:40'
SET @MaghAd = @SalaahDate + '21:40'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190709'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:39'
SET @MaghAd = @SalaahDate + '21:39'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190710'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:38'
SET @MaghAd = @SalaahDate + '21:38'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190711'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:37'
SET @MaghAd = @SalaahDate + '21:37'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190712'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:06'
SET @Sunrise = @SalaahDate + '04:51'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:36'
SET @MaghAd = @SalaahDate + '21:36'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190713'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:35'
SET @MaghAd = @SalaahDate + '21:35'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190714'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:34'
SET @MaghAd = @SalaahDate + '21:34'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190715'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:10'
SET @Sunrise = @SalaahDate + '04:55'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:33'
SET @MaghAd = @SalaahDate + '21:33'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190716'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:32'
SET @MaghAd = @SalaahDate + '21:32'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190717'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:13'
SET @Sunrise = @SalaahDate + '04:58'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:30'
SET @MaghAd = @SalaahDate + '21:30'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190718'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:29'
SET @MaghAd = @SalaahDate + '21:29'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190719'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:16'
SET @Sunrise = @SalaahDate + '05:01'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:28'
SET @MaghAd = @SalaahDate + '21:28'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190720'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:27'
SET @MaghAd = @SalaahDate + '21:27'
SET @IshIq = @SalaahDate + '22:35'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190721'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:19'
SET @Sunrise = @SalaahDate + '05:04'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:25'
SET @MaghAd = @SalaahDate + '21:25'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190722'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:24'
SET @MaghAd = @SalaahDate + '21:24'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190723'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:22'
SET @Sunrise = @SalaahDate + '05:07'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:22'
SET @MaghAd = @SalaahDate + '21:22'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190724'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:21'
SET @MaghAd = @SalaahDate + '21:21'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190725'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:20'
SET @MaghAd = @SalaahDate + '21:19'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190726'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:26'
SET @Sunrise = @SalaahDate + '05:11'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:19'
SET @MaghAd = @SalaahDate + '21:18'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190727'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '04:00'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:16'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190728'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:17'
SET @MaghAd = @SalaahDate + '21:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190729'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:31'
SET @Sunrise = @SalaahDate + '05:16'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:16'
SET @MaghAd = @SalaahDate + '21:13'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190730'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:33'
SET @Sunrise = @SalaahDate + '05:18'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:15'
SET @MaghAd = @SalaahDate + '21:11'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190731'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:14'
SET @MaghAd = @SalaahDate + '21:09'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)
