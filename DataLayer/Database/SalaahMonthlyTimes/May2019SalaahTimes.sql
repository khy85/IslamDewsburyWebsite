DECLARE @SalaahDate DATETIME;
DECLARE @HijriDay INT = 1
DECLARE @HijriMonth INT = 9
DECLARE @HijriYr INT = 1441
DECLARE @FajrAd DATETIME;
DECLARE @FajrIq DATETIME;
DECLARE @Sunrise DATETIME;
DECLARE @ZuhrAd DATETIME;
DECLARE @ZuhrIq DATETIME;
DECLARE @AsrAd DATETIME;
DECLARE @AsrIq DATETIME;
DECLARE @MaghAd DATETIME;
DECLARE @IshAd DATETIME;
DECLARE @IshIq DATETIME;
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200424'
SET @FajrAd = @SalaahDate + '04:01'
SET @Sunrise = @SalaahDate + '05:46'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:08'
SET @MaghAd = @SalaahDate + '20:29'
SET @IshAd = @SalaahDate + '21:46'
SET @FajrIq = @SalaahDate + '04:21'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '17:30'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200425'
SET @FajrAd = @SalaahDate + '03:59'
SET @Sunrise = @SalaahDate + '05:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:09'
SET @MaghAd = @SalaahDate + '20:30'
SET @IshAd = @SalaahDate + '21:47'
SET @FajrIq = @SalaahDate + '04:19'
SET @AsrIq = @SalaahDate + '17:45'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200426'
SET @FajrAd = @SalaahDate + '03:56'
SET @Sunrise = @SalaahDate + '05:41'
SET @AsrAd = @SalaahDate + '17:10'
SET @MaghAd = @SalaahDate + '20:32'
SET @IshAd = @SalaahDate + '21:48'
SET @FajrIq = @SalaahDate + '04:16'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200427'
SET @FajrAd = @SalaahDate + '03:54'
SET @Sunrise = @SalaahDate + '05:39'
SET @AsrAd = @SalaahDate + '17:10'
SET @AsrIq = @SalaahDate + '17:45'
SET @MaghAd = @SalaahDate + '20:34'
SET @IshAd = @SalaahDate + '21:49'
SET @FajrIq = @SalaahDate + '04:14'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200428'
SET @FajrAd = @SalaahDate + '03:52'
SET @Sunrise = @SalaahDate + '05:37'
SET @AsrAd = @SalaahDate + '17:11'
SET @MaghAd = @SalaahDate + '20:36'
SET @IshAd = @SalaahDate + '21:50'
SET @FajrIq = @SalaahDate + '04:12'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200429'
SET @FajrAd = @SalaahDate + '03:50'
SET @Sunrise = @SalaahDate + '05:35'
SET @AsrAd = @SalaahDate + '17:12'
SET @MaghAd = @SalaahDate + '20:38'
SET @IshAd = @SalaahDate + '21:51'
SET @FajrIq = @SalaahDate + '04:10'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200430'
SET @FajrAd = @SalaahDate + '03:48'
SET @Sunrise = @SalaahDate + '05:33'
SET @AsrAd = @SalaahDate + '17:13'
SET @MaghAd = @SalaahDate + '20:40'
SET @IshAd = @SalaahDate + '21:52'
SET @FajrIq = @SalaahDate + '04:08'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200501'
SET @FajrAd = @SalaahDate + '03:46'
SET @Sunrise = @SalaahDate + '05:31'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:41'
SET @IshAd = @SalaahDate + '21:53'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
SET @FajrIq = @SalaahDate + '04:06'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200502'
SET @FajrAd = @SalaahDate + '03:44'
SET @Sunrise = @SalaahDate + '05:29'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:43'
SET @IshAd = @SalaahDate + '21:54'
SET @JumAd = NULL
SET @JumIq = NULL
SET @FajrIq = @SalaahDate + '04:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200503'
SET @FajrAd = @SalaahDate + '03:42'
SET @Sunrise = @SalaahDate + '05:27'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '20:45'
SET @IshAd = @SalaahDate + '21:56'
SET @FajrIq = @SalaahDate + '04:02'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200504'
SET @FajrAd = @SalaahDate + '03:40'
SET @Sunrise = @SalaahDate + '05:25'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:16'
SET @MaghAd = @SalaahDate + '20:47'
SET @IshAd = @SalaahDate + '21:57'
SET @FajrIq = @SalaahDate + '04:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200505'
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '03:58'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:49'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200506'
SET @FajrAd = @SalaahDate + '03:36'
SET @Sunrise = @SalaahDate + '05:21'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '03:56'
SET @MaghAd = @SalaahDate + '20:50'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200507'
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '03:54'
SET @MaghAd = @SalaahDate + '20:52'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200508'
SET @FajrAd = @SalaahDate + '03:32'
SET @Sunrise = @SalaahDate + '05:17'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:02'
SET @FajrIq = @SalaahDate + '03:52'
SET @MaghAd = @SalaahDate + '20:54'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200509'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:03'
SET @FajrIq = @SalaahDate + '03:50'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:56'
SET @IshIq = @SalaahDate + '22:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200510'
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '22:04'
SET @FajrIq = @SalaahDate + '03:48'
SET @MaghAd = @SalaahDate + '20:57'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200511'
SET @FajrAd = @SalaahDate + '03:27'
SET @Sunrise = @SalaahDate + '05:12'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:06'
SET @FajrIq = @SalaahDate + '03:47'
SET @MaghAd = @SalaahDate + '20:59'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200512'
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:07'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:01'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200513'
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:08'
SET @FajrIq = @SalaahDate + '03:43'
SET @MaghAd = @SalaahDate + '21:03'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200514'
SET @FajrAd = @SalaahDate + '03:21'
SET @Sunrise = @SalaahDate + '05:06'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:09'
SET @FajrIq = @SalaahDate + '03:41'
SET @MaghAd = @SalaahDate + '21:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200515'
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '03:40'
SET @MaghAd = @SalaahDate + '21:06'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200516'
SET @FajrAd = @SalaahDate + '03:18'
SET @Sunrise = @SalaahDate + '05:03'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:12'
SET @FajrIq = @SalaahDate + '03:38'
SET @MaghAd = @SalaahDate + '21:08'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200517'
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:13'
SET @FajrIq = @SalaahDate + '03:37'
SET @MaghAd = @SalaahDate + '21:09'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200518'
SET @FajrAd = @SalaahDate + '03:15'
SET @Sunrise = @SalaahDate + '05:00'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:14'
SET @FajrIq = @SalaahDate + '03:35'
SET @MaghAd = @SalaahDate + '21:11'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200519'
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:15'
SET @FajrIq = @SalaahDate + '03:34'
SET @MaghAd = @SalaahDate + '21:12'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200520'
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:16'
SET @FajrIq = @SalaahDate + '03:32'
SET @MaghAd = @SalaahDate + '21:14'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200521'
SET @FajrAd = @SalaahDate + '03:11'
SET @Sunrise = @SalaahDate + '04:56'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:17'
SET @FajrIq = @SalaahDate + '03:31'
SET @MaghAd = @SalaahDate + '21:15'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200522'
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '03:29'
SET @MaghAd = @SalaahDate + '21:17'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200523'
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:20'
SET @FajrIq = @SalaahDate + '03:28'
SET @MaghAd = @SalaahDate + '21:19'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 10
SET @SalaahDate = '20200524'
SET @FajrAd = @SalaahDate + '03:07'
SET @Sunrise = @SalaahDate + '04:52'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:27'
SET @MaghAd = @SalaahDate + '21:20'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200525'
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:25'
SET @MaghAd = @SalaahDate + '21:21'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200526'
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:23'
SET @FajrIq = @SalaahDate + '03:24'
SET @MaghAd = @SalaahDate + '21:23'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200527'
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:24'
SET @FajrIq = @SalaahDate + '03:23'
SET @MaghAd = @SalaahDate + '21:24'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200528'
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:25'
SET @FajrIq = @SalaahDate + '03:22'
SET @MaghAd = @SalaahDate + '21:26'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200529'
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:26'
SET @FajrIq = @SalaahDate + '03:21'
SET @MaghAd = @SalaahDate + '21:27'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200530'
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:20'
SET @MaghAd = @SalaahDate + '21:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200531'
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:19'
SET @MaghAd = @SalaahDate + '21:29'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)
