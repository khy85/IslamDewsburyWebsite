DECLARE @SalaahDate DATETIME = '20180401'
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

SET @SalaahDate = '20180402'
SET @FajrAd = @SalaahDate + '04:52'
SET @Sunrise = @SalaahDate + '06:37'
SET @AsrAd = @SalaahDate + '16:48'
SET @MaghAd = @SalaahDate + '19:48'
SET @IshAd = @SalaahDate + '21:23'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20180403'
SET @FajrAd = @SalaahDate + '04:50'
SET @Sunrise = @SalaahDate + '06:35'
SET @AsrAd = @SalaahDate + '16:49'
SET @MaghAd = @SalaahDate + '19:50'
SET @IshAd = @SalaahDate + '21:24'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180404'
SET @FajrAd = @SalaahDate + '04:47'
SET @Sunrise = @SalaahDate + '06:32'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '16:50'
SET @MaghAd = @SalaahDate + '19:52'
SET @IshAd = @SalaahDate + '21:25'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180405'
SET @FajrAd = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '06:30'
SET @AsrAd = @SalaahDate + '16:51'
SET @MaghAd = @SalaahDate + '19:54'
SET @IshAd = @SalaahDate + '21:26'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180406'
SET @FajrAd = @SalaahDate + '04:42'
SET @Sunrise = @SalaahDate + '06:27'
SET @AsrAd = @SalaahDate + '16:52'
SET @MaghAd = @SalaahDate + '19:55'
SET @IshAd = @SalaahDate + '21:27'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180407'
SET @FajrAd = @SalaahDate + '04:40'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:25'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '16:53'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '19:57'
SET @IshAd = @SalaahDate + '21:29'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180408'
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '16:54'
SET @MaghAd = @SalaahDate + '19:59'
SET @IshAd = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180409'
SET @FajrAd = @SalaahDate + '04:35'
SET @Sunrise = @SalaahDate + '06:20'
SET @AsrAd = @SalaahDate + '16:55'
SET @MaghAd = @SalaahDate + '20:01'
SET @IshAd = @SalaahDate + '21:31'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180410'
SET @FajrAd = @SalaahDate + '04:33'
SET @Sunrise = @SalaahDate + '06:18'
SET @AsrAd = @SalaahDate + '16:56'
SET @MaghAd = @SalaahDate + '20:03'
SET @IshAd = @SalaahDate + '21:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180411'
SET @FajrAd = @SalaahDate + '04:30'
SET @Sunrise = @SalaahDate + '06:15'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:57'
SET @MaghAd = @SalaahDate + '20:04'
SET @IshAd = @SalaahDate + '21:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180412'
SET @FajrAd = @SalaahDate + '04:28'
SET @Sunrise = @SalaahDate + '06:13'
SET @AsrAd = @SalaahDate + '16:58'
SET @MaghAd = @SalaahDate + '20:07'
SET @IshAd = @SalaahDate + '21:34'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180413'
SET @FajrAd = @SalaahDate + '04:26'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '16:59'
SET @MaghAd = @SalaahDate + '20:08'
SET @IshAd = @SalaahDate + '21:35'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180414'
SET @FajrAd = @SalaahDate + '04:23'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:08'
SET @AsrAd = @SalaahDate + '17:00'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '20:10'
SET @IshAd = @SalaahDate + '21:36'
SET @IshIq = @SalaahDate + '22:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180415'
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:12'
SET @IshAd = @SalaahDate + '21:12'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180416'
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:14'
SET @IshAd = @SalaahDate + '21:37'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180417'
SET @FajrAd = @SalaahDate + '04:16'
SET @Sunrise = @SalaahDate + '06:01'
SET @AsrAd = @SalaahDate + '17:02'
SET @MaghAd = @SalaahDate + '20:16'
SET @IshAd = @SalaahDate + '21:39'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180418'
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '17:03'
SET @MaghAd = @SalaahDate + '20:18'
SET @IshAd = @SalaahDate + '21:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180419'
SET @FajrAd = @SalaahDate + '04:12'
SET @Sunrise = @SalaahDate + '05:57'
SET @AsrAd = @SalaahDate + '17:04'
SET @MaghAd = @SalaahDate + '20:19'
SET @IshAd = @SalaahDate + '21:41'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180420'
SET @FajrAd = @SalaahDate + '04:10'
SET @Sunrise = @SalaahDate + '05:55'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:05'
SET @MaghAd = @SalaahDate + '20:21'
SET @IshAd = @SalaahDate + '21:42'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180421'
SET @FajrAd = @SalaahDate + '04:07'
SET @FajrIq = @SalaahDate + '05:52'
SET @Sunrise = @SalaahDate + '06:06'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:23'
SET @IshAd = @SalaahDate + '21:43'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180422'
SET @FajrAd = @SalaahDate + '04:05'
SET @Sunrise = @SalaahDate + '05:50'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:25'
SET @IshAd = @SalaahDate + '21:44'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180423'
SET @FajrAd = @SalaahDate + '04:03'
SET @Sunrise = @SalaahDate + '05:48'
SET @AsrAd = @SalaahDate + '17:07'
SET @MaghAd = @SalaahDate + '20:27'
SET @IshAd = @SalaahDate + '21:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180424'
SET @FajrAd = @SalaahDate + '04:01'
SET @Sunrise = @SalaahDate + '05:46'
SET @AsrAd = @SalaahDate + '17:08'
SET @MaghAd = @SalaahDate + '20:29'
SET @IshAd = @SalaahDate + '21:46'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180425'
SET @FajrAd = @SalaahDate + '03:59'
SET @Sunrise = @SalaahDate + '05:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:09'
SET @MaghAd = @SalaahDate + '20:30'
SET @IshAd = @SalaahDate + '21:47'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180426'
SET @FajrAd = @SalaahDate + '03:56'
SET @Sunrise = @SalaahDate + '05:41'
SET @AsrAd = @SalaahDate + '17:10'
SET @MaghAd = @SalaahDate + '20:32'
SET @IshAd = @SalaahDate + '21:48'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180427'
SET @FajrAd = @SalaahDate + '03:54'
SET @Sunrise = @SalaahDate + '05:39'
SET @AsrAd = @SalaahDate + '17:10'
SET @MaghAd = @SalaahDate + '20:34'
SET @IshAd = @SalaahDate + '21:49'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180428'
SET @FajrAd = @SalaahDate + '03:52'
SET @FajrIq = @SalaahDate + '04:30'
SET @Sunrise = @SalaahDate + '05:37'
SET @AsrAd = @SalaahDate + '17:11'
SET @AsrIq = @SalaahDate + '17:45'
SET @MaghAd = @SalaahDate + '20:36'
SET @IshAd = @SalaahDate + '21:50'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180429'
SET @FajrAd = @SalaahDate + '03:50'
SET @Sunrise = @SalaahDate + '05:35'
SET @AsrAd = @SalaahDate + '17:12'
SET @MaghAd = @SalaahDate + '20:38'
SET @IshAd = @SalaahDate + '21:51'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180430'
SET @FajrAd = @SalaahDate + '03:48'
SET @Sunrise = @SalaahDate + '05:33'
SET @AsrAd = @SalaahDate + '17:13'
SET @MaghAd = @SalaahDate + '20:40'
SET @IshAd = @SalaahDate + '21:52'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)