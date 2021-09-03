BEGIN TRANSACTION

DECLARE @FirstDate DATETIME = '20211001'

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

DECLARE @JummahKhutbahTime varchar(10) = '13:30'
DECLARE @JummahSalaahTime varchar(10) = '14:00'

DECLARE @FajrIqamahTime varchar(10) = '06:00'
DECLARE @ZuhrIqamahTime varchar(10) = '13:45'
DECLARE @AsrIaqmahTime varchar(10) = '16:45'
DECLARE @IshaIqamahTime varchar(10) = '20:45'

DECLARE @SalaahDate DATETIME = '20211001'
DECLARE @HijriDay INT = 24
DECLARE @HijriMonth INT = 2
DECLARE @HijriYr INT = 1443
DECLARE @FajrIq DATETIME = @SalaahDate + @FajrIqamahTime
DECLARE @ZuhrIq DATETIME = @SalaahDate + @ZuhrIqamahTime
DECLARE @AsrIq DATETIME = @SalaahDate + @AsrIaqmahTime
DECLARE @IshIq DATETIME = @SalaahDate + @IshaIqamahTime
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:15'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:30'
SET @IshaIqamahTime = '20:45'

SET @SalaahDate = '20211002'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211003'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211004'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211005'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211006'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211007'
SET @HijriDay = 1
SET @HijriMonth = 3
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211008'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:15'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:15'
SET @IshaIqamahTime = '20:30'

SET @SalaahDate = '20211009'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211010'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211011'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211012'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211013'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211014'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211015'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:30'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '16:00'
SET @IshaIqamahTime = '20:15'

SET @SalaahDate = '20211016'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211017'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211018'
SET @HijriDay = 1
SET @HijriMonth = 3
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211019'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211020'
SET @HijriDay = 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211021'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211022'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:45'
SET @ZuhrIqamahTime = '13:45'
SET @AsrIaqmahTime  = '15:45'
SET @IshaIqamahTime = '20:00'

SET @SalaahDate = '20211023'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211024'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211025'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211026'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211027'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211028'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20211029'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20211030'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @FajrIqamahTime = '06:00'
SET @ZuhrIqamahTime = '12:45'
SET @AsrIaqmahTime  = '14:45'
SET @IshaIqamahTime = '19:00'

SET @SalaahDate = '20211031'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SELECT * FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

COMMIT TRANSACTION