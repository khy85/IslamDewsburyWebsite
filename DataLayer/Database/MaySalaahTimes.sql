DECLARE @SalaahDate DATETIME = '20180501'
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

SET @SalaahDate = '20180502'
SET @FajrAd = @SalaahDate + '03:44'
SET @Sunrise = @SalaahDate + '05:29'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:43'
SET @IshAd = @SalaahDate + '21:54'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20180503'
SET @FajrAd = @SalaahDate + '03:42'
SET @Sunrise = @SalaahDate + '05:27'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '20:45'
SET @IshAd = @SalaahDate + '21:56'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180504'
SET @FajrAd = @SalaahDate + '03:40'
SET @Sunrise = @SalaahDate + '05:25'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:16'
SET @MaghAd = @SalaahDate + '20:47'
SET @IshAd = @SalaahDate + '21:57'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180505'
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:49'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180506'
SET @FajrAd = @SalaahDate + '03:36'
SET @Sunrise = @SalaahDate + '05:21'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:50'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180507'
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:52'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180508'
SET @FajrAd = @SalaahDate + '03:32'
SET @Sunrise = @SalaahDate + '05:17'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:02'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:54'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180509'
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:03'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:56'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180510'
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '22:04'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:57'
SET @IshIq = @SalaahDate + '22:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180511'
SET @FajrAd = @SalaahDate + '03:27'
SET @Sunrise = @SalaahDate + '05:12'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:06'
SET @FajrIq = @SalaahDate + '04:15'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:59'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180512'
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:07'
SET @FajrIq = @SalaahDate + '04:00'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:01'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180513'
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:08'
SET @FajrIq = @SalaahDate + '04:00'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:03'
SET @IshIq = @SalaahDate + '22:30'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180514'
SET @FajrAd = @SalaahDate + '03:21'
SET @Sunrise = @SalaahDate + '05:06'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:09'
SET @FajrIq = @SalaahDate + '04:00'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:04'
SET @IshIq = @SalaahDate + '22:30'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180515'
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '04:00'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:06'
SET @IshIq = @SalaahDate + '22:30'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)