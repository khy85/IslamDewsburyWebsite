DECLARE @SalaahDate DATETIME = '20190801'
DECLARE @HijriDay INT = 29
DECLARE @HijriMonth INT = 11
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '03:36'
DECLARE @Sunrise DATETIME = @SalaahDate + '05:21'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:18'
DECLARE @AsrAd DATETIME = @SalaahDate + '17:30'
DECLARE @IshAd DATETIME = @SalaahDate + '22:13'
DECLARE @FajrIq DATETIME = @SalaahDate + '04:15'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '18:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '21:07'
DECLARE @IshIq DATETIME = @SalaahDate + '22:30'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190802'
SET @HijriDay = 1
SET @HijriMonth = 12
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:12'
SET @MaghAd = @SalaahDate + '21:06'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190803'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:39'
SET @Sunrise = @SalaahDate + '05:24'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '04:30'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:04'
SET @IshIq = @SalaahDate + '22:25'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190804'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:41'
SET @Sunrise = @SalaahDate + '05:26'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:10'
SET @MaghAd = @SalaahDate + '21:02'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190805'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:43'
SET @Sunrise = @SalaahDate + '05:28'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:09'
SET @MaghAd = @SalaahDate + '21:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190806'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:45'
SET @Sunrise = @SalaahDate + '05:30'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:07'
SET @MaghAd = @SalaahDate + '20:58'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190807'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:46'
SET @Sunrise = @SalaahDate + '05:31'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:06'
SET @MaghAd = @SalaahDate + '20:56'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190808'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:48'
SET @Sunrise = @SalaahDate + '05:33'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:04'
SET @MaghAd = @SalaahDate + '20:54'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190809'
SET @HijriDay = @HijriDay + 1


SET @FajrAd = @SalaahDate + '03:50'
SET @Sunrise = @SalaahDate + '05:35'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:03'
SET @MaghAd = @SalaahDate + '20:52'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190810'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:51'
SET @Sunrise = @SalaahDate + '05:36'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '04:45'
SET @MaghAd = @SalaahDate + '20:50'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190811'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:53'
SET @Sunrise = @SalaahDate + '05:38'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:00'
SET @MaghAd = @SalaahDate + '20:48'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190812'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:55'
SET @Sunrise = @SalaahDate + '05:40'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '21:58'
SET @MaghAd = @SalaahDate + '20:46'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190813'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:57'
SET @Sunrise = @SalaahDate + '05:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:57'
SET @MaghAd = @SalaahDate + '20:44'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190814'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:58'
SET @Sunrise = @SalaahDate + '05:43'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '21:55'
SET @MaghAd = @SalaahDate + '20:42'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190815'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:00'
SET @Sunrise = @SalaahDate + '05:45'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:53'
SET @MaghAd = @SalaahDate + '20:39'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190816'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:02'
SET @Sunrise = @SalaahDate + '05:47'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:15'
SET @IshAd = @SalaahDate + '21:52'
SET @MaghAd = @SalaahDate + '20:37'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190817'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:04'
SET @Sunrise = @SalaahDate + '05:49'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:14'
SET @IshAd = @SalaahDate + '21:50'
SET @FajrIq = @SalaahDate + '04:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:35'
SET @IshIq = @SalaahDate + '22:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190818'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:06'
SET @Sunrise = @SalaahDate + '05:51'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:13'
SET @IshAd = @SalaahDate + '21:49'
SET @MaghAd = @SalaahDate + '20:33'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190819'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:07'
SET @Sunrise = @SalaahDate + '05:52'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:12'
SET @IshAd = @SalaahDate + '21:47'
SET @MaghAd = @SalaahDate + '20:31'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190820'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:09'
SET @Sunrise = @SalaahDate + '05:54'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:11'
SET @IshAd = @SalaahDate + '21:45'
SET @MaghAd = @SalaahDate + '20:28'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190821'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:11'
SET @Sunrise = @SalaahDate + '05:56'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:09'
SET @IshAd = @SalaahDate + '21:44'
SET @MaghAd = @SalaahDate + '20:26'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190822'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:13'
SET @Sunrise = @SalaahDate + '05:58'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:08'
SET @IshAd = @SalaahDate + '21:42'
SET @MaghAd = @SalaahDate + '20:24'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190823'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:07'
SET @IshAd = @SalaahDate + '21:41'
SET @MaghAd = @SalaahDate + '20:22'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190824'
SET @HijriDay = @HijriDay + 1

SET @FajrAd = @SalaahDate + '04:16'
SET @Sunrise = @SalaahDate + '06:01'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:05'
SET @IshAd = @SalaahDate + '21:38'
SET @FajrIq = @SalaahDate + '05:00'
SET @AsrIq = @SalaahDate + '17:45'
SET @MaghAd = @SalaahDate + '20:19'
SET @IshIq = @SalaahDate + '21:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190825'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:18'
SET @Sunrise = @SalaahDate + '06:03'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:04'
SET @IshAd = @SalaahDate + '21:37'
SET @MaghAd = @SalaahDate + '20:17'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190826'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:20'
SET @Sunrise = @SalaahDate + '06:05'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:03'
SET @IshAd = @SalaahDate + '21:35'
SET @MaghAd = @SalaahDate + '20:15'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190827'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:01'
SET @IshAd = @SalaahDate + '21:33'
SET @MaghAd = @SalaahDate + '20:12'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190828'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:23'
SET @Sunrise = @SalaahDate + '06:08'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:00'
SET @IshAd = @SalaahDate + '21:32'
SET @MaghAd = @SalaahDate + '20:10'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190829'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:25'
SET @Sunrise = @SalaahDate + '06:10'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:58'
SET @IshAd = @SalaahDate + '21:30'
SET @MaghAd = @SalaahDate + '20:08'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190830'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:27'
SET @Sunrise = @SalaahDate + '06:12'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:57'
SET @IshAd = @SalaahDate + '21:28'
SET @MaghAd = @SalaahDate + '20:05'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190831'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:28'
SET @Sunrise = @SalaahDate + '06:13'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:55'
SET @IshAd = @SalaahDate + '21:26'
SET @FajrIq = @SalaahDate + '05:15'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '20:03'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)