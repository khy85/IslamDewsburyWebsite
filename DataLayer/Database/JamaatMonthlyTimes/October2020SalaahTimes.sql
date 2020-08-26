BEGIN TRANSACTION

DECLARE @FirstDate DATETIME = '20201001'

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

DECLARE @JummahKhutbahTime varchar(10) = '13:30'
DECLARE @JummahSalaahTime varchar(10) = '14:00'

DECLARE @FajrIqamahTime varchar(10) = '06:00'
DECLARE @ZuhrIqamahTime varchar(10) = '13:45'
DECLARE @AsrIaqmahTime varchar(10) = '16:45'
DECLARE @IshaIqamahTime varchar(10) = '20:45'

DECLARE @SalaahDate DATETIME = '20201001'
DECLARE @HijriDay INT = 14
DECLARE @HijriMonth INT = 2
DECLARE @HijriYr INT = 1442
DECLARE @FajrIq DATETIME = @SalaahDate + @FajrIqamahTime
DECLARE @ZuhrIq DATETIME = @SalaahDate + @ZuhrIqamahTime
DECLARE @AsrIq DATETIME = @SalaahDate + @AsrIaqmahTime
DECLARE @IshIq DATETIME = @SalaahDate + @IshaIqamahTime
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201002'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:15'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:30'
SET @IshaIqamahTime = '20:30'

SET @SalaahDate = '20201003'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201004'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201005'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201006'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201007'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201008'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201009'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:30'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:15'
SET @IshaIqamahTime = '20:15'

SET @SalaahDate = '20201010'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201011'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201012'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201013'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201014'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201015'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201016'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:45'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:00'
SET @IshaIqamahTime = '20:00'

SET @SalaahDate = '20201017'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201018'
SET @HijriDay = 1
SET @HijriMonth = 3
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201019'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201020'
SET @HijriDay = 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201021'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201022'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201023'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:45'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '15:45'
SET @IshaIqamahTime = '20:00'

SET @SalaahDate = '20201024'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201025'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @FajrIqamahTime = '06:00'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:45'
SET @IshaIqamahTime = '20:45'

SET @SalaahDate = '20201026'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201027'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201028'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20201029'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20201030'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '05:45'
SET @ZuhrIqamahTime = '12:45'
SET @AsrIaqmahTime  = '13:45'
SET @IshaIqamahTime = '19:00'

SET @SalaahDate = '20201031'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SELECT * FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

commit TRANSACTION