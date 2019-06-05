DECLARE @SalaahDate DATETIME = '20190601'
DECLARE @HijriDay INT = 27
DECLARE @HijriMonth INT = 8
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '02:58'
DECLARE @Sunrise DATETIME = @SalaahDate + '04:43'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '13:09'
DECLARE @AsrAd DATETIME = @SalaahDate + '17:33'
DECLARE @IshAd DATETIME = @SalaahDate + '22:29'
DECLARE @FajrIq DATETIME = @SalaahDate + '03:18'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '18:00'
DECLARE @MaghAd DATETIME = @SalaahDate + '21:31'
DECLARE @IshIq DATETIME = @SalaahDate + '22:45'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190602'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:57'
SET @Sunrise = @SalaahDate + '04:42'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:17'
SET @MaghAd = @SalaahDate + '21:32'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190603'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:56'
SET @Sunrise = @SalaahDate + '04:41'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:16'
SET @MaghAd = @SalaahDate + '21:33'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190604'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:31'
SET @FajrIq = @SalaahDate + '03:15'
SET @MaghAd = @SalaahDate + '21:34'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190605'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:32'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:35'
SET @IshIq = @SalaahDate + '22:45'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190606'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:54'
SET @Sunrise = @SalaahDate + '04:39'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:33'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:36'
SET @IshIq = @SalaahDate + '22:45'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190607'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:33'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:37'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190608'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:35'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:38'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190609'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:36'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:39'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190610'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:37'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:40'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190611'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:38'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:40'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190612'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:39'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:41'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190613'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:40'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190614'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:41'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190615'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:42'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:43'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190616'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:43'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:43'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190617'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:44'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:44'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190618'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:44'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:44'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190619'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:44'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:44'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190620'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:50'
SET @Sunrise = @SalaahDate + '04:35'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:50'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190621'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190622'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190623'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:51'
SET @Sunrise = @SalaahDate + '04:36'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190624'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190625'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190626'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:52'
SET @Sunrise = @SalaahDate + '04:37'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190627'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190628'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:53'
SET @Sunrise = @SalaahDate + '04:38'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190629'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:54'
SET @Sunrise = @SalaahDate + '04:39'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:45'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:45'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190630'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:44'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:44'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO SalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)
