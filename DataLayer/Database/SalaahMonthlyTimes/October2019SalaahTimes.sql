DECLARE @SalaahDate DATETIME = '20191001'
DECLARE @HijriDay INT = 2
DECLARE @HijriMonth INT = 2
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME = @SalaahDate + '05:23'
DECLARE @FajrIq DATETIME = @SalaahDate + '06:00'
DECLARE @Sunrise DATETIME = @SalaahDate + '07:08'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:01'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '16:03'
DECLARE @AsrIq DATETIME = @SalaahDate + '16:45'
DECLARE @MaghAd DATETIME = @SalaahDate + '18:47'
DECLARE @IshAd DATETIME = @SalaahDate + '20:19'
DECLARE @IshIq DATETIME = @SalaahDate + '20:45'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191002'
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @ZuhrAd = @SalaahDate + '13:01'
SET @AsrAd = @SalaahDate + '16:01'
SET @MaghAd = @SalaahDate + '18:44'
SET @IshAd = @SalaahDate + '20:17'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191003'
SET @FajrAd = @SalaahDate + '05:27'
SET @Sunrise = @SalaahDate + '07:12'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:59'
SET @MaghAd = @SalaahDate + '18:42'
SET @IshAd = @SalaahDate + '20:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191004'
SET @FajrAd = @SalaahDate + '05:29'
SET @Sunrise = @SalaahDate + '07:14'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:58'
SET @MaghAd = @SalaahDate + '18:40'
SET @IshAd = @SalaahDate + '20:12'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191005'
SET @FajrAd = @SalaahDate + '05:31'
SET @Sunrise = @SalaahDate + '07:16'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '20:09'
SET @FajrIq = @SalaahDate + '06:15'
SET @AsrIq = @SalaahDate + '16:30'
SET @MaghAd = @SalaahDate + '18:37'
SET @IshIq = @SalaahDate + '20:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191006'
SET @FajrAd = @SalaahDate + '05:32'
SET @Sunrise = @SalaahDate + '07:17'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:54'
SET @IshAd = @SalaahDate + '20:07'
SET @MaghAd = @SalaahDate + '18:35'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191007'
SET @FajrAd = @SalaahDate + '05:34'
SET @Sunrise = @SalaahDate + '07:19'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '20:04'
SET @MaghAd = @SalaahDate + '18:32'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191008'
SET @FajrAd = @SalaahDate + '05:36'
SET @Sunrise = @SalaahDate + '07:21'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '20:02'
SET @MaghAd = @SalaahDate + '18:30'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191009'
SET @FajrAd = @SalaahDate + '05:38'
SET @Sunrise = @SalaahDate + '07:23'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:48'
SET @IshAd = @SalaahDate + '20:00'
SET @MaghAd = @SalaahDate + '18:28'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191010'
SET @FajrAd = @SalaahDate + '05:40'
SET @Sunrise = @SalaahDate + '07:25'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:47'
SET @IshAd = @SalaahDate + '19:57'
SET @MaghAd = @SalaahDate + '18:25'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191011'
SET @FajrAd = @SalaahDate + '05:42'
SET @Sunrise = @SalaahDate + '07:27'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:45'
SET @IshAd = @SalaahDate + '19:55'
SET @MaghAd = @SalaahDate + '18:23'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191012'
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:43'
SET @IshAd = @SalaahDate + '19:53'
SET @FajrIq = @SalaahDate + '06:30'
SET @AsrIq = @SalaahDate + '16:15'
SET @MaghAd = @SalaahDate + '18:21'
SET @IshIq = @SalaahDate + '20:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191013'
SET @FajrAd = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:30'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:41'
SET @IshAd = @SalaahDate + '19:50'
SET @MaghAd = @SalaahDate + '18:18'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191014'
SET @FajrAd = @SalaahDate + '05:47'
SET @Sunrise = @SalaahDate + '07:32'
SET @ZuhrAd = @SalaahDate + '12:57'
SET @AsrAd = @SalaahDate + '15:39'
SET @IshAd = @SalaahDate + '19:48'
SET @MaghAd = @SalaahDate + '18:16'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191015'
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:14'
SET @IshAd = @SalaahDate + '19:46'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191016'
SET @FajrAd = @SalaahDate + '05:51'
SET @Sunrise = @SalaahDate + '07:36'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191017'
SET @FajrAd = @SalaahDate + '05:53'
SET @Sunrise = @SalaahDate + '07:38'
SET @AsrAd = @SalaahDate + '15:34'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191018'
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:39'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191019'
SET @FajrAd = @SalaahDate + '05:57'
SET @Sunrise = @SalaahDate + '07:42'
SET @ZuhrAd = @SalaahDate + '12:56'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:04'
SET @IshAd = @SalaahDate + '19:37'
SET @FajrIq = @SalaahDate + '06:45'
SET @AsrIq = @SalaahDate + '16:00'
SET @IshIq = @SalaahDate + '20:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191020'
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:35'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191021'
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @AsrAd = @SalaahDate + '15:27'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:33'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191022'
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:31'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191023'
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:29'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191024'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @AsrAd = @SalaahDate + '15:22'
SET @MaghAd = @SalaahDate + '17:53'
SET @IshAd = @SalaahDate + '19:27'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191025'
SET @FajrAd = @SalaahDate + '06:08'
SET @Sunrise = @SalaahDate + '07:53'
SET @AsrAd = @SalaahDate + '15:20'
SET @MaghAd = @SalaahDate + '17:51'
SET @IshAd = @SalaahDate + '19:25'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191026'
SET @FajrAd = @SalaahDate + '06:10'
SET @Sunrise = @SalaahDate + '07:55'
SET @ZuhrAd = @SalaahDate + '12:55'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '17:49'
SET @IshAd = @SalaahDate + '19:23'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191027'
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:17'
SET @MaghAd = @SalaahDate + '16:47'
SET @IshAd = @SalaahDate + '18:21'
SET @FajrIq = @SalaahDate + '05:45'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrIq = @SalaahDate + '14:45'
SET @IshIq = @SalaahDate + '19:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191028'
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @AsrAd = @SalaahDate + '14:15'
SET @MaghAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '18:19'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 3
SET @SalaahDate = '20191029'
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:14'
SET @MaghAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '18:17'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191030'
SET @FajrAd = @SalaahDate + '05:18'
SET @Sunrise = @SalaahDate + '07:03'
SET @AsrAd = @SalaahDate + '14:12'
SET @MaghAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '18:16'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191031'
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '14:11'
SET @MaghAd = @SalaahDate + '16:39'
SET @IshAd = @SalaahDate + '18:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)
