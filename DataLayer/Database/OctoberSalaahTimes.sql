DECLARE @SalaahDate DATETIME = '20171014'
DECLARE @FajrAd DATETIME = @SalaahDate + '05:47'
DECLARE @FajrIq DATETIME = @SalaahDate + '06:30'
DECLARE @Sunrise DATETIME = @SalaahDate + '07:32'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:57'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '15:39'
DECLARE @AsrIq DATETIME = @SalaahDate + '16:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '18:16'
DECLARE @IshAd DATETIME = @SalaahDate + '19:48'
DECLARE @IshIq DATETIME = @SalaahDate + '20:15'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171015'
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:14'
SET @IshAd = @SalaahDate + '19:46'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171016'
SET @FajrAd = @SalaahDate + '05:51'
SET @Sunrise = @SalaahDate + '07:36'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171017'
SET @FajrAd = @SalaahDate + '05:53'
SET @Sunrise = @SalaahDate + '07:38'
SET @AsrAd = @SalaahDate + '15:34'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171018'
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:39'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171019'
SET @FajrAd = @SalaahDate + '05:57'
SET @Sunrise = @SalaahDate + '07:42'
SET @ZuhrAd = @SalaahDate + '12:56'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:04'
SET @IshAd = @SalaahDate + '19:37'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171020'
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:35'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171021'
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @AsrAd = @SalaahDate + '15:27'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:33'
SET @FajrIq = @SalaahDate + '06:45'
SET @AsrIq = @SalaahDate + '16:00'
SET @IshIq = @SalaahDate + '20:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171022'
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:31'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171023'
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:29'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171024'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @AsrAd = @SalaahDate + '15:22'
SET @MaghAd = @SalaahDate + '17:53'
SET @IshAd = @SalaahDate + '19:27'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171025'
SET @FajrAd = @SalaahDate + '06:08'
SET @Sunrise = @SalaahDate + '07:53'
SET @AsrAd = @SalaahDate + '15:20'
SET @MaghAd = @SalaahDate + '17:51'
SET @IshAd = @SalaahDate + '19:25'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171026'
SET @FajrAd = @SalaahDate + '06:10'
SET @Sunrise = @SalaahDate + '07:55'
SET @ZuhrAd = @SalaahDate + '12:55'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '17:49'
SET @IshAd = @SalaahDate + '19:23'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171027'
SET @FajrAd = @SalaahDate + '06:12'
SET @Sunrise = @SalaahDate + '07:57'
SET @AsrAd = @SalaahDate + '15:17'
SET @MaghAd = @SalaahDate + '17:47'
SET @IshAd = @SalaahDate + '19:21'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171028'
SET @FajrAd = @SalaahDate + '06:14'
SET @Sunrise = @SalaahDate + '07:59'
SET @AsrAd = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '17:45'
SET @IshAd = @SalaahDate + '19:19'
SET @AsrIq = @SalaahDate + '15:45'
SET @IshIq = @SalaahDate + '20:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171029'
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:14'
SET @MaghAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '18:17'
SET @FajrIq = @SalaahDate + '05:45'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrIq = @SalaahDate + '14:45'
SET @IshIq = @SalaahDate + '19:00'

INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171030'
SET @FajrAd = @SalaahDate + '05:18'
SET @Sunrise = @SalaahDate + '07:03'
SET @AsrAd = @SalaahDate + '14:12'
SET @MaghAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '18:16'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20171031'
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '14:11'
SET @MaghAd = @SalaahDate + '16:39'
SET @IshAd = @SalaahDate + '18:14'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

Select * from SalaahTimes