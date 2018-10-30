DECLARE @SalaahDate DATETIME = '20180201'
DECLARE @FajrAd DATETIME = @SalaahDate + '06:07'
DECLARE @FajrIq DATETIME = @SalaahDate + '06:45'
DECLARE @Sunrise DATETIME = @SalaahDate + '07:52'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:25'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '14:26'
DECLARE @AsrIq DATETIME = @SalaahDate + '15:00'
DECLARE @MaghAd DATETIME = @SalaahDate + '16:53'
DECLARE @IshAd DATETIME = @SalaahDate + '18:30'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180202'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:28'
SET @MaghAd = @SalaahDate + '16:55'
SET @IshAd = @SalaahDate + '18:32'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180203'
SET @FajrAd = @SalaahDate + '06:04'
SET @FajrIq = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '07:49'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:29'
SET @AsrIq = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '16:57'
SET @IshAd = @SalaahDate + '18:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180204'
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:31'
SET @MaghAd = @SalaahDate + '16:59'
SET @IshAd = @SalaahDate + '18:35'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180205'
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:32'
SET @MaghAd = @SalaahDate + '17:01'
SET @IshAd = @SalaahDate + '18:37'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180206'
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:34'
SET @MaghAd = @SalaahDate + '17:03'
SET @IshAd = @SalaahDate + '18:39'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180207'
SET @FajrAd = @SalaahDate + '05:56'
SET @Sunrise = @SalaahDate + '07:41'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:35'
SET @MaghAd = @SalaahDate + '17:05'
SET @IshAd = @SalaahDate + '18:40'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180208'
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:37'
SET @MaghAd = @SalaahDate + '17:07'
SET @IshAd = @SalaahDate + '18:42'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180209'
SET @FajrAd = @SalaahDate + '05:53'
SET @Sunrise = @SalaahDate + '07:38'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:38'
SET @MaghAd = @SalaahDate + '17:09'
SET @IshAd = @SalaahDate + '18:44'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180210'
SET @FajrAd = @SalaahDate + '05:51'
SET @FajrIq = @SalaahDate + '06:15'
SET @Sunrise = @SalaahDate + '07:36'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:40'
SET @AsrIq = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '17:11'
SET @IshAd = @SalaahDate + '18:46'
SET @IshIq = @SalaahDate + '19:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180211'
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:42'
SET @MaghAd = @SalaahDate + '17:13'
SET @IshAd = @SalaahDate + '18:47'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180212'
SET @FajrAd = @SalaahDate + '05:47'
SET @Sunrise = @SalaahDate + '07:32'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:43'
SET @MaghAd = @SalaahDate + '17:15'
SET @IshAd = @SalaahDate + '18:49'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180213'
SET @FajrAd = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:30'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '18:51'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180214'
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:46'
SET @MaghAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '18:53'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180215'
SET @FajrAd = @SalaahDate + '05:41'
SET @Sunrise = @SalaahDate + '07:26'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:48'
SET @MaghAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '18:55'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180216'
SET @FajrAd = @SalaahDate + '05:38'
SET @Sunrise = @SalaahDate + '07:23'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:49'
SET @MaghAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '18:56'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180217'
SET @FajrAd = @SalaahDate + '05:36'
SET @FajrIq = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:21'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:51'
SET @MaghAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '18:58'
SET @IshIq = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180218'
SET @FajrAd = @SalaahDate + '05:34'
SET @Sunrise = @SalaahDate + '07:19'
SET @AsrAd = @SalaahDate + '14:52'
SET @MaghAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '19:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180219'
SET @FajrAd = @SalaahDate + '05:32'
SET @Sunrise = @SalaahDate + '07:17'
SET @AsrAd = @SalaahDate + '14:54'
SET @MaghAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '19:02'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180220'
SET @FajrAd = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '07:15'
SET @AsrAd = @SalaahDate + '14:55'
SET @MaghAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '19:04'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180221'
SET @FajrAd = @SalaahDate + '05:28'
SET @Sunrise = @SalaahDate + '07:13'
SET @AsrAd = @SalaahDate + '14:57'
SET @MaghAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '19:05'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180222'
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @AsrAd = @SalaahDate + '14:58'
SET @MaghAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '19:07'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180223'
SET @FajrAd = @SalaahDate + '05:23'
SET @Sunrise = @SalaahDate + '07:08'
SET @AsrAd = @SalaahDate + '15:00'
SET @MaghAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '19:09'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180224'
SET @FajrAd = @SalaahDate + '05:21'
SET @FajrIq = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:06'
SET @AsrAd = @SalaahDate + '15:01'
SET @AsrIq = @SalaahDate + '15:45'
SET @MaghAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '19:11'
SET @IshIq = @SalaahDate + '19:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180225'
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '15:03'
SET @MaghAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '19:13'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180226'
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:04'
SET @MaghAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '19:15'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180227'
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @AsrAd = @SalaahDate + '15:05'
SET @MaghAd = @SalaahDate + '17:44'
SET @IshAd = @SalaahDate + '19:17'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20180228'
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @AsrAd = @SalaahDate + '15:07'
SET @MaghAd = @SalaahDate + '17:46'
SET @IshAd = @SalaahDate + '19:19'
INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

Select * from SalaahTimes