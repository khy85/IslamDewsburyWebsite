DECLARE @SalaahDate DATETIME = '20180301'
DECLARE @FajrAd DATETIME = @SalaahDate + '05:09'
DECLARE @FajrIq DATETIME = @SalaahDate + '05:45'
DECLARE @Sunrise DATETIME = @SalaahDate + '06:54'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:24'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '15:10'
DECLARE @AsrIq DATETIME = @SalaahDate + '15:45'
DECLARE @MaghAd DATETIME = @SalaahDate + '17:48'
DECLARE @IshAd DATETIME = @SalaahDate + '19:21'
DECLARE @IshIq DATETIME = @SalaahDate + '19:45'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180302'
SET @FajrAd = @SalaahDate + '05:07'
SET @Sunrise = @SalaahDate + '06:52'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:11'
SET @MaghAd = @SalaahDate + '17:50'
SET @IshAd = @SalaahDate + '19:22'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20180303'
SET @FajrAd = @SalaahDate + '05:05'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:50'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '15:12'
SET @AsrIq = @SalaahDate + '16:00'
SET @MaghAd = @SalaahDate + '17:52'
SET @IshAd = @SalaahDate + '19:24'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180304'
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @AsrAd = @SalaahDate + '15:14'
SET @MaghAd = @SalaahDate + '17:54'
SET @IshAd = @SalaahDate + '19:26'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180305'
SET @FajrAd = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:45'
SET @AsrAd = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180306'
SET @FajrAd = @SalaahDate + '04:58'
SET @Sunrise = @SalaahDate + '06:43'
SET @AsrAd = @SalaahDate + '15:16'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180307'
SET @FajrAd = @SalaahDate + '04:55'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '15:18'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180308'
SET @FajrAd = @SalaahDate + '04:53'
SET @Sunrise = @SalaahDate + '06:38'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:34'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180309'
SET @FajrAd = @SalaahDate + '04:51'
SET @Sunrise = @SalaahDate + '06:36'
SET @AsrAd = @SalaahDate + '15:20'
SET @MaghAd = @SalaahDate + '18:03'
SET @IshAd = @SalaahDate + '19:36'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180310'
SET @FajrAd = @SalaahDate + '04:48'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:33'
SET @AsrAd = @SalaahDate + '15:21'
SET @AsrIq = @SalaahDate + '16:15'
SET @MaghAd = @SalaahDate + '18:05'
SET @IshAd = @SalaahDate + '19:38'
SET @IshIq = @SalaahDate + '20:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180311'
SET @FajrAd = @SalaahDate + '04:46'
SET @Sunrise = @SalaahDate + '06:31'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '15:23'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180312'
SET @FajrAd = @SalaahDate + '04:43'
SET @Sunrise = @SalaahDate + '06:28'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180313'
SET @FajrAd = @SalaahDate + '04:41'
SET @Sunrise = @SalaahDate + '06:26'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180314'
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @AsrAd = @SalaahDate + '15:26'
SET @MaghAd = @SalaahDate + '18:13'
SET @IshAd = @SalaahDate + '19:46'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180315'
SET @FajrAd = @SalaahDate + '04:36'
SET @Sunrise = @SalaahDate + '06:21'
SET @ZuhrAd = @SalaahDate + '12:28'
SET @AsrAd = @SalaahDate + '15:28'
SET @MaghAd = @SalaahDate + '18:15'
SET @IshAd = @SalaahDate + '19:48'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180316'
SET @FajrAd = @SalaahDate + '04:34'
SET @Sunrise = @SalaahDate + '06:19'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:17'
SET @IshAd = @SalaahDate + '19:50'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180317'
SET @FajrAd = @SalaahDate + '04:31'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:16'
SET @AsrAd = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '18:18'
SET @IshAd = @SalaahDate + '19:52'
SET @IshIq = @SalaahDate + '20:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180318'
SET @FajrAd = @SalaahDate + '04:29'
SET @Sunrise = @SalaahDate + '06:14'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:20'
SET @IshAd = @SalaahDate + '19:54'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180319'
SET @FajrAd = @SalaahDate + '04:26'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:22'
SET @IshAd = @SalaahDate + '19:56'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180320'
SET @FajrAd = @SalaahDate + '04:24'
SET @Sunrise = @SalaahDate + '06:09'
SET @AsrAd = @SalaahDate + '15:33'
SET @MaghAd = @SalaahDate + '18:24'
SET @IshAd = @SalaahDate + '19:58'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180321'
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @AsrAd = @SalaahDate + '15:35'
SET @MaghAd = @SalaahDate + '18:26'
SET @IshAd = @SalaahDate + '20:01'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180322'
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:28'
SET @IshAd = @SalaahDate + '20:03'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180323'
SET @FajrAd = @SalaahDate + '04:17'
SET @Sunrise = @SalaahDate + '06:02'
SET @AsrAd = @SalaahDate + '15:37'
SET @MaghAd = @SalaahDate + '18:30'
SET @IshAd = @SalaahDate + '20:05'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180324'
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:31'
SET @IshAd = @SalaahDate + '20:07'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180325'
SET @FajrAd = @SalaahDate + '05:12'
SET @FajrIq = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '06:57'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrAd = @SalaahDate + '16:39'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:33'
SET @IshAd = @SalaahDate + '21:09'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180326'
SET @FajrAd = @SalaahDate + '05:09'
SET @Sunrise = @SalaahDate + '06:54'
SET @AsrAd = @SalaahDate + '16:40'
SET @MaghAd = @SalaahDate + '19:35'
SET @IshAd = @SalaahDate + '21:11'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180327'
SET @FajrAd = @SalaahDate + '05:07'
SET @Sunrise = @SalaahDate + '06:52'
SET @AsrAd = @SalaahDate + '16:41'
SET @MaghAd = @SalaahDate + '19:37'
SET @IshAd = @SalaahDate + '21:14'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180328'
SET @FajrAd = @SalaahDate + '05:04'
SET @Sunrise = @SalaahDate + '06:49'
SET @AsrAd = @SalaahDate + '16:42'
SET @MaghAd = @SalaahDate + '19:39'
SET @IshAd = @SalaahDate + '21:16'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180329'
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '16:43'
SET @MaghAd = @SalaahDate + '19:41'
SET @IshAd = @SalaahDate + '21:18'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180330'
SET @FajrAd = @SalaahDate + '04:59'
SET @Sunrise = @SalaahDate + '06:44'
SET @AsrAd = @SalaahDate + '16:44'
SET @MaghAd = @SalaahDate + '19:43'
SET @IshAd = @SalaahDate + '21:20'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180331'
SET @FajrAd = @SalaahDate + '04:57'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:42'
SET @AsrAd = @SalaahDate + '16:45'
SET @MaghAd = @SalaahDate + '19:44'
SET @IshAd = @SalaahDate + '21:21'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)