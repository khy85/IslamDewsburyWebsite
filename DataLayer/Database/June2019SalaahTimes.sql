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
