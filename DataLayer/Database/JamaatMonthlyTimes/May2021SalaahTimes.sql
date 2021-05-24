BEGIN TRANSACTION

DECLARE @FirstDate DATETIME = '20210525'

DELETE FROM SalaahJamaatTimes WHERE SalaahDate >= @FirstDate

DECLARE @JummahKhutbahTime varchar(10) = '13:30'
DECLARE @JummahSalaahTime varchar(10) = '14:00'

DECLARE @FajrIqamahTime varchar(10) = '03:45'
DECLARE @ZuhrIqamahTime varchar(10) = '13:45'
DECLARE @AsrIaqmahTime varchar(10) = '18:00'
DECLARE @IshaIqamahTime varchar(10) = '22:40'

DECLARE @SalaahDate DATETIME = '20210525'
DECLARE @HijriDay INT = 13
DECLARE @HijriMonth INT = 10
DECLARE @HijriYr INT = 1442
DECLARE @FajrIq DATETIME = @SalaahDate + @FajrIqamahTime
DECLARE @ZuhrIq DATETIME = @SalaahDate + @ZuhrIqamahTime
DECLARE @AsrIq DATETIME = @SalaahDate + @AsrIaqmahTime
DECLARE @IshIq DATETIME = @SalaahDate + @IshaIqamahTime
DECLARE @JumAd DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
DECLARE @JumIq DATETIME = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210526'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210527'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210528'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210529'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @IshaIqamahTime  = '22:45'

SET @SalaahDate = '20210530'
SET @HijriDay = @HijriDay + 1
SET @FajrIq = @SalaahDate + @FajrIqamahTime
SET @ZuhrIq = @SalaahDate + @ZuhrIqamahTime
SET @AsrIq  = @SalaahDate + @AsrIaqmahTime
SET @IshIq  = @SalaahDate + @IshaIqamahTime
SET @JumAd = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahKhutbahTime else null end)
SET @JumIq = (case when datename(dw,@SalaahDate) = 'Friday' then @SalaahDate + @JummahSalaahTime else null end)
INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrIq, @ZuhrIq, @AsrIq, @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20210531'
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