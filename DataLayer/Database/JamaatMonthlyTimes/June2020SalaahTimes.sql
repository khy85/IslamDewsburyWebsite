BEGIN TRANSACTION

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= '20200601'

DECLARE @JummahKhutbahTime varchar(10) = '13:30'
DECLARE @JummahSalaahTime varchar(10) = '14:00'

DECLARE @SalaahDate DATETIME = '20200601'
DECLARE @HijriDay INT = 9
DECLARE @HijriMonth INT = 10
DECLARE @HijriYr INT = 1441
DECLARE @FajrIq DATETIME = NULL -- @SalaahDate + '03:45'
DECLARE @ZuhrIq DATETIME = NULL -- @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = NULL -- @SalaahDate + '18:00'
DECLARE @IshIq DATETIME = NULL -- @SalaahDate + '22:45'
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200602'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200603'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200604'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200605'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20200606'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20200607'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200608'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200609'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200610'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200611'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200612'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200613'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200614'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20200615'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200616'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200617'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200618'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200619'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200620'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200621'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200622'
SET @HijriDay = 1
SET @HijriMonth = 11
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200623'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200624'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200625'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200626'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200627'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200628'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200629'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200630'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = NULL --@SalaahDate + '03:45'
SET @ZuhrIq = NULL --@SalaahDate + '13:45'
SET @AsrIq = NULL --@SalaahDate + '18:00'
SET @IshIq = NULL --@SalaahDate + '22:45'
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SELECT * FROM SalaahJamaatTimes

COMMIT TRANSACTION