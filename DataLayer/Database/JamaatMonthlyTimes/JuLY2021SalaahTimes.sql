BEGIN TRANSACTION

DECLARE @FirstDate DATETIME = '20210701'

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

DECLARE @JummahKhutbahTime varchar(10) = '13:30'
DECLARE @JummahSalaahTime varchar(10) = '14:00'

DECLARE @FajrIqamahTime varchar(10) = '03:45'
DECLARE @ZuhrIqamahTime varchar(10) = '13:45'
DECLARE @AsrIaqmahTime varchar(10) = '18:15'
DECLARE @IshaIqamahTime varchar(10) = '22:55'

DECLARE @SalaahDate DATETIME = '20210701'
DECLARE @HijriDay INT = 21
DECLARE @HijriMonth INT = 11
DECLARE @HijriYr INT = 1442
DECLARE @FajrIq DATETIME = @SalaahDate + @FajrIqamahTime
DECLARE @ZuhrIq DATETIME = @SalaahDate + @ZuhrIqamahTime
DECLARE @AsrIq DATETIME = @SalaahDate + @AsrIaqmahTime
DECLARE @IshIq DATETIME = @SalaahDate + @IshaIqamahTime
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210702'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime  = '03:45'
SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '18:15'
SET @IshaIqamahTime  = '22:50'

SET @SalaahDate = '20210703'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210704'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210705'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210706'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210707'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210708'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210709'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime  = '03:45'
SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '18:15'
SET @IshaIqamahTime  = '22:45'

SET @SalaahDate = '20210710'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210711'
SET @HijriDay = 1
SET @HijriMonth = 12
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210712'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210713'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210714'
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210715'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210716'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime  = '04:00'
SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '18:15'
SET @IshaIqamahTime  = '22:35'

SET @SalaahDate = '20210717'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210718'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210719'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210720'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210721'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210722'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210723'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime  = '04:15'
SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '18:15'
SET @IshaIqamahTime  = '22:30'

SET @SalaahDate = '20210724'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210725'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210726'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210727'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210728'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210729'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210730'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime  = '04:00'
SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '18:15'
SET @IshaIqamahTime  = '22:30'

SET @SalaahDate = '20210731'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SELECT * FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate order by SalaahDate

COMMIT TRANSACTION