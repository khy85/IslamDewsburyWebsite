DECLARE @SalaahDate DATETIME = '20190501'
DECLARE @HijriDay INT = 26
DECLARE @HijriMonth INT = 8
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '03:46'
DECLARE @FajrIq DATETIME = @SalaahDate + '04:30'
DECLARE @Sunrise DATETIME = @SalaahDate + '05:31'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:09'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '17:14'
DECLARE @AsrIq DATETIME = @SalaahDate + '17:45'
DECLARE @MaghAd DATETIME = @SalaahDate + '20:41'
DECLARE @IshAd DATETIME = @SalaahDate + '21:53'
DECLARE @IshIq DATETIME = @SalaahDate + '22:15'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 27
SET @HijriMonth = 8
SET @SalaahDate = '20190502'
SET @FajrAd = @SalaahDate + '03:44'
SET @Sunrise = @SalaahDate + '05:29'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:43'
SET @IshAd = @SalaahDate + '21:54'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 28
SET @HijriMonth = 8
SET @SalaahDate = '20190503'
SET @FajrAd = @SalaahDate + '03:42'
SET @Sunrise = @SalaahDate + '05:27'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '20:45'
SET @IshAd = @SalaahDate + '21:56'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 29
SET @HijriMonth = 8
SET @SalaahDate = '20190504'
SET @FajrAd = @SalaahDate + '03:40'
SET @Sunrise = @SalaahDate + '05:25'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:16'
SET @MaghAd = @SalaahDate + '20:47'
SET @IshAd = @SalaahDate + '21:57'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 30
SET @HijriMonth = 8
SET @SalaahDate = '20190505'
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '04:30'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:49'
SET @IshIq = @SalaahDate + '22:30'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @HijriDay = 1
SET @HijriMonth = 9
SET @SalaahDate = '20180506'
SET @FajrAd = @SalaahDate + '03:36'
SET @Sunrise = @SalaahDate + '05:21'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '03:56'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:50'
SET @IshIq = @SalaahDate + '22:30'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180507'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '03:54'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:52'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180508'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:32'
SET @Sunrise = @SalaahDate + '05:17'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:02'
SET @FajrIq = @SalaahDate + '03:52'
SET @MaghAd = @SalaahDate + '20:54'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180509'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:03'
SET @FajrIq = @SalaahDate + '03:50'
SET @MaghAd = @SalaahDate + '20:56'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180510'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '22:04'
SET @FajrIq = @SalaahDate + '03:48'
SET @MaghAd = @SalaahDate + '20:57'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180511'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:27'
SET @Sunrise = @SalaahDate + '05:12'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:06'
SET @FajrIq = @SalaahDate + '03:47'
SET @MaghAd = @SalaahDate + '20:59'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180512'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:07'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:01'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180513'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:08'
SET @FajrIq = @SalaahDate + '03:43'
SET @MaghAd = @SalaahDate + '21:03'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180514'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:21'
SET @Sunrise = @SalaahDate + '05:06'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:09'
SET @FajrIq = @SalaahDate + '03:41'
SET @MaghAd = @SalaahDate + '21:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180515'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '03:40'
SET @MaghAd = @SalaahDate + '21:06'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180516'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:18'
SET @Sunrise = @SalaahDate + '05:03'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:12'
SET @FajrIq = @SalaahDate + '03:38'
SET @MaghAd = @SalaahDate + '21:08'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180517'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:13'
SET @FajrIq = @SalaahDate + '03:37'
SET @MaghAd = @SalaahDate + '21:09'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180518'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:15'
SET @Sunrise = @SalaahDate + '05:00'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:14'
SET @FajrIq = @SalaahDate + '03:35'
SET @MaghAd = @SalaahDate + '21:11'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180519'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:15'
SET @FajrIq = @SalaahDate + '03:34'
SET @MaghAd = @SalaahDate + '21:12'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180520'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:16'
SET @FajrIq = @SalaahDate + '03:32'
SET @MaghAd = @SalaahDate + '21:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180521'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:11'
SET @Sunrise = @SalaahDate + '04:56'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:17'
SET @FajrIq = @SalaahDate + '03:31'
SET @MaghAd = @SalaahDate + '21:15'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180522'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '03:29'
SET @MaghAd = @SalaahDate + '21:17'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180523'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:20'
SET @FajrIq = @SalaahDate + '03:28'
SET @MaghAd = @SalaahDate + '21:19'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180524'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:07'
SET @Sunrise = @SalaahDate + '04:52'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:27'
SET @MaghAd = @SalaahDate + '21:20'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180525'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:25'
SET @MaghAd = @SalaahDate + '21:21'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180526'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:23'
SET @FajrIq = @SalaahDate + '03:24'
SET @MaghAd = @SalaahDate + '21:23'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180527'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:24'
SET @FajrIq = @SalaahDate + '03:23'
SET @MaghAd = @SalaahDate + '21:24'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180528'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:25'
SET @FajrIq = @SalaahDate + '03:22'
SET @MaghAd = @SalaahDate + '21:26'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180529'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:26'
SET @FajrIq = @SalaahDate + '03:21'
SET @MaghAd = @SalaahDate + '21:27'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180530'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:20'
SET @MaghAd = @SalaahDate + '21:28'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180531'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:19'
SET @MaghAd = @SalaahDate + '21:29'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)
