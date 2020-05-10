DECLARE @SalaahDate DATETIME = '20180516'
DECLARE @HijriDay INT = 30
DECLARE @HijriMonth INT = 8
DECLARE @HijriYr INT = 1439
DECLARE @FajrAd DATETIME = @SalaahDate + '03:18'
DECLARE @Sunrise DATETIME = @SalaahDate + '05:03'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:08'
DECLARE @AsrAd DATETIME = @SalaahDate + '17:24'
DECLARE @IshAd DATETIME = @SalaahDate + '22:12'
DECLARE @FajrIq DATETIME = @SalaahDate + '03:38'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '18:00'
DECLARE @MaghAd DATETIME = @SalaahDate + '21:08'
DECLARE @IshIq DATETIME = @SalaahDate + '22:30'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180517'
SET @HijriDay = 1
SET @HijriMonth = 9
SET @HijriYr = 1439
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:13'
SET @FajrIq = @SalaahDate + '03:37'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:09'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180518'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:15'
SET @Sunrise = @SalaahDate + '05:00'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:14'
SET @FajrIq = @SalaahDate + '03:35'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:11'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180519'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:15'
SET @FajrIq = @SalaahDate + '03:34'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:12'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180520'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:16'
SET @FajrIq = @SalaahDate + '03:32'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:14'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180521'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:11'
SET @Sunrise = @SalaahDate + '04:56'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:17'
SET @FajrIq = @SalaahDate + '03:31'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:15'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180522'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '03:29'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:17'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180523'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:20'
SET @FajrIq = @SalaahDate + '03:28'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:19'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180524'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:07'
SET @Sunrise = @SalaahDate + '04:52'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:27'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:20'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180525'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:25'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:21'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180526'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:23'
SET @FajrIq = @SalaahDate + '03:24'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:23'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180527'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:24'
SET @FajrIq = @SalaahDate + '03:23'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:24'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180528'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:25'
SET @FajrIq = @SalaahDate + '03:22'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:26'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180529'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:26'
SET @FajrIq = @SalaahDate + '03:21'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:27'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180530'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:20'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:28'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180531'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:19'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:29'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180601'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:58'
SET @Sunrise = @SalaahDate + '04:43'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:29'
SET @FajrIq = @SalaahDate + '03:18'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:31'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180602'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:57'
SET @Sunrise = @SalaahDate + '04:42'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:17'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:32'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180603'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:56'
SET @Sunrise = @SalaahDate + '04:41'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:16'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:33'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180604'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:31'
SET @FajrIq = @SalaahDate + '03:15'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:34'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180605'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:32'
SET @FajrIq = @SalaahDate + '03:15'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:35'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180606'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:54'
SET @Sunrise = @SalaahDate + '04:39'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:33'
SET @FajrIq = @SalaahDate + '03:14'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:36'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180607'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:34'
SET @FajrIq = @SalaahDate + '03:13'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:37'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180608'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:35'
SET @FajrIq = @SalaahDate + '03:13'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:38'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180609'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:36'
SET @FajrIq = @SalaahDate + '03:12'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:39'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180610'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:37'
SET @FajrIq = @SalaahDate + '03:12'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:40'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180611'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:38'
SET @FajrIq = @SalaahDate + '03:11'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:40'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180612'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:39'
SET @FajrIq = @SalaahDate + '03:11'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:41'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180613'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:40'
SET @FajrIq = @SalaahDate + '03:11'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180614'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:41'
SET @FajrIq = @SalaahDate + '03:11'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)