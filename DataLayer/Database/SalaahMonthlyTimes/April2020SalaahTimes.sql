DECLARE @SalaahDate DATETIME = '20200401'
DECLARE @HijriDay INT = 8
DECLARE @HijriMonth INT = 8
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME = @SalaahDate + '04:55'
DECLARE @FajrIq DATETIME = @SalaahDate + '05:30'
DECLARE @Sunrise DATETIME = @SalaahDate + '06:40'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:15'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '16:47'
DECLARE @AsrIq DATETIME = @SalaahDate + '17:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '19:46'
DECLARE @IshAd DATETIME = @SalaahDate + '21:22'
DECLARE @IshIq DATETIME = @SalaahDate + '21:45'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200402'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:52'
SET @Sunrise = @SalaahDate + '06:37'
SET @AsrAd = @SalaahDate + '16:48'
SET @MaghAd = @SalaahDate + '19:48'
SET @IshAd = @SalaahDate + '21:23'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200403'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:50'
SET @Sunrise = @SalaahDate + '06:35'
SET @AsrAd = @SalaahDate + '16:49'
SET @MaghAd = @SalaahDate + '19:50'
SET @IshAd = @SalaahDate + '21:24'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200404'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:47'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:32'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '16:50'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '19:52'
SET @IshAd = @SalaahDate + '21:25'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200405'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '06:30'
SET @AsrAd = @SalaahDate + '16:51'
SET @MaghAd = @SalaahDate + '19:54'
SET @IshAd = @SalaahDate + '21:26'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200406'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:42'
SET @Sunrise = @SalaahDate + '06:27'
SET @AsrAd = @SalaahDate + '16:52'
SET @MaghAd = @SalaahDate + '19:55'
SET @IshAd = @SalaahDate + '21:27'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200407'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:40'
SET @Sunrise = @SalaahDate + '06:25'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '16:53'
SET @MaghAd = @SalaahDate + '19:57'
SET @IshAd = @SalaahDate + '21:29'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200408'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '16:54'
SET @MaghAd = @SalaahDate + '19:59'
SET @IshAd = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200409'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:35'
SET @Sunrise = @SalaahDate + '06:20'
SET @AsrAd = @SalaahDate + '16:55'
SET @MaghAd = @SalaahDate + '20:01'
SET @IshAd = @SalaahDate + '21:31'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200410'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:33'
SET @Sunrise = @SalaahDate + '06:18'
SET @AsrAd = @SalaahDate + '16:56'
SET @MaghAd = @SalaahDate + '20:03'
SET @IshAd = @SalaahDate + '21:32'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200411'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:30'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:15'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:57'
SET @MaghAd = @SalaahDate + '20:04'
SET @IshAd = @SalaahDate + '21:33'
SET @IshIq = @SalaahDate + '22:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200412'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:28'
SET @Sunrise = @SalaahDate + '06:13'
SET @AsrAd = @SalaahDate + '16:58'
SET @MaghAd = @SalaahDate + '20:07'
SET @IshAd = @SalaahDate + '21:34'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200413'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:26'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '16:59'
SET @MaghAd = @SalaahDate + '20:08'
SET @IshAd = @SalaahDate + '21:35'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200414'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:23'
SET @Sunrise = @SalaahDate + '06:08'
SET @AsrAd = @SalaahDate + '17:00'
SET @MaghAd = @SalaahDate + '20:10'
SET @IshAd = @SalaahDate + '21:36'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200415'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:12'
SET @IshAd = @SalaahDate + '21:12'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200416'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:14'
SET @IshAd = @SalaahDate + '21:37'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200417'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:16'
SET @Sunrise = @SalaahDate + '06:01'
SET @AsrAd = @SalaahDate + '17:02'
SET @MaghAd = @SalaahDate + '20:16'
SET @IshAd = @SalaahDate + '21:39'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200418'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:14'
SET @FajrIq = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '17:03'
SET @MaghAd = @SalaahDate + '20:18'
SET @IshAd = @SalaahDate + '21:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200419'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:12'
SET @Sunrise = @SalaahDate + '05:57'
SET @AsrAd = @SalaahDate + '17:04'
SET @MaghAd = @SalaahDate + '20:19'
SET @IshAd = @SalaahDate + '21:41'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200420'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:10'
SET @Sunrise = @SalaahDate + '05:55'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:05'
SET @MaghAd = @SalaahDate + '20:21'
SET @IshAd = @SalaahDate + '21:42'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200421'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:07'
SET @Sunrise = @SalaahDate + '05:52'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:23'
SET @IshAd = @SalaahDate + '21:43'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200422'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:05'
SET @Sunrise = @SalaahDate + '05:50'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:25'
SET @IshAd = @SalaahDate + '21:44'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200423'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:03'
SET @Sunrise = @SalaahDate + '05:48'
SET @AsrAd = @SalaahDate + '17:07'
SET @MaghAd = @SalaahDate + '20:27'
SET @IshAd = @SalaahDate + '21:45'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)