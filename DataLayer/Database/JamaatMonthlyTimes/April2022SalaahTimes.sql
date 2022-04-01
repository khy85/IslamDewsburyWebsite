BEGIN TRANSACTION

DECLARE @FirstDate DATETIME = '20220401'

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

DECLARE @JummahKhutbahTime varchar(10) = '13:25'
DECLARE @JummahSalaahTime varchar(10) = '13:45'

DECLARE @FajrIqamahTime varchar(10) = '05:30'
DECLARE @ZuhrIqamahTime varchar(10) = '13:45'
DECLARE @AsrIaqmahTime varchar(10) = '17:15'
DECLARE @IshaIqamahTime varchar(10) = '21:45'

DECLARE @SalaahDate DATETIME = '20220401'
DECLARE @HijriDay INT = 30
DECLARE @HijriMonth INT = 8
DECLARE @HijriYr INT = 1443
DECLARE @FajrIq DATETIME = @SalaahDate + @FajrIqamahTime
DECLARE @ZuhrIq DATETIME = @SalaahDate + @ZuhrIqamahTime
DECLARE @AsrIq DATETIME = @SalaahDate + @AsrIaqmahTime
DECLARE @IshIq DATETIME = @SalaahDate + @IshaIqamahTime
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '17:30'
SET @IshaIqamahTime  = '21:45'

SET @SalaahDate = '20220402'
SET @HijriDay = 1
SET @HijriMonth = 9
SET @FajrIq = @SalaahDate + '05:12'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220403'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '05:10'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220404'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '05:07'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220405'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '05:05'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220406'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '05:02'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220407'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '05:00'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220408'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:58'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '17:30'
SET @IshaIqamahTime  = '22:00'

SET @SalaahDate = '20220409'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:55'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220410'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:53'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220411'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:50'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220412'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:48'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220413'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:46'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220414'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:43'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220415'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:41'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '17:30'
SET @IshaIqamahTime  = '22:00'

SET @SalaahDate = '20220416'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:39'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220417'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:36'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220418'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:34'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220419'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:32'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220420'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:30'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220421'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:27'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220422'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:25'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '17:45'
SET @IshaIqamahTime  = '22:15'

SET @SalaahDate = '20220423'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:23'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220424'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:21'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220425'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:19'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220426'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:16'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220427'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:14'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220428'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:12'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20220429'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:10'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @ZuhrIqamahTime  = '13:45'
SET @AsrIaqmahTime   = '17:45'
SET @IshaIqamahTime  = '22:15'

SET @SalaahDate = '20220430'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + '04:08'
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SELECT * FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate order by SalaahDate

COMMIT TRANSACTION