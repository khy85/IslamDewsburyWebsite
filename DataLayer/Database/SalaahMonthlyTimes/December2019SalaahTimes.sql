DECLARE @SalaahDate DATETIME = '20191201'
DECLARE @HijriDay INT = 4
DECLARE @HijriMonth INT = 6
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME = @SalaahDate + '06:16'
DECLARE @FajrIq DATETIME = @SalaahDate + '07:00'
DECLARE @Sunrise DATETIME = @SalaahDate + '08:01'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:01'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '13:37'
DECLARE @AsrIq DATETIME = @SalaahDate + '14:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '15:54'
DECLARE @IshAd DATETIME = @SalaahDate + '17:34'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191202'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:17'
SET @Sunrise = @SalaahDate + '08:02'
SET @ZuhrAd = @SalaahDate + '12:01'
SET @AsrAd = @SalaahDate + '13:37'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191203'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:19'
SET @Sunrise = @SalaahDate + '08:04'
SET @ZuhrAd = @SalaahDate + '12:01'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191204'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:20'
SET @Sunrise = @SalaahDate + '08:05'
SET @ZuhrAd = @SalaahDate + '12:02'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191205'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:21'
SET @Sunrise = @SalaahDate + '08:06'
SET @ZuhrAd = @SalaahDate + '12:02'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191206'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:23'
SET @Sunrise = @SalaahDate + '08:08'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191207'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:24'
SET @Sunrise = @SalaahDate + '08:09'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191208'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:25'
SET @Sunrise = @SalaahDate + '08:10'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191209'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:26'
SET @FajrIq = @SalaahDate + '07:00'
SET @Sunrise = @SalaahDate + '08:12'
SET @ZuhrAd = @SalaahDate + '12:04'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191210'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:28'
SET @Sunrise = @SalaahDate + '08:13'
SET @ZuhrAd = @SalaahDate + '12:04'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191211'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:29'
SET @Sunrise = @SalaahDate + '08:14'
SET @ZuhrAd = @SalaahDate + '12:05'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191212'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '08:15'
SET @ZuhrAd = @SalaahDate + '12:05'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191213'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:31'
SET @Sunrise = @SalaahDate + '08:16'
SET @ZuhrAd = @SalaahDate + '12:06'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191214'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:06'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191215'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:33'
SET @Sunrise = @SalaahDate + '08:18'
SET @ZuhrAd = @SalaahDate + '12:07'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191216'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:07'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191217'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:08'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191218'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:35'
SET @Sunrise = @SalaahDate + '08:20'
SET @ZuhrAd = @SalaahDate + '12:08'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191219'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:09'
SET @AsrAd = @SalaahDate + '13:37'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191220'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd =  @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191221'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191222'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191223'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191224'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191225'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:12'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:54'
SET @IshAd = @SalaahDate + '17:34'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191226'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:12'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191227'
SET @HijriDay = 1
SET @HijriMonth = 7
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:13'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191228'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:13'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191229'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:14'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '15:57'
SET @IshAd = @SalaahDate + '17:37'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191230'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:14'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '15:58'
SET @IshAd = @SalaahDate + '17:38'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191231'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:15'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '15:59'
SET @IshAd = @SalaahDate + '17:39'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

Select * from SalaahTimes