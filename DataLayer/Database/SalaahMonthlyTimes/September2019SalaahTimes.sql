DECLARE @SalaahDate DATETIME = '20190901'
DECLARE @HijriDay INT = 2
DECLARE @HijriMonth INT = 1
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME = @SalaahDate + '04:30'
DECLARE @Sunrise DATETIME = @SalaahDate + '06:15'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:11'
DECLARE @AsrAd DATETIME = @SalaahDate + '16:54'
DECLARE @IshAd DATETIME = @SalaahDate + '21:24'
DECLARE @FajrIq DATETIME = @SalaahDate + '05:15'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '17:30'
DECLARE @MaghAd DATETIME = @SalaahDate + '20:00'
DECLARE @IshIq DATETIME = @SalaahDate + '21:30'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190902'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:32'
SET @Sunrise = @SalaahDate + '06:17'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '16:53'
SET @IshAd = @SalaahDate + '21:23'
SET @MaghAd = @SalaahDate + '19:58'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190903'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:34'
SET @Sunrise = @SalaahDate + '06:19'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '16:51'
SET @IshAd = @SalaahDate + '21:21'
SET @MaghAd = @SalaahDate + '19:56'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190904'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:36'
SET @Sunrise = @SalaahDate + '06:21'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:49'
SET @IshAd = @SalaahDate + '21:19'
SET @MaghAd = @SalaahDate + '19:53'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190905'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:37'
SET @Sunrise = @SalaahDate + '06:22'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:48'
SET @IshAd = @SalaahDate + '21:17'
SET @MaghAd = @SalaahDate + '19:51'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190906'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:39'
SET @Sunrise = @SalaahDate + '06:24'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:46'
SET @IshAd = @SalaahDate + '21:15'
SET @MaghAd = @SalaahDate + '19:48'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190907'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:41'
SET @Sunrise = @SalaahDate + '06:26'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '21:14'
SET @FajrIq = @SalaahDate + '05:30'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:46'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190908'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:43'
SET @Sunrise = @SalaahDate + '06:28'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '21:11'
SET @MaghAd = @SalaahDate + '19:43'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190909'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:44'
SET @Sunrise = @SalaahDate + '06:29'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '21:10'
SET @MaghAd = @SalaahDate + '19:41'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190910'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:46'
SET @Sunrise = @SalaahDate + '06:31'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:40'
SET @IshAd = @SalaahDate + '21:08'
SET @MaghAd = @SalaahDate + '19:39'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190911'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:48'
SET @Sunrise = @SalaahDate + '06:33'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:38'
SET @IshAd = @SalaahDate + '21:06'
SET @MaghAd = @SalaahDate + '19:36'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190912'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:50'
SET @Sunrise = @SalaahDate + '06:35'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:37'
SET @IshAd = @SalaahDate + '21:05'
SET @MaghAd = @SalaahDate + '19:34'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190913'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:51'
SET @Sunrise = @SalaahDate + '06:36'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '21:02'
SET @MaghAd = @SalaahDate + '19:31'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190914'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:53'
SET @Sunrise = @SalaahDate + '06:38'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '21:01'
SET @FajrIq = @SalaahDate + '05:45'
SET @MaghAd = @SalaahDate + '19:29'
SET @IshIq = @SalaahDate + '21:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190915'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:55'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '20:58'
SET @MaghAd = @SalaahDate + '19:26'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190916'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:57'
SET @Sunrise = @SalaahDate + '06:42'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:30'
SET @IshAd = @SalaahDate + '20:57'
SET @MaghAd = @SalaahDate + '19:24'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190917'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:58'
SET @Sunrise = @SalaahDate + '06:43'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:28'
SET @IshAd = @SalaahDate + '20:55'
SET @MaghAd = @SalaahDate + '19:21'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190918'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:45'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '20:53'
SET @MaghAd = @SalaahDate + '19:19'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190919'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:25'
SET @IshAd = @SalaahDate + '20:51'
SET @MaghAd = @SalaahDate + '19:16'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190920'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:04'
SET @Sunrise = @SalaahDate + '06:49'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:23'
SET @IshAd = @SalaahDate + '20:48'
SET @MaghAd = @SalaahDate + '19:14'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190921'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:05'
SET @Sunrise = @SalaahDate + '06:50'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:21'
SET @IshAd = @SalaahDate + '20:46'
SET @FajrIq = @SalaahDate + '06:00'
SET @AsrIq = @SalaahDate + '17:00'
SET @MaghAd = @SalaahDate + '19:11'
SET @IshIq = @SalaahDate + '21:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190922'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:07'
SET @Sunrise = @SalaahDate + '06:52'
SET @ZuhrAd = @SalaahDate + '13:04'
SET @AsrAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '20:43'
SET @MaghAd = @SalaahDate + '19:09'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190923'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:09'
SET @Sunrise = @SalaahDate + '06:54'
SET @ZuhrAd = @SalaahDate + '13:04'
SET @AsrAd = @SalaahDate + '16:18'
SET @IshAd = @SalaahDate + '20:40'
SET @MaghAd = @SalaahDate + '19:07'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190924'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:11'
SET @Sunrise = @SalaahDate + '06:56'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:16'
SET @IshAd = @SalaahDate + '20:38'
SET @MaghAd = @SalaahDate + '19:04'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190925'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:13'
SET @Sunrise = @SalaahDate + '06:58'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '20:35'
SET @MaghAd = @SalaahDate + '19:02'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190926'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:12'
SET @IshAd = @SalaahDate + '20:32'
SET @MaghAd = @SalaahDate + '18:59'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190927'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:10'
SET @IshAd = @SalaahDate + '20:30'
SET @MaghAd = @SalaahDate + '18:57'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190928'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:18'
SET @Sunrise = @SalaahDate + '07:03'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:09'
SET @IshAd = @SalaahDate + '20:27'
SET @AsrIq = @SalaahDate + '16:45'
SET @MaghAd = @SalaahDate + '18:54'
SET @IshIq = @SalaahDate + '20:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190929'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:20'
SET @Sunrise = @SalaahDate + '07:05'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '20:24'
SET @MaghAd = @SalaahDate + '18:52'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190930'
SET @HijriDay = 1
SET @HijriMonth = 2
SET @FajrAd = @SalaahDate + '05:22'
SET @Sunrise = @SalaahDate + '07:07'
SET @ZuhrAd = @SalaahDate + '13:01'
SET @AsrAd = @SalaahDate + '16:05'
SET @IshAd = @SalaahDate + '20:22'
SET @MaghAd = @SalaahDate + '18:49'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)