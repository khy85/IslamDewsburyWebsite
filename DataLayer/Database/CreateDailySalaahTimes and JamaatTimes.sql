/*
   Split up alaahTimes into SalaahJamaatTimes and DailySalaahTimes
*/

BEGIN TRANSACTION

IF OBJECT_ID('dbo.SalaahJamaatTimes', 'U') IS NOT NULL 
  DROP TABLE dbo.SalaahJamaatTimes; 

Create TABLE SalaahJamaatTimes
(
	Id INT IDENTITY(1,1),
	SalaahDate DATETIME NOT NULL,
	HijriDate INT NULL,
	HijriMonth INT NULL,
	HijriYear INT NULL,
	Fajr DATETIME NULL,
	Zuhr DATETIME NULL,
	Asr DATETIME NULL,
	Isha DATETIME NULL,
	JummahKhutbah DATETIME NULL,
	JummahIqamah DATETIME NULL
)

INSERT INTO SalaahJamaatTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, Fajr, Zuhr, Asr, Isha, JummahKhutbah, JummahIqamah)
	SELECT SalaahDate, HijriDate, HijriMonth, HijriYear, FajrIqamah, ZuhrIqamah, AsrIqamah, IshaIqamah, JummahKhutbah, JummahIqamah
	FROM SalaahTimes

-- Year timetable (To collapse)
begin

Create TABLE #TempYearSalaahTimes
(
	Id INT IDENTITY(1,1),
	SalaahDate DATETIME NOT NULL,
	FajrAdhan DATETIME NOT NULL,
	FajrIqamah DATETIME NOT NULL,
	Sunrise DATETIME NOT NULL,
	ZuhrAdhan DATETIME NOT NULL,
	ZuhrIqamah DATETIME NULL,
	AsrAdhan DATETIME NOT NULL,
	AsrIqamah DATETIME NOT NULL,
	MaghribAdhan DATETIME NOT NULL,
	MaghribIqamah DATETIME NOT NULL,
	IshaAdhan DATETIME NOT NULL,
	IshaIqamah DATETIME NOT NULL,
	JummahKhutbah DATETIME NULL,
	JummahIqamah DATETIME NULL,
	HijriDate INT NULL,
	HijriMonth INT NULL,
	HijriYear INT NULL
)

DECLARE @SalaahDate DATETIME = '20190101'
DECLARE @HijriDay INT = 26
DECLARE @HijriMonth INT = 5
DECLARE @HijriYr INT = 1440
DECLARE @FajrAd DATETIME = @SalaahDate + '06:39'
DECLARE @FajrIq DATETIME = @SalaahDate + '07:00'
DECLARE @Sunrise DATETIME = @SalaahDate + '08:24'
DECLARE @ZuhrAd DATETIME = @SalaahDate + '12:15'
DECLARE @ZuhrIq DATETIME = @SalaahDate + '12:45'
DECLARE @AsrAd DATETIME = @SalaahDate + '13:45'
DECLARE @AsrIq DATETIME = @SalaahDate + '14:15'
DECLARE @MaghAd DATETIME = @SalaahDate + '16:01'
DECLARE @IshAd DATETIME = @SalaahDate + '17:43'
DECLARE @IshIq DATETIME = @SalaahDate + '19:00'
DECLARE @JumAd DATETIME = NULL
DECLARE @JumIq DATETIME = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190102'
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @AsrAd = @SalaahDate + '13:46'
SET @MaghAd = @SalaahDate + '16:02'
SET @IshAd = @SalaahDate + '17:45'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190103'
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @AsrAd = @SalaahDate + '13:47'
SET @MaghAd = @SalaahDate + '16:03'
SET @IshAd = @SalaahDate + '17:48'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190104'
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:48'
SET @MaghAd = @SalaahDate + '16:04'
SET @IshAd = @SalaahDate + '17:50'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190105'
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:49'
SET @AsrIq = @SalaahDate + '14:30'
SET @MaghAd = @SalaahDate + '16:06'
SET @IshAd = @SalaahDate + '17:51'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190106'
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @AsrAd = @SalaahDate + '13:51'
SET @MaghAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '17:52'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190107'
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '13:52'
SET @MaghAd = @SalaahDate + '16:08'
SET @IshAd = @SalaahDate + '17:53'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190108'
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '13:53'
SET @MaghAd = @SalaahDate + '16:10'
SET @IshAd = @SalaahDate + '17:54'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190109'
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:54'
SET @MaghAd = @SalaahDate + '16:11'
SET @IshAd = @SalaahDate + '17:56'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190110'
SET @FajrAd = @SalaahDate + '06:35'
SET @Sunrise = @SalaahDate + '08:20'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:55'
SET @MaghAd = @SalaahDate + '16:13'
SET @IshAd = @SalaahDate + '17:57'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190111'
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '13:57'
SET @MaghAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '17:58'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190112'
SET @FajrAd = @SalaahDate + '06:33'
SET @Sunrise = @SalaahDate + '08:18'
SET @ZuhrAd = @SalaahDate + '12:20'
SET @AsrAd = @SalaahDate + '13:58'
SET @AsrIq = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '16:16'
SET @IshAd = @SalaahDate + '17:59'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190113'
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:20'
SET @AsrAd = @SalaahDate + '13:59'
SET @MaghAd = @SalaahDate + '16:17'
SET @IshAd = @SalaahDate + '18:01'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190114'
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:01'
SET @MaghAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '18:02'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190115'
SET @FajrAd = @SalaahDate + '06:31'
SET @Sunrise = @SalaahDate + '08:16'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:02'
SET @MaghAd = @SalaahDate + '16:21'
SET @IshAd = @SalaahDate + '18:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190116'
SET @FajrAd = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '08:15'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '14:03'
SET @MaghAd = @SalaahDate + '16:22'
SET @IshAd = @SalaahDate + '18:05'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190117'
SET @FajrAd = @SalaahDate + '06:29'
SET @Sunrise = @SalaahDate + '08:14'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:05'
SET @MaghAd = @SalaahDate + '16:24'
SET @IshAd = @SalaahDate + '18:06'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190118'
SET @FajrAd = @SalaahDate + '06:27'
SET @Sunrise = @SalaahDate + '08:12'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:06'
SET @MaghAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '18:08'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190119'
SET @FajrAd = @SalaahDate + '06:26'
SET @Sunrise = @SalaahDate + '08:11'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '14:08'
SET @MaghAd = @SalaahDate + '16:28'
SET @IshAd = @SalaahDate + '18:09'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190120'
SET @FajrAd = @SalaahDate + '06:25'
SET @Sunrise = @SalaahDate + '08:10'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:09'
SET @MaghAd = @SalaahDate + '16:30'
SET @IshAd = @SalaahDate + '18:11'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190121'
SET @FajrAd = @SalaahDate + '06:24'
SET @Sunrise = @SalaahDate + '08:09'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:10'
SET @MaghAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '18:12'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190122'
SET @FajrAd = @SalaahDate + '06:23'
SET @Sunrise = @SalaahDate + '08:08'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:12'
SET @MaghAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '18:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190123'
SET @FajrAd = @SalaahDate + '06:21'
SET @Sunrise = @SalaahDate + '08:06'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '14:13'
SET @MaghAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '18:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190124'
SET @FajrAd = @SalaahDate + '06:20'
SET @Sunrise = @SalaahDate + '08:05'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:15'
SET @MaghAd = @SalaahDate + '16:37'
SET @IshAd = @SalaahDate + '18:17'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190125'
SET @FajrAd = @SalaahDate + '06:18'
SET @Sunrise = @SalaahDate + '08:03'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:16'
SET @MaghAd = @SalaahDate + '16:39'
SET @IshAd = @SalaahDate + '18:19'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190126'
SET @FajrAd = @SalaahDate + '06:17'
SET @FajrIq = @SalaahDate + '06:45'
SET @Sunrise = @SalaahDate + '08:02'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:18'
SET @AsrIq = @SalaahDate + '15:00'
SET @MaghAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '18:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190127'
SET @FajrAd = @SalaahDate + '06:15'
SET @Sunrise = @SalaahDate + '08:00'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:20'
SET @MaghAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '18:22'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190128'
SET @FajrAd = @SalaahDate + '06:14'
SET @Sunrise = @SalaahDate + '07:59'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '14:21'
SET @MaghAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '18:23'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190129'
SET @FajrAd = @SalaahDate + '06:12'
SET @Sunrise = @SalaahDate + '07:57'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:23'
SET @MaghAd = @SalaahDate + '16:47'
SET @IshAd = @SalaahDate + '18:25'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190130'
SET @FajrAd = @SalaahDate + '06:11'
SET @Sunrise = @SalaahDate + '07:56'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:24'
SET @MaghAd = @SalaahDate + '16:49'
SET @IshAd = @SalaahDate + '18:27'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190131'
SET @FajrAd = @SalaahDate + '06:09'
SET @Sunrise = @SalaahDate + '07:54'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:26'
SET @MaghAd = @SalaahDate + '16:51'
SET @IshAd = @SalaahDate + '18:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190201'
SET @HijriDay = 26
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:07'
SET @FajrIq = @SalaahDate + '06:45'
SET @Sunrise = @SalaahDate + '07:52'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrAd = @SalaahDate + '14:26'
SET @AsrIq = @SalaahDate + '15:00'
SET @MaghAd = @SalaahDate + '16:53'
SET @IshAd = @SalaahDate + '18:30'
SET @IshIq = @SalaahDate + '19:00'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) 
VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190202'
SET @HijriDay = 27
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:06'
SET @FajrIq = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '07:51'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:28'
SET @AsrIq = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '16:55'
SET @IshAd = @SalaahDate + '18:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190203'
SET @HijriDay = 28
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:29'
SET @MaghAd = @SalaahDate + '16:57'
SET @IshAd = @SalaahDate + '18:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190204'
SET @HijriDay = 29
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:31'
SET @MaghAd = @SalaahDate + '16:59'
SET @IshAd = @SalaahDate + '18:35'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190205'
SET @HijriDay = 30
SET @HijriMonth = 5
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:32'
SET @MaghAd = @SalaahDate + '17:01'
SET @IshAd = @SalaahDate + '18:37'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190206'
SET @HijriDay = 1
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:34'
SET @MaghAd = @SalaahDate + '17:03'
SET @IshAd = @SalaahDate + '18:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190207'
SET @HijriDay = 2
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:56'
SET @Sunrise = @SalaahDate + '07:41'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:35'
SET @MaghAd = @SalaahDate + '17:05'
SET @IshAd = @SalaahDate + '18:40'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190208'
SET @HijriDay = 3
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:37'
SET @MaghAd = @SalaahDate + '17:07'
SET @IshAd = @SalaahDate + '18:42'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190209'
SET @HijriDay = 4
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:53'
SET @FajrIq = @SalaahDate + '06:15'
SET @Sunrise = @SalaahDate + '07:38'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:38'
SET @AsrIq = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '17:09'
SET @IshAd = @SalaahDate + '18:44'
SET @IshIq = @SalaahDate + '19:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190210'
SET @HijriDay = 5
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:51'
SET @Sunrise = @SalaahDate + '07:36'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:40'
SET @MaghAd = @SalaahDate + '17:11'
SET @IshAd = @SalaahDate + '18:46'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190211'
SET @HijriDay = 6
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:42'
SET @MaghAd = @SalaahDate + '17:13'
SET @IshAd = @SalaahDate + '18:47'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190212'
SET @HijriDay = 7
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:47'
SET @Sunrise = @SalaahDate + '07:32'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:43'
SET @MaghAd = @SalaahDate + '17:15'
SET @IshAd = @SalaahDate + '18:49'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190213'
SET @HijriDay = 8
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:30'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:45'
SET @MaghAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '18:51'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190214'
SET @HijriDay = 9
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:46'
SET @MaghAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '18:53'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190215'
SET @HijriDay = 10
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:41'
SET @Sunrise = @SalaahDate + '07:26'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:48'
SET @MaghAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '18:55'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190216'
SET @HijriDay = 11
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:38'
SET @FajrIq = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:23'
SET @ZuhrAd = @SalaahDate + '12:26'
SET @AsrAd = @SalaahDate + '14:49'
SET @MaghAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '18:56'
SET @IshIq = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190217'
SET @HijriDay = 12
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:36'
SET @Sunrise = @SalaahDate + '07:21'
SET @ZuhrAd = @SalaahDate + '12:25'
SET @AsrAd = @SalaahDate + '14:51'
SET @MaghAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '18:58'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190218'
SET @HijriDay = 13
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:34'
SET @Sunrise = @SalaahDate + '07:19'
SET @AsrAd = @SalaahDate + '14:52'
SET @MaghAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '19:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190219'
SET @HijriDay = 14
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:32'
SET @Sunrise = @SalaahDate + '07:17'
SET @AsrAd = @SalaahDate + '14:54'
SET @MaghAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '19:02'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190220'
SET @HijriDay = 15
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '07:15'
SET @AsrAd = @SalaahDate + '14:55'
SET @MaghAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '19:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190221'
SET @HijriDay = 16
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:28'
SET @Sunrise = @SalaahDate + '07:13'
SET @AsrAd = @SalaahDate + '14:57'
SET @MaghAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '19:05'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190222'
SET @HijriDay = 17
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @AsrAd = @SalaahDate + '14:58'
SET @MaghAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '19:07'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190223'
SET @HijriDay = 18
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:23'
SET @FajrIq = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:08'
SET @AsrAd = @SalaahDate + '15:00'
SET @AsrIq = @SalaahDate + '15:45'
SET @MaghAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '19:09'
SET @IshIq = @SalaahDate + '19:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190224'
SET @HijriDay = 19
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:21'
SET @Sunrise = @SalaahDate + '07:06'
SET @AsrAd = @SalaahDate + '15:01'
SET @MaghAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '19:11'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190225'
SET @HijriDay = 20
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '15:03'
SET @MaghAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '19:13'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190226'
SET @HijriDay = 21
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:04'
SET @MaghAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '19:15'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190227'
SET @HijriDay = 22
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @AsrAd = @SalaahDate + '15:05'
SET @MaghAd = @SalaahDate + '17:44'
SET @IshAd = @SalaahDate + '19:17'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190228'
SET @HijriDay = 23
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @AsrAd = @SalaahDate + '15:07'
SET @MaghAd = @SalaahDate + '17:46'
SET @IshAd = @SalaahDate + '19:19'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20200229'
SET @HijriDay = 23
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @AsrAd = @SalaahDate + '15:07'
SET @MaghAd = @SalaahDate + '17:46'
SET @IshAd = @SalaahDate + '19:19'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190301'
SET @HijriDay  = 24
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:09'
SET @FajrIq = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '06:54'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrAd = @SalaahDate + '15:10'
SET @AsrIq = @SalaahDate + '15:45'
SET @MaghAd = @SalaahDate + '17:48'
SET @IshAd = @SalaahDate + '19:21'
SET @IshIq = @SalaahDate + '19:45'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190302'
SET @HijriDay = 25
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:07'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:52'
SET @ZuhrAd = @SalaahDate + '12:24'
SET @AsrAd = @SalaahDate + '15:11'
SET @AsrIq = @SalaahDate + '16:00'
SET @MaghAd = @SalaahDate + '17:50'
SET @IshAd = @SalaahDate + '19:22'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190303'
SET @HijriDay = 26
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:05'
SET @Sunrise = @SalaahDate + '06:50'
SET @ZuhrAd = @SalaahDate + '12:23'
SET @AsrAd = @SalaahDate + '15:12'
SET @MaghAd = @SalaahDate + '17:52'
SET @IshAd = @SalaahDate + '19:24'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190304'
SET @HijriDay = 27
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @AsrAd = @SalaahDate + '15:14'
SET @MaghAd = @SalaahDate + '17:54'
SET @IshAd = @SalaahDate + '19:26'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190305'
SET @HijriDay = 28
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:45'
SET @AsrAd = @SalaahDate + '15:15'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190306'
SET @HijriDay = 29
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:58'
SET @Sunrise = @SalaahDate + '06:43'
SET @AsrAd = @SalaahDate + '15:16'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190307'
SET @HijriDay = 30
SET @HijriMonth = 6
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:55'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '15:18'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190308'
SET @HijriDay = 1
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:53'
SET @Sunrise = @SalaahDate + '06:38'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:34'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190309'
SET @HijriDay = 2
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:51'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:36'
SET @AsrAd = @SalaahDate + '15:20'
SET @AsrIq = @SalaahDate + '16:15'
SET @MaghAd = @SalaahDate + '18:03'
SET @IshAd = @SalaahDate + '19:36'
SET @IshIq = @SalaahDate + '20:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190310'
SET @HijriDay = 3
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:48'
SET @Sunrise = @SalaahDate + '06:33'
SET @AsrAd = @SalaahDate + '15:21'
SET @MaghAd = @SalaahDate + '18:05'
SET @IshAd = @SalaahDate + '19:38'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190311'
SET @HijriDay = 4
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:46'
SET @Sunrise = @SalaahDate + '06:31'
SET @ZuhrAd = @SalaahDate + '12:21'
SET @AsrAd = @SalaahDate + '15:23'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190312'
SET @HijriDay = 5
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:43'
SET @Sunrise = @SalaahDate + '06:28'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190313'
SET @HijriDay = 6
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:41'
SET @Sunrise = @SalaahDate + '06:26'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190314'
SET @HijriDay = 7
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @AsrAd = @SalaahDate + '15:26'
SET @MaghAd = @SalaahDate + '18:13'
SET @IshAd = @SalaahDate + '19:46'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190315'
SET @HijriDay = 8
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:36'
SET @Sunrise = @SalaahDate + '06:21'
SET @ZuhrAd = @SalaahDate + '12:28'
SET @AsrAd = @SalaahDate + '15:28'
SET @MaghAd = @SalaahDate + '18:15'
SET @IshAd = @SalaahDate + '19:48'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190316'
SET @HijriDay = 9
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:34'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:19'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:17'
SET @IshAd = @SalaahDate + '19:50'
SET @IshIq = @SalaahDate + '20:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190317'
SET @HijriDay = 10
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:31'
SET @Sunrise = @SalaahDate + '06:16'
SET @AsrAd = @SalaahDate + '15:30'
SET @MaghAd = @SalaahDate + '18:18'
SET @IshAd = @SalaahDate + '19:52'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190318'
SET @HijriDay = 11
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:29'
SET @Sunrise = @SalaahDate + '06:14'
SET @ZuhrAd = @SalaahDate + '12:19'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:20'
SET @IshAd = @SalaahDate + '19:54'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190319'
SET @HijriDay = 12
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:26'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:22'
SET @IshAd = @SalaahDate + '19:56'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190320'
SET @HijriDay = 13
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:24'
SET @Sunrise = @SalaahDate + '06:09'
SET @AsrAd = @SalaahDate + '15:33'
SET @MaghAd = @SalaahDate + '18:24'
SET @IshAd = @SalaahDate + '19:58'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190321'
SET @HijriDay = 14
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @AsrAd = @SalaahDate + '15:35'
SET @MaghAd = @SalaahDate + '18:26'
SET @IshAd = @SalaahDate + '20:01'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190322'
SET @HijriDay = 15
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @ZuhrAd = @SalaahDate + '12:18'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:28'
SET @IshAd = @SalaahDate + '20:03'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190323'
SET @HijriDay = 16
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:17'
SET @FajrIq = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '06:02'
SET @AsrAd = @SalaahDate + '15:37'
SET @MaghAd = @SalaahDate + '18:30'
SET @IshAd = @SalaahDate + '20:05'
SET @IshIq = @SalaahDate + '20:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190324'
SET @HijriDay = 17
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:31'
SET @IshAd = @SalaahDate + '20:07'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190325'
SET @HijriDay = 18
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:12'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:57'
SET @AsrAd = @SalaahDate + '15:39'
SET @MaghAd = @SalaahDate + '18:33'
SET @IshAd = @SalaahDate + '20:09'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190326'
SET @HijriDay = 19
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:09'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:54'
SET @AsrAd = @SalaahDate + '15:40'
SET @MaghAd = @SalaahDate + '18:35'
SET @IshAd = @SalaahDate + '20:11'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190327'
SET @HijriDay = 20
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:07'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:52'
SET @AsrAd = @SalaahDate + '15:41'
SET @MaghAd = @SalaahDate + '18:37'
SET @IshAd = @SalaahDate + '20:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190328'
SET @HijriDay = 21
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:04'
SET @ZuhrAd = @SalaahDate + '12:17'
SET @Sunrise = @SalaahDate + '05:49'
SET @AsrAd = @SalaahDate + '15:42'
SET @MaghAd = @SalaahDate + '18:39'
SET @IshAd = @SalaahDate + '20:16'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190329'
SET @HijriDay = 22
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:02'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @Sunrise = @SalaahDate + '05:47'
SET @AsrAd = @SalaahDate + '15:43'
SET @MaghAd = @SalaahDate + '18:41'
SET @IshAd = @SalaahDate + '20:18'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190330'
SET @HijriDay = 23
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '03:59'
SET @ZuhrAd = @SalaahDate + '12:16'
SET @Sunrise = @SalaahDate + '05:44'
SET @AsrAd = @SalaahDate + '15:44'
SET @MaghAd = @SalaahDate + '18:43'
SET @IshAd = @SalaahDate + '20:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190331'
SET @HijriDay = 24
SET @HijriMonth = 7
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '04:57'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrAd = @SalaahDate + '16:45'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:44'
SET @IshAd = @SalaahDate + '21:21'
SET @IshIq = @SalaahDate + '21:45'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190401'
SET @FajrAd = @SalaahDate + '04:55'
SET @FajrIq = @SalaahDate + '05:30'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrAd = @SalaahDate + '16:47'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:46'
SET @IshAd = @SalaahDate + '21:22'
SET @IshIq = @SalaahDate + '21:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190402'
SET @FajrAd = @SalaahDate + '04:52'
SET @Sunrise = @SalaahDate + '06:37'
SET @AsrAd = @SalaahDate + '16:48'
SET @MaghAd = @SalaahDate + '19:48'
SET @IshAd = @SalaahDate + '21:23'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190403'
SET @FajrAd = @SalaahDate + '04:50'
SET @Sunrise = @SalaahDate + '06:35'
SET @AsrAd = @SalaahDate + '16:49'
SET @MaghAd = @SalaahDate + '19:50'
SET @IshAd = @SalaahDate + '21:24'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190404'
SET @FajrAd = @SalaahDate + '04:47'
SET @Sunrise = @SalaahDate + '06:32'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '16:50'
SET @MaghAd = @SalaahDate + '19:52'
SET @IshAd = @SalaahDate + '21:25'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190405'
SET @FajrAd = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '06:30'
SET @AsrAd = @SalaahDate + '16:51'
SET @MaghAd = @SalaahDate + '19:54'
SET @IshAd = @SalaahDate + '21:26'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190406'
SET @FajrAd = @SalaahDate + '04:42'
SET @FajrIq = @SalaahDate + '05:15'
SET @Sunrise = @SalaahDate + '06:27'
SET @AsrAd = @SalaahDate + '16:52'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '19:55'
SET @IshAd = @SalaahDate + '21:27'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190407'
SET @FajrAd = @SalaahDate + '04:40'
SET @Sunrise = @SalaahDate + '06:25'
SET @ZuhrAd = @SalaahDate + '12:22'
SET @AsrAd = @SalaahDate + '16:53'
SET @MaghAd = @SalaahDate + '19:57'
SET @IshAd = @SalaahDate + '21:29'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190408'
SET @FajrAd = @SalaahDate + '04:38'
SET @Sunrise = @SalaahDate + '06:23'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '16:54'
SET @MaghAd = @SalaahDate + '19:59'
SET @IshAd = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190409'
SET @FajrAd = @SalaahDate + '04:35'
SET @Sunrise = @SalaahDate + '06:20'
SET @AsrAd = @SalaahDate + '16:55'
SET @MaghAd = @SalaahDate + '20:01'
SET @IshAd = @SalaahDate + '21:31'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190410'
SET @FajrAd = @SalaahDate + '04:33'
SET @Sunrise = @SalaahDate + '06:18'
SET @AsrAd = @SalaahDate + '16:56'
SET @MaghAd = @SalaahDate + '20:03'
SET @IshAd = @SalaahDate + '21:32'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190411'
SET @FajrAd = @SalaahDate + '04:30'
SET @Sunrise = @SalaahDate + '06:15'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:57'
SET @MaghAd = @SalaahDate + '20:04'
SET @IshAd = @SalaahDate + '21:33'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190412'
SET @FajrAd = @SalaahDate + '04:28'
SET @Sunrise = @SalaahDate + '06:13'
SET @AsrAd = @SalaahDate + '16:58'
SET @MaghAd = @SalaahDate + '20:07'
SET @IshAd = @SalaahDate + '21:34'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190413'
SET @FajrAd = @SalaahDate + '04:26'
SET @FajrIq = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:11'
SET @AsrAd = @SalaahDate + '16:59'
SET @MaghAd = @SalaahDate + '20:08'
SET @IshAd = @SalaahDate + '21:35'
SET @IshIq = @SalaahDate + '22:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190414'
SET @FajrAd = @SalaahDate + '04:23'
SET @Sunrise = @SalaahDate + '06:08'
SET @AsrAd = @SalaahDate + '17:00'
SET @MaghAd = @SalaahDate + '20:10'
SET @IshAd = @SalaahDate + '21:36'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190415'
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:12'
SET @IshAd = @SalaahDate + '21:12'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190416'
SET @FajrAd = @SalaahDate + '04:19'
SET @Sunrise = @SalaahDate + '06:04'
SET @AsrAd = @SalaahDate + '17:01'
SET @MaghAd = @SalaahDate + '20:14'
SET @IshAd = @SalaahDate + '21:37'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190417'
SET @FajrAd = @SalaahDate + '04:16'
SET @Sunrise = @SalaahDate + '06:01'
SET @AsrAd = @SalaahDate + '17:02'
SET @MaghAd = @SalaahDate + '20:16'
SET @IshAd = @SalaahDate + '21:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190418'
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @AsrAd = @SalaahDate + '17:03'
SET @MaghAd = @SalaahDate + '20:18'
SET @IshAd = @SalaahDate + '21:40'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190419'
SET @FajrAd = @SalaahDate + '04:12'
SET @Sunrise = @SalaahDate + '05:57'
SET @AsrAd = @SalaahDate + '17:04'
SET @MaghAd = @SalaahDate + '20:19'
SET @IshAd = @SalaahDate + '21:41'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190420'
SET @FajrAd = @SalaahDate + '04:10'
SET @FajrIq = @SalaahDate + '04:45'
SET @Sunrise = @SalaahDate + '05:55'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:05'
SET @MaghAd = @SalaahDate + '20:21'
SET @IshAd = @SalaahDate + '21:42'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190421'
SET @FajrAd = @SalaahDate + '04:07'
SET @Sunrise = @SalaahDate + '05:52'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:23'
SET @IshAd = @SalaahDate + '21:43'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190422'
SET @FajrAd = @SalaahDate + '04:05'
SET @Sunrise = @SalaahDate + '05:50'
SET @AsrAd = @SalaahDate + '17:06'
SET @MaghAd = @SalaahDate + '20:25'
SET @IshAd = @SalaahDate + '21:44'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190423'
SET @FajrAd = @SalaahDate + '04:03'
SET @Sunrise = @SalaahDate + '05:48'
SET @AsrAd = @SalaahDate + '17:07'
SET @MaghAd = @SalaahDate + '20:27'
SET @IshAd = @SalaahDate + '21:45'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190424'
SET @FajrAd = @SalaahDate + '04:01'
SET @Sunrise = @SalaahDate + '05:46'
SET @AsrAd = @SalaahDate + '17:08'
SET @MaghAd = @SalaahDate + '20:29'
SET @IshAd = @SalaahDate + '21:46'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190425'
SET @FajrAd = @SalaahDate + '03:59'
SET @Sunrise = @SalaahDate + '05:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:09'
SET @MaghAd = @SalaahDate + '20:30'
SET @IshAd = @SalaahDate + '21:47'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190426'
SET @FajrAd = @SalaahDate + '03:56'
SET @Sunrise = @SalaahDate + '05:41'
SET @AsrAd = @SalaahDate + '17:10'
SET @MaghAd = @SalaahDate + '20:32'
SET @IshAd = @SalaahDate + '21:48'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190427'
SET @FajrAd = @SalaahDate + '03:54'
SET @FajrIq = @SalaahDate + '04:30'
SET @Sunrise = @SalaahDate + '05:39'
SET @AsrAd = @SalaahDate + '17:10'
SET @AsrIq = @SalaahDate + '17:45'
SET @MaghAd = @SalaahDate + '20:34'
SET @IshAd = @SalaahDate + '21:49'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190428'
SET @FajrAd = @SalaahDate + '03:52'
SET @Sunrise = @SalaahDate + '05:37'
SET @AsrAd = @SalaahDate + '17:11'
SET @MaghAd = @SalaahDate + '20:36'
SET @IshAd = @SalaahDate + '21:50'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190429'
SET @FajrAd = @SalaahDate + '03:50'
SET @Sunrise = @SalaahDate + '05:35'
SET @AsrAd = @SalaahDate + '17:12'
SET @MaghAd = @SalaahDate + '20:38'
SET @IshAd = @SalaahDate + '21:51'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190430'
SET @FajrAd = @SalaahDate + '03:48'
SET @Sunrise = @SalaahDate + '05:33'
SET @AsrAd = @SalaahDate + '17:13'
SET @MaghAd = @SalaahDate + '20:40'
SET @IshAd = @SalaahDate + '21:52'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200501'
SET @FajrAd = @SalaahDate + '03:46'
SET @Sunrise = @SalaahDate + '05:31'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:41'
SET @IshAd = @SalaahDate + '21:53'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
SET @FajrIq = @SalaahDate + '04:06'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200502'
SET @FajrAd = @SalaahDate + '03:44'
SET @Sunrise = @SalaahDate + '05:29'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:14'
SET @MaghAd = @SalaahDate + '20:43'
SET @IshAd = @SalaahDate + '21:54'
SET @JumAd = NULL
SET @JumIq = NULL
SET @FajrIq = @SalaahDate + '04:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200503'
SET @FajrAd = @SalaahDate + '03:42'
SET @Sunrise = @SalaahDate + '05:27'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '20:45'
SET @IshAd = @SalaahDate + '21:56'
SET @FajrIq = @SalaahDate + '04:02'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200504'
SET @FajrAd = @SalaahDate + '03:40'
SET @Sunrise = @SalaahDate + '05:25'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:16'
SET @MaghAd = @SalaahDate + '20:47'
SET @IshAd = @SalaahDate + '21:57'
SET @FajrIq = @SalaahDate + '04:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200505'
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '03:58'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:49'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200506'
SET @FajrAd = @SalaahDate + '03:36'
SET @Sunrise = @SalaahDate + '05:21'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:59'
SET @FajrIq = @SalaahDate + '03:56'
SET @MaghAd = @SalaahDate + '20:50'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200507'
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '03:54'
SET @MaghAd = @SalaahDate + '20:52'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200508'
SET @FajrAd = @SalaahDate + '03:32'
SET @Sunrise = @SalaahDate + '05:17'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:02'
SET @FajrIq = @SalaahDate + '03:52'
SET @MaghAd = @SalaahDate + '20:54'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200509'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '22:03'
SET @FajrIq = @SalaahDate + '03:50'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:56'
SET @IshIq = @SalaahDate + '22:20'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200510'
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '22:04'
SET @FajrIq = @SalaahDate + '03:48'
SET @MaghAd = @SalaahDate + '20:57'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200511'
SET @FajrAd = @SalaahDate + '03:27'
SET @Sunrise = @SalaahDate + '05:12'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:06'
SET @FajrIq = @SalaahDate + '03:47'
SET @MaghAd = @SalaahDate + '20:59'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200512'
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:07'
SET @FajrIq = @SalaahDate + '03:45'
SET @MaghAd = @SalaahDate + '21:01'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200513'
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:08'
SET @FajrIq = @SalaahDate + '03:43'
SET @MaghAd = @SalaahDate + '21:03'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200514'
SET @FajrAd = @SalaahDate + '03:21'
SET @Sunrise = @SalaahDate + '05:06'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:09'
SET @FajrIq = @SalaahDate + '03:41'
SET @MaghAd = @SalaahDate + '21:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200515'
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '03:40'
SET @MaghAd = @SalaahDate + '21:06'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200516'
SET @FajrAd = @SalaahDate + '03:18'
SET @Sunrise = @SalaahDate + '05:03'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:12'
SET @FajrIq = @SalaahDate + '03:38'
SET @MaghAd = @SalaahDate + '21:08'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200517'
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:13'
SET @FajrIq = @SalaahDate + '03:37'
SET @MaghAd = @SalaahDate + '21:09'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200518'
SET @FajrAd = @SalaahDate + '03:15'
SET @Sunrise = @SalaahDate + '05:00'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:14'
SET @FajrIq = @SalaahDate + '03:35'
SET @MaghAd = @SalaahDate + '21:11'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200519'
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:15'
SET @FajrIq = @SalaahDate + '03:34'
SET @MaghAd = @SalaahDate + '21:12'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200520'
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:16'
SET @FajrIq = @SalaahDate + '03:32'
SET @MaghAd = @SalaahDate + '21:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200521'
SET @FajrAd = @SalaahDate + '03:11'
SET @Sunrise = @SalaahDate + '04:56'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:17'
SET @FajrIq = @SalaahDate + '03:31'
SET @MaghAd = @SalaahDate + '21:15'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200522'
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '03:29'
SET @MaghAd = @SalaahDate + '21:17'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200523'
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:20'
SET @FajrIq = @SalaahDate + '03:28'
SET @MaghAd = @SalaahDate + '21:19'
SET @IshIq = @SalaahDate + '22:40'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 10
SET @SalaahDate = '20200524'
SET @FajrAd = @SalaahDate + '03:07'
SET @Sunrise = @SalaahDate + '04:52'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:27'
SET @MaghAd = @SalaahDate + '21:20'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200525'
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:21'
SET @FajrIq = @SalaahDate + '03:25'
SET @MaghAd = @SalaahDate + '21:21'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200526'
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:23'
SET @FajrIq = @SalaahDate + '03:24'
SET @MaghAd = @SalaahDate + '21:23'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200527'
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:24'
SET @FajrIq = @SalaahDate + '03:23'
SET @MaghAd = @SalaahDate + '21:24'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200528'
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:25'
SET @FajrIq = @SalaahDate + '03:22'
SET @MaghAd = @SalaahDate + '21:26'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200529'
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:26'
SET @FajrIq = @SalaahDate + '03:21'
SET @MaghAd = @SalaahDate + '21:27'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200530'
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:20'
SET @MaghAd = @SalaahDate + '21:28'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20200531'
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:27'
SET @FajrIq = @SalaahDate + '03:19'
SET @MaghAd = @SalaahDate + '21:29'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190601'
SET @HijriDay  = 27
SET @HijriMonth = 8
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '02:58'
SET @Sunrise = @SalaahDate + '04:43'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:29'
SET @FajrIq = @SalaahDate + '03:18'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:31'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190602'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:57'
SET @Sunrise = @SalaahDate + '04:42'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:17'
SET @MaghAd = @SalaahDate + '21:32'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190603'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:56'
SET @Sunrise = @SalaahDate + '04:41'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:30'
SET @FajrIq = @SalaahDate + '03:16'
SET @MaghAd = @SalaahDate + '21:33'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190604'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:55'
SET @Sunrise = @SalaahDate + '04:40'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:31'
SET @FajrIq = @SalaahDate + '03:15'
SET @MaghAd = @SalaahDate + '21:34'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190701'
SET @HijriDay  = 28
SET @HijriMonth = 10
SET @HijriYr = 1440
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
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190702'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:56'
SET @Sunrise = @SalaahDate + '04:41'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:43'
SET @FajrIq = @SalaahDate + '03:45'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:43'
SET @IshIq = @SalaahDate + '22:55'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190703'
SET @HijriMonth = 11
SET @HijriDay = 1
SET @FajrAd = @SalaahDate + '02:57'
SET @Sunrise = @SalaahDate + '04:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:43'
SET @MaghAd = @SalaahDate + '21:43'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190704'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:58'
SET @Sunrise = @SalaahDate + '04:43'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:42'
SET @MaghAd = @SalaahDate + '21:42'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190705'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '02:59'
SET @Sunrise = @SalaahDate + '04:44'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:42'
SET @MaghAd = @SalaahDate + '21:42'
SET @IshIq = @SalaahDate + '22:55'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190706'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:00'
SET @Sunrise = @SalaahDate + '04:45'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:42'
SET @IshAd = @SalaahDate + '22:41'
SET @MaghAd = @SalaahDate + '21:41'
SET @IshIq = @SalaahDate + '22:50'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190707'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:01'
SET @Sunrise = @SalaahDate + '04:46'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:40'
SET @MaghAd = @SalaahDate + '21:40'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190708'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:02'
SET @Sunrise = @SalaahDate + '04:47'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:40'
SET @MaghAd = @SalaahDate + '21:40'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190709'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:03'
SET @Sunrise = @SalaahDate + '04:48'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:39'
SET @MaghAd = @SalaahDate + '21:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190710'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:04'
SET @Sunrise = @SalaahDate + '04:49'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:38'
SET @MaghAd = @SalaahDate + '21:38'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190711'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:05'
SET @Sunrise = @SalaahDate + '04:50'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:41'
SET @IshAd = @SalaahDate + '22:37'
SET @MaghAd = @SalaahDate + '21:37'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190712'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:06'
SET @Sunrise = @SalaahDate + '04:51'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:36'
SET @MaghAd = @SalaahDate + '21:36'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190713'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:08'
SET @Sunrise = @SalaahDate + '04:53'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:35'
SET @MaghAd = @SalaahDate + '21:35'
SET @IshIq = @SalaahDate + '22:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190714'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:09'
SET @Sunrise = @SalaahDate + '04:54'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:34'
SET @MaghAd = @SalaahDate + '21:34'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190715'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:10'
SET @Sunrise = @SalaahDate + '04:55'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:40'
SET @IshAd = @SalaahDate + '22:33'
SET @MaghAd = @SalaahDate + '21:33'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190716'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:12'
SET @Sunrise = @SalaahDate + '04:57'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:32'
SET @MaghAd = @SalaahDate + '21:32'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190717'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:13'
SET @Sunrise = @SalaahDate + '04:58'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:39'
SET @IshAd = @SalaahDate + '22:30'
SET @MaghAd = @SalaahDate + '21:30'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190718'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:14'
SET @Sunrise = @SalaahDate + '04:59'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:29'
SET @MaghAd = @SalaahDate + '21:29'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190719'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:16'
SET @Sunrise = @SalaahDate + '05:01'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:28'
SET @MaghAd = @SalaahDate + '21:28'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190720'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:17'
SET @Sunrise = @SalaahDate + '05:02'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:38'
SET @IshAd = @SalaahDate + '22:27'
SET @MaghAd = @SalaahDate + '21:27'
SET @IshIq = @SalaahDate + '22:35'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190721'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:19'
SET @Sunrise = @SalaahDate + '05:04'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:25'
SET @MaghAd = @SalaahDate + '21:25'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190722'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:20'
SET @Sunrise = @SalaahDate + '05:05'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:37'
SET @IshAd = @SalaahDate + '22:24'
SET @MaghAd = @SalaahDate + '21:24'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190723'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:22'
SET @Sunrise = @SalaahDate + '05:07'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:22'
SET @MaghAd = @SalaahDate + '21:22'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190724'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:23'
SET @Sunrise = @SalaahDate + '05:08'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:36'
SET @IshAd = @SalaahDate + '22:21'
SET @MaghAd = @SalaahDate + '21:21'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190725'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:25'
SET @Sunrise = @SalaahDate + '05:10'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:35'
SET @IshAd = @SalaahDate + '22:20'
SET @MaghAd = @SalaahDate + '21:19'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190726'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:26'
SET @Sunrise = @SalaahDate + '05:11'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:19'
SET @MaghAd = @SalaahDate + '21:18'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190727'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:28'
SET @Sunrise = @SalaahDate + '05:13'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:34'
SET @IshAd = @SalaahDate + '22:18'
SET @FajrIq = @SalaahDate + '04:00'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:16'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190728'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:30'
SET @Sunrise = @SalaahDate + '05:15'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:33'
SET @IshAd = @SalaahDate + '22:17'
SET @MaghAd = @SalaahDate + '21:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190729'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:31'
SET @Sunrise = @SalaahDate + '05:16'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:16'
SET @MaghAd = @SalaahDate + '21:13'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190730'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:33'
SET @Sunrise = @SalaahDate + '05:18'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:32'
SET @IshAd = @SalaahDate + '22:15'
SET @MaghAd = @SalaahDate + '21:11'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190731'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:34'
SET @Sunrise = @SalaahDate + '05:19'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:31'
SET @IshAd = @SalaahDate + '22:14'
SET @MaghAd = @SalaahDate + '21:09'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190801'
SET @HijriDay  = 29
SET @HijriMonth = 11
SET @HijriYr = 1440
SET @FajrAd = @SalaahDate + '03:36'
SET @Sunrise = @SalaahDate + '05:21'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:30'
SET @IshAd = @SalaahDate + '22:13'
SET @FajrIq = @SalaahDate + '04:15'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '18:15'
SET @MaghAd = @SalaahDate + '21:07'
SET @IshIq = @SalaahDate + '22:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190802'
SET @HijriDay = 1
SET @HijriMonth = 12
SET @FajrAd = @SalaahDate + '03:38'
SET @Sunrise = @SalaahDate + '05:23'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:29'
SET @IshAd = @SalaahDate + '22:12'
SET @MaghAd = @SalaahDate + '21:06'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190803'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:39'
SET @Sunrise = @SalaahDate + '05:24'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:11'
SET @FajrIq = @SalaahDate + '04:30'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '21:04'
SET @IshIq = @SalaahDate + '22:25'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190804'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:41'
SET @Sunrise = @SalaahDate + '05:26'
SET @ZuhrAd = @SalaahDate + '13:18'
SET @AsrAd = @SalaahDate + '17:28'
SET @IshAd = @SalaahDate + '22:10'
SET @MaghAd = @SalaahDate + '21:02'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190805'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:43'
SET @Sunrise = @SalaahDate + '05:28'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:27'
SET @IshAd = @SalaahDate + '22:09'
SET @MaghAd = @SalaahDate + '21:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190806'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:45'
SET @Sunrise = @SalaahDate + '05:30'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:26'
SET @IshAd = @SalaahDate + '22:07'
SET @MaghAd = @SalaahDate + '20:58'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190807'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:46'
SET @Sunrise = @SalaahDate + '05:31'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:25'
SET @IshAd = @SalaahDate + '22:06'
SET @MaghAd = @SalaahDate + '20:56'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190808'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:48'
SET @Sunrise = @SalaahDate + '05:33'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:24'
SET @IshAd = @SalaahDate + '22:04'
SET @MaghAd = @SalaahDate + '20:54'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190809'
SET @HijriDay = @HijriDay + 1


SET @FajrAd = @SalaahDate + '03:50'
SET @Sunrise = @SalaahDate + '05:35'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:23'
SET @IshAd = @SalaahDate + '22:03'
SET @MaghAd = @SalaahDate + '20:52'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190810'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:51'
SET @Sunrise = @SalaahDate + '05:36'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:22'
SET @IshAd = @SalaahDate + '22:01'
SET @FajrIq = @SalaahDate + '04:45'
SET @MaghAd = @SalaahDate + '20:50'
SET @IshIq = @SalaahDate + '22:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190811'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:53'
SET @Sunrise = @SalaahDate + '05:38'
SET @ZuhrAd = @SalaahDate + '13:17'
SET @AsrAd = @SalaahDate + '17:21'
SET @IshAd = @SalaahDate + '22:00'
SET @MaghAd = @SalaahDate + '20:48'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190812'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:55'
SET @Sunrise = @SalaahDate + '05:40'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:20'
SET @IshAd = @SalaahDate + '21:58'
SET @MaghAd = @SalaahDate + '20:46'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190813'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:57'
SET @Sunrise = @SalaahDate + '05:42'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:19'
SET @IshAd = @SalaahDate + '21:57'
SET @MaghAd = @SalaahDate + '20:44'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190814'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '03:58'
SET @Sunrise = @SalaahDate + '05:43'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:18'
SET @IshAd = @SalaahDate + '21:55'
SET @MaghAd = @SalaahDate + '20:42'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190815'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:00'
SET @Sunrise = @SalaahDate + '05:45'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:17'
SET @IshAd = @SalaahDate + '21:53'
SET @MaghAd = @SalaahDate + '20:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190816'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:02'
SET @Sunrise = @SalaahDate + '05:47'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:15'
SET @IshAd = @SalaahDate + '21:52'
SET @MaghAd = @SalaahDate + '20:37'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190817'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:04'
SET @Sunrise = @SalaahDate + '05:49'
SET @ZuhrAd = @SalaahDate + '13:16'
SET @AsrAd = @SalaahDate + '17:14'
SET @IshAd = @SalaahDate + '21:50'
SET @FajrIq = @SalaahDate + '04:45'
SET @AsrIq = @SalaahDate + '18:00'
SET @MaghAd = @SalaahDate + '20:35'
SET @IshIq = @SalaahDate + '22:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190818'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:06'
SET @Sunrise = @SalaahDate + '05:51'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:13'
SET @IshAd = @SalaahDate + '21:49'
SET @MaghAd = @SalaahDate + '20:33'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190819'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:07'
SET @Sunrise = @SalaahDate + '05:52'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:12'
SET @IshAd = @SalaahDate + '21:47'
SET @MaghAd = @SalaahDate + '20:31'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190820'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:09'
SET @Sunrise = @SalaahDate + '05:54'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:11'
SET @IshAd = @SalaahDate + '21:45'
SET @MaghAd = @SalaahDate + '20:28'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190821'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:11'
SET @Sunrise = @SalaahDate + '05:56'
SET @ZuhrAd = @SalaahDate + '13:15'
SET @AsrAd = @SalaahDate + '17:09'
SET @IshAd = @SalaahDate + '21:44'
SET @MaghAd = @SalaahDate + '20:26'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190822'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:13'
SET @Sunrise = @SalaahDate + '05:58'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:08'
SET @IshAd = @SalaahDate + '21:42'
SET @MaghAd = @SalaahDate + '20:24'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190823'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:14'
SET @Sunrise = @SalaahDate + '05:59'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:07'
SET @IshAd = @SalaahDate + '21:41'
SET @MaghAd = @SalaahDate + '20:22'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190824'
SET @HijriDay = @HijriDay + 1

SET @FajrAd = @SalaahDate + '04:16'
SET @Sunrise = @SalaahDate + '06:01'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:05'
SET @IshAd = @SalaahDate + '21:38'
SET @FajrIq = @SalaahDate + '05:00'
SET @AsrIq = @SalaahDate + '17:45'
SET @MaghAd = @SalaahDate + '20:19'
SET @IshIq = @SalaahDate + '21:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190825'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:18'
SET @Sunrise = @SalaahDate + '06:03'
SET @ZuhrAd = @SalaahDate + '13:14'
SET @AsrAd = @SalaahDate + '17:04'
SET @IshAd = @SalaahDate + '21:37'
SET @MaghAd = @SalaahDate + '20:17'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190826'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:20'
SET @Sunrise = @SalaahDate + '06:05'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:03'
SET @IshAd = @SalaahDate + '21:35'
SET @MaghAd = @SalaahDate + '20:15'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190827'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:21'
SET @Sunrise = @SalaahDate + '06:06'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:01'
SET @IshAd = @SalaahDate + '21:33'
SET @MaghAd = @SalaahDate + '20:12'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190828'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:23'
SET @Sunrise = @SalaahDate + '06:08'
SET @ZuhrAd = @SalaahDate + '13:13'
SET @AsrAd = @SalaahDate + '17:00'
SET @IshAd = @SalaahDate + '21:32'
SET @MaghAd = @SalaahDate + '20:10'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190829'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:25'
SET @Sunrise = @SalaahDate + '06:10'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:58'
SET @IshAd = @SalaahDate + '21:30'
SET @MaghAd = @SalaahDate + '20:08'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190830'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:27'
SET @Sunrise = @SalaahDate + '06:12'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:57'
SET @IshAd = @SalaahDate + '21:28'
SET @MaghAd = @SalaahDate + '20:05'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190831'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:28'
SET @Sunrise = @SalaahDate + '06:13'
SET @ZuhrAd = @SalaahDate + '13:12'
SET @AsrAd = @SalaahDate + '16:55'
SET @IshAd = @SalaahDate + '21:26'
SET @FajrIq = @SalaahDate + '05:15'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '20:03'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190901'
SET @HijriDay  = 2
SET @HijriMonth = 1
SET @HijriYr = 1441
SET @FajrAd = @SalaahDate + '04:30'
SET @Sunrise = @SalaahDate + '06:15'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '16:54'
SET @IshAd = @SalaahDate + '21:24'
SET @FajrIq = @SalaahDate + '05:15'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrIq = @SalaahDate + '17:30'
SET @MaghAd = @SalaahDate + '20:00'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190902'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:32'
SET @Sunrise = @SalaahDate + '06:17'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '16:53'
SET @IshAd = @SalaahDate + '21:23'
SET @MaghAd = @SalaahDate + '19:58'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190903'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:34'
SET @Sunrise = @SalaahDate + '06:19'
SET @ZuhrAd = @SalaahDate + '13:11'
SET @AsrAd = @SalaahDate + '16:51'
SET @IshAd = @SalaahDate + '21:21'
SET @MaghAd = @SalaahDate + '19:56'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190904'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:36'
SET @Sunrise = @SalaahDate + '06:21'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:49'
SET @IshAd = @SalaahDate + '21:19'
SET @MaghAd = @SalaahDate + '19:53'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190905'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:37'
SET @Sunrise = @SalaahDate + '06:22'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:48'
SET @IshAd = @SalaahDate + '21:17'
SET @MaghAd = @SalaahDate + '19:51'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190906'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:39'
SET @Sunrise = @SalaahDate + '06:24'
SET @ZuhrAd = @SalaahDate + '13:10'
SET @AsrAd = @SalaahDate + '16:46'
SET @IshAd = @SalaahDate + '21:15'
SET @MaghAd = @SalaahDate + '19:48'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190907'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:41'
SET @Sunrise = @SalaahDate + '06:26'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '21:14'
SET @FajrIq = @SalaahDate + '05:30'
SET @AsrIq = @SalaahDate + '17:15'
SET @MaghAd = @SalaahDate + '19:46'
SET @IshIq = @SalaahDate + '21:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190908'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:43'
SET @Sunrise = @SalaahDate + '06:28'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '21:11'
SET @MaghAd = @SalaahDate + '19:43'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190909'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:44'
SET @Sunrise = @SalaahDate + '06:29'
SET @ZuhrAd = @SalaahDate + '13:09'
SET @AsrAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '21:10'
SET @MaghAd = @SalaahDate + '19:41'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190910'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:46'
SET @Sunrise = @SalaahDate + '06:31'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:40'
SET @IshAd = @SalaahDate + '21:08'
SET @MaghAd = @SalaahDate + '19:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190911'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:48'
SET @Sunrise = @SalaahDate + '06:33'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:38'
SET @IshAd = @SalaahDate + '21:06'
SET @MaghAd = @SalaahDate + '19:36'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190912'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:50'
SET @Sunrise = @SalaahDate + '06:35'
SET @ZuhrAd = @SalaahDate + '13:08'
SET @AsrAd = @SalaahDate + '16:37'
SET @IshAd = @SalaahDate + '21:05'
SET @MaghAd = @SalaahDate + '19:34'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190913'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:51'
SET @Sunrise = @SalaahDate + '06:36'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '21:02'
SET @MaghAd = @SalaahDate + '19:31'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190914'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:53'
SET @Sunrise = @SalaahDate + '06:38'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '21:01'
SET @FajrIq = @SalaahDate + '05:45'
SET @MaghAd = @SalaahDate + '19:29'
SET @IshIq = @SalaahDate + '21:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190915'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:55'
SET @Sunrise = @SalaahDate + '06:40'
SET @ZuhrAd = @SalaahDate + '13:07'
SET @AsrAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '20:58'
SET @MaghAd = @SalaahDate + '19:26'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190916'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:57'
SET @Sunrise = @SalaahDate + '06:42'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:30'
SET @IshAd = @SalaahDate + '20:57'
SET @MaghAd = @SalaahDate + '19:24'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190917'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '04:58'
SET @Sunrise = @SalaahDate + '06:43'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:28'
SET @IshAd = @SalaahDate + '20:55'
SET @MaghAd = @SalaahDate + '19:21'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190918'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:00'
SET @Sunrise = @SalaahDate + '06:45'
SET @ZuhrAd = @SalaahDate + '13:06'
SET @AsrAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '20:53'
SET @MaghAd = @SalaahDate + '19:19'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190919'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:02'
SET @Sunrise = @SalaahDate + '06:47'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:25'
SET @IshAd = @SalaahDate + '20:51'
SET @MaghAd = @SalaahDate + '19:16'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190920'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:04'
SET @Sunrise = @SalaahDate + '06:49'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:23'
SET @IshAd = @SalaahDate + '20:48'
SET @MaghAd = @SalaahDate + '19:14'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190921'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:05'
SET @Sunrise = @SalaahDate + '06:50'
SET @ZuhrAd = @SalaahDate + '13:05'
SET @AsrAd = @SalaahDate + '16:21'
SET @IshAd = @SalaahDate + '20:46'
SET @FajrIq = @SalaahDate + '06:00'
SET @AsrIq = @SalaahDate + '17:00'
SET @MaghAd = @SalaahDate + '19:11'
SET @IshIq = @SalaahDate + '21:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190922'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:07'
SET @Sunrise = @SalaahDate + '06:52'
SET @ZuhrAd = @SalaahDate + '13:04'
SET @AsrAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '20:43'
SET @MaghAd = @SalaahDate + '19:09'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190923'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:09'
SET @Sunrise = @SalaahDate + '06:54'
SET @ZuhrAd = @SalaahDate + '13:04'
SET @AsrAd = @SalaahDate + '16:18'
SET @IshAd = @SalaahDate + '20:40'
SET @MaghAd = @SalaahDate + '19:07'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20190924'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:11'
SET @Sunrise = @SalaahDate + '06:56'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:16'
SET @IshAd = @SalaahDate + '20:38'
SET @MaghAd = @SalaahDate + '19:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190925'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:13'
SET @Sunrise = @SalaahDate + '06:58'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '20:35'
SET @MaghAd = @SalaahDate + '19:02'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190926'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @ZuhrAd = @SalaahDate + '13:03'
SET @AsrAd = @SalaahDate + '16:12'
SET @IshAd = @SalaahDate + '20:32'
SET @MaghAd = @SalaahDate + '18:59'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190927'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:10'
SET @IshAd = @SalaahDate + '20:30'
SET @MaghAd = @SalaahDate + '18:57'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190928'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:18'
SET @Sunrise = @SalaahDate + '07:03'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:09'
SET @IshAd = @SalaahDate + '20:27'
SET @AsrIq = @SalaahDate + '16:45'
SET @MaghAd = @SalaahDate + '18:54'
SET @IshIq = @SalaahDate + '20:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190929'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '05:20'
SET @Sunrise = @SalaahDate + '07:05'
SET @ZuhrAd = @SalaahDate + '13:02'
SET @AsrAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '20:24'
SET @MaghAd = @SalaahDate + '18:52'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20190930'
SET @HijriDay = 1
SET @HijriMonth = 2
SET @FajrAd = @SalaahDate + '05:22'
SET @Sunrise = @SalaahDate + '07:07'
SET @ZuhrAd = @SalaahDate + '13:01'
SET @AsrAd = @SalaahDate + '16:05'
SET @IshAd = @SalaahDate + '20:22'
SET @MaghAd = @SalaahDate + '18:49'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191001'
SET @HijriDay  = 2
SET @HijriMonth = 2
SET @HijriYr = 1441
SET @FajrAd = @SalaahDate + '05:23'
SET @FajrIq = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:08'
SET @ZuhrAd = @SalaahDate + '13:01'
SET @ZuhrIq = @SalaahDate + '13:45'
SET @AsrAd = @SalaahDate + '16:03'
SET @AsrIq = @SalaahDate + '16:45'
SET @MaghAd = @SalaahDate + '18:47'
SET @IshAd = @SalaahDate + '20:19'
SET @IshIq = @SalaahDate + '20:45'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191002'
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @ZuhrAd = @SalaahDate + '13:01'
SET @AsrAd = @SalaahDate + '16:01'
SET @MaghAd = @SalaahDate + '18:44'
SET @IshAd = @SalaahDate + '20:17'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191003'
SET @FajrAd = @SalaahDate + '05:27'
SET @Sunrise = @SalaahDate + '07:12'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:59'
SET @MaghAd = @SalaahDate + '18:42'
SET @IshAd = @SalaahDate + '20:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191004'
SET @FajrAd = @SalaahDate + '05:29'
SET @Sunrise = @SalaahDate + '07:14'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:58'
SET @MaghAd = @SalaahDate + '18:40'
SET @IshAd = @SalaahDate + '20:12'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191005'
SET @FajrAd = @SalaahDate + '05:31'
SET @Sunrise = @SalaahDate + '07:16'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '20:09'
SET @FajrIq = @SalaahDate + '06:15'
SET @AsrIq = @SalaahDate + '16:30'
SET @MaghAd = @SalaahDate + '18:37'
SET @IshIq = @SalaahDate + '20:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191006'
SET @FajrAd = @SalaahDate + '05:32'
SET @Sunrise = @SalaahDate + '07:17'
SET @ZuhrAd = @SalaahDate + '13:00'
SET @AsrAd = @SalaahDate + '15:54'
SET @IshAd = @SalaahDate + '20:07'
SET @MaghAd = @SalaahDate + '18:35'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191007'
SET @FajrAd = @SalaahDate + '05:34'
SET @Sunrise = @SalaahDate + '07:19'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '20:04'
SET @MaghAd = @SalaahDate + '18:32'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191008'
SET @FajrAd = @SalaahDate + '05:36'
SET @Sunrise = @SalaahDate + '07:21'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '20:02'
SET @MaghAd = @SalaahDate + '18:30'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191009'
SET @FajrAd = @SalaahDate + '05:38'
SET @Sunrise = @SalaahDate + '07:23'
SET @ZuhrAd = @SalaahDate + '12:59'
SET @AsrAd = @SalaahDate + '15:48'
SET @IshAd = @SalaahDate + '20:00'
SET @MaghAd = @SalaahDate + '18:28'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191010'
SET @FajrAd = @SalaahDate + '05:40'
SET @Sunrise = @SalaahDate + '07:25'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:47'
SET @IshAd = @SalaahDate + '19:57'
SET @MaghAd = @SalaahDate + '18:25'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191011'
SET @FajrAd = @SalaahDate + '05:42'
SET @Sunrise = @SalaahDate + '07:27'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:45'
SET @IshAd = @SalaahDate + '19:55'
SET @MaghAd = @SalaahDate + '18:23'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191012'
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:43'
SET @IshAd = @SalaahDate + '19:53'
SET @FajrIq = @SalaahDate + '06:30'
SET @AsrIq = @SalaahDate + '16:15'
SET @MaghAd = @SalaahDate + '18:21'
SET @IshIq = @SalaahDate + '20:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191013'
SET @FajrAd = @SalaahDate + '05:45'
SET @Sunrise = @SalaahDate + '07:30'
SET @ZuhrAd = @SalaahDate + '12:58'
SET @AsrAd = @SalaahDate + '15:41'
SET @IshAd = @SalaahDate + '19:50'
SET @MaghAd = @SalaahDate + '18:18'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191014'
SET @FajrAd = @SalaahDate + '05:47'
SET @Sunrise = @SalaahDate + '07:32'
SET @ZuhrAd = @SalaahDate + '12:57'
SET @AsrAd = @SalaahDate + '15:39'
SET @IshAd = @SalaahDate + '19:48'
SET @MaghAd = @SalaahDate + '18:16'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191015'
SET @FajrAd = @SalaahDate + '05:49'
SET @Sunrise = @SalaahDate + '07:34'
SET @AsrAd = @SalaahDate + '15:38'
SET @MaghAd = @SalaahDate + '18:14'
SET @IshAd = @SalaahDate + '19:46'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191016'
SET @FajrAd = @SalaahDate + '05:51'
SET @Sunrise = @SalaahDate + '07:36'
SET @AsrAd = @SalaahDate + '15:36'
SET @MaghAd = @SalaahDate + '18:11'
SET @IshAd = @SalaahDate + '19:44'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191017'
SET @FajrAd = @SalaahDate + '05:53'
SET @Sunrise = @SalaahDate + '07:38'
SET @AsrAd = @SalaahDate + '15:34'
SET @MaghAd = @SalaahDate + '18:09'
SET @IshAd = @SalaahDate + '19:42'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191018'
SET @FajrAd = @SalaahDate + '05:55'
SET @Sunrise = @SalaahDate + '07:40'
SET @AsrAd = @SalaahDate + '15:32'
SET @MaghAd = @SalaahDate + '18:07'
SET @IshAd = @SalaahDate + '19:39'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191019'
SET @FajrAd = @SalaahDate + '05:57'
SET @Sunrise = @SalaahDate + '07:42'
SET @ZuhrAd = @SalaahDate + '12:56'
SET @AsrAd = @SalaahDate + '15:31'
SET @MaghAd = @SalaahDate + '18:04'
SET @IshAd = @SalaahDate + '19:37'
SET @FajrIq = @SalaahDate + '06:45'
SET @AsrIq = @SalaahDate + '16:00'
SET @IshIq = @SalaahDate + '20:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191020'
SET @FajrAd = @SalaahDate + '05:58'
SET @Sunrise = @SalaahDate + '07:43'
SET @AsrAd = @SalaahDate + '15:29'
SET @MaghAd = @SalaahDate + '18:02'
SET @IshAd = @SalaahDate + '19:35'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191021'
SET @FajrAd = @SalaahDate + '06:00'
SET @Sunrise = @SalaahDate + '07:45'
SET @AsrAd = @SalaahDate + '15:27'
SET @MaghAd = @SalaahDate + '18:00'
SET @IshAd = @SalaahDate + '19:33'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191022'
SET @FajrAd = @SalaahDate + '06:02'
SET @Sunrise = @SalaahDate + '07:47'
SET @AsrAd = @SalaahDate + '15:25'
SET @MaghAd = @SalaahDate + '17:58'
SET @IshAd = @SalaahDate + '19:31'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191023'
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @AsrAd = @SalaahDate + '15:24'
SET @MaghAd = @SalaahDate + '17:56'
SET @IshAd = @SalaahDate + '19:29'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191024'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @AsrAd = @SalaahDate + '15:22'
SET @MaghAd = @SalaahDate + '17:53'
SET @IshAd = @SalaahDate + '19:27'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191025'
SET @FajrAd = @SalaahDate + '06:08'
SET @Sunrise = @SalaahDate + '07:53'
SET @AsrAd = @SalaahDate + '15:20'
SET @MaghAd = @SalaahDate + '17:51'
SET @IshAd = @SalaahDate + '19:25'
SET @JumAd = @SalaahDate + '13:30'
SET @JumIq = @SalaahDate + '14:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191026'
SET @FajrAd = @SalaahDate + '06:10'
SET @Sunrise = @SalaahDate + '07:55'
SET @ZuhrAd = @SalaahDate + '12:55'
SET @AsrAd = @SalaahDate + '15:19'
SET @MaghAd = @SalaahDate + '17:49'
SET @IshAd = @SalaahDate + '19:23'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191027'
SET @FajrAd = @SalaahDate + '05:12'
SET @Sunrise = @SalaahDate + '06:57'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:17'
SET @MaghAd = @SalaahDate + '16:47'
SET @IshAd = @SalaahDate + '18:21'
SET @FajrIq = @SalaahDate + '05:45'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrIq = @SalaahDate + '14:45'
SET @IshIq = @SalaahDate + '19:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191028'
SET @FajrAd = @SalaahDate + '05:14'
SET @Sunrise = @SalaahDate + '06:59'
SET @AsrAd = @SalaahDate + '14:15'
SET @MaghAd = @SalaahDate + '16:45'
SET @IshAd = @SalaahDate + '18:19'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 3
SET @SalaahDate = '20191029'
SET @FajrAd = @SalaahDate + '05:16'
SET @Sunrise = @SalaahDate + '07:01'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:14'
SET @MaghAd = @SalaahDate + '16:43'
SET @IshAd = @SalaahDate + '18:17'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191030'
SET @FajrAd = @SalaahDate + '05:18'
SET @Sunrise = @SalaahDate + '07:03'
SET @AsrAd = @SalaahDate + '14:12'
SET @MaghAd = @SalaahDate + '16:41'
SET @IshAd = @SalaahDate + '18:16'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191031'
SET @FajrAd = @SalaahDate + '05:19'
SET @Sunrise = @SalaahDate + '07:04'
SET @AsrAd = @SalaahDate + '14:11'
SET @MaghAd = @SalaahDate + '16:39'
SET @IshAd = @SalaahDate + '18:14'
INSERT INTO #TempYearSalaahTimes (SalaahDate, HijriDate, HijriMonth, HijriYear, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @HijriDay, @HijriMonth, @HijriYr, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191101'
SET @HijriDay  = 4
SET @HijriMonth = 3
SET @HijriYr = 1441
SET @FajrAd = @SalaahDate + '05:21'
SET @Sunrise = @SalaahDate + '07:06'
SET @ZuhrAd = @SalaahDate + '11:55'
SET @AsrAd = @SalaahDate + '14:09'
SET @MaghAd = @SalaahDate + '16:37'
SET @IshAd = @SalaahDate + '18:12'

SET @FajrIq = @SalaahDate + '05:45'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrIq = @SalaahDate + '14:45'
SET @IshIq = @SalaahDate + '19:00'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191102'
SET @FajrAd = @SalaahDate + '05:23'
SET @Sunrise = @SalaahDate + '07:08'
SET @AsrAd = @SalaahDate + '14:08'
SET @MaghAd = @SalaahDate + '16:35'
SET @IshAd = @SalaahDate + '18:10'
SET @FajrIq = @SalaahDate + '06:00'
SET @AsrIq = @SalaahDate + '14:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191103'
SET @FajrAd = @SalaahDate + '05:25'
SET @Sunrise = @SalaahDate + '07:10'
SET @AsrAd = @SalaahDate + '14:06'
SET @MaghAd = @SalaahDate + '16:33'
SET @IshAd = @SalaahDate + '18:09'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191104'
SET @FajrAd = @SalaahDate + '05:27'
SET @Sunrise = @SalaahDate + '07:12'
SET @AsrAd = @SalaahDate + '14:05'
SET @MaghAd = @SalaahDate + '16:31'
SET @IshAd = @SalaahDate + '18:07'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191105'
SET @FajrAd = @SalaahDate + '05:29'
SET @Sunrise = @SalaahDate + '07:14'
SET @AsrAd = @SalaahDate + '14:04'
SET @MaghAd = @SalaahDate + '16:29'
SET @IshAd = @SalaahDate + '18:05'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191106'
SET @FajrAd = @SalaahDate + '05:31'
SET @Sunrise = @SalaahDate + '07:16'
SET @AsrAd = @SalaahDate + '14:03'
SET @MaghAd = @SalaahDate + '16:27'
SET @IshAd = @SalaahDate + '18:04'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191107'
SET @FajrAd = @SalaahDate + '05:33'
SET @Sunrise = @SalaahDate + '07:18'
SET @AsrAd = @SalaahDate + '14:02'
SET @MaghAd = @SalaahDate + '16:26'
SET @IshAd = @SalaahDate + '18:02'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191108'
SET @FajrAd = @SalaahDate + '05:35'
SET @Sunrise = @SalaahDate + '07:20'
SET @AsrAd = @SalaahDate + '14:01'
SET @MaghAd = @SalaahDate + '16:24'
SET @IshAd = @SalaahDate + '18:01'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191109'
SET @FajrAd = @SalaahDate + '05:37'
SET @Sunrise = @SalaahDate + '07:22'
SET @AsrAd = @SalaahDate + '13:59'
SET @MaghAd = @SalaahDate + '16:22'
SET @IshAd = @SalaahDate + '17:59'
SET @FajrIq = @SalaahDate + '06:15'
SET @AsrIq = @SalaahDate + '14:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191110'
SET @FajrAd = @SalaahDate + '05:39'
SET @Sunrise = @SalaahDate + '07:24'
SET @AsrAd = @SalaahDate + '13:58'
SET @MaghAd = @SalaahDate + '16:20'
SET @IshAd = @SalaahDate + '17:58'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191111'
SET @FajrAd = @SalaahDate + '05:41'
SET @Sunrise = @SalaahDate + '07:26'
SET @ZuhrAd =  @SalaahDate + '11:56'
SET @AsrAd = @SalaahDate + '13:56'
SET @MaghAd = @SalaahDate + '16:19'
SET @IshAd = @SalaahDate + '17:57'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191112'
SET @FajrAd = @SalaahDate + '05:43'
SET @Sunrise = @SalaahDate + '07:28'
SET @AsrAd = @SalaahDate + '13:55'
SET @MaghAd = @SalaahDate + '16:17'
SET @IshAd = @SalaahDate + '17:55'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191113'
SET @FajrAd = @SalaahDate + '05:44'
SET @Sunrise = @SalaahDate + '07:29'
SET @AsrAd = @SalaahDate + '13:54'
SET @MaghAd = @SalaahDate + '16:15'
SET @IshAd = @SalaahDate + '17:54'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191114'
SET @FajrAd = @SalaahDate + '05:46'
SET @Sunrise = @SalaahDate + '07:31'
SET @AsrAd = @SalaahDate + '13:53'
SET @MaghAd = @SalaahDate + '16:14'
SET @IshAd = @SalaahDate + '17:53'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191115'
SET @FajrAd = @SalaahDate + '05:48'
SET @Sunrise = @SalaahDate + '07:33'
SET @AsrAd = @SalaahDate + '13:51'
SET @MaghAd = @SalaahDate + '16:12'
SET @IshAd = @SalaahDate + '17:52'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191116'
SET @FajrAd = @SalaahDate + '05:50'
SET @Sunrise = @SalaahDate + '07:35'
SET @AsrAd = @SalaahDate + '13:50'
SET @MaghAd = @SalaahDate + '16:11'
SET @IshAd = @SalaahDate + '17:50'
SET @FajrIq = @SalaahDate + '06:30'
SET @AsrIq = @SalaahDate + '14:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191117'
SET @FajrAd = @SalaahDate + '05:52'
SET @Sunrise = @SalaahDate + '07:37'
SET @AsrAd = @SalaahDate + '13:49'
SET @MaghAd = @SalaahDate + '16:09'
SET @IshAd = @SalaahDate + '17:49'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191118'
SET @FajrAd = @SalaahDate + '05:54'
SET @Sunrise = @SalaahDate + '07:39'
SET @AsrAd = @SalaahDate + '13:47'
SET @MaghAd = @SalaahDate + '16:08'
SET @IshAd = @SalaahDate + '17:48'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191119'
SET @FajrAd = @SalaahDate + '05:56'
SET @Sunrise = @SalaahDate + '07:41'
SET @AsrAd = @SalaahDate + '13:46'
SET @MaghAd = @SalaahDate + '16:07'
SET @IshAd = @SalaahDate + '17:47'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191120'
SET @FajrAd = @SalaahDate + '05:57'
SET @Sunrise = @SalaahDate + '07:42'
SET @AsrAd = @SalaahDate + '13:45'
SET @MaghAd = @SalaahDate + '16:05'
SET @IshAd = @SalaahDate + '17:45'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191121'
SET @FajrAd = @SalaahDate + '05:59'
SET @Sunrise = @SalaahDate + '07:44'
SET @AsrAd = @SalaahDate + '13:44'
SET @MaghAd = @SalaahDate + '16:04'
SET @IshAd = @SalaahDate + '17:44'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191122'
SET @FajrAd = @SalaahDate + '06:01'
SET @Sunrise = @SalaahDate + '07:46'
SET @ZuhrIq = @SalaahDate + '11:58'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '16:03'
SET @IshAd = @SalaahDate + '17:43'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191123'
SET @FajrAd = @SalaahDate + '06:03'
SET @Sunrise = @SalaahDate + '07:48'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '16:02'
SET @IshAd = @SalaahDate + '17:42'
SET @FajrIq = @SalaahDate + '06:45'
SET @AsrIq = @SalaahDate + '14:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191124'
SET @FajrAd = @SalaahDate + '06:04'
SET @Sunrise = @SalaahDate + '07:49'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '16:01'
SET @IshAd = @SalaahDate + '17:41'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191125'
SET @FajrAd = @SalaahDate + '06:06'
SET @Sunrise = @SalaahDate + '07:51'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:59'
SET @IshAd = @SalaahDate + '17:39'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191126'
SET @FajrAd = @SalaahDate + '06:08'
SET @Sunrise = @SalaahDate + '07:53'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:58'
SET @IshAd = @SalaahDate + '17:38'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191127'
SET @FajrAd = @SalaahDate + '06:09'
SET @Sunrise = @SalaahDate + '07:54'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:57'
SET @IshAd = @SalaahDate + '17:37'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = 1
SET @HijriMonth = 4
SET @SalaahDate = '20191128'
SET @FajrAd = @SalaahDate + '06:11'
SET @Sunrise = @SalaahDate + '07:56'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191129'
SET @FajrAd = @SalaahDate + '06:13'
SET @Sunrise = @SalaahDate + '07:58'
SET @ZuhrAd = @SalaahDate + '12:00'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @HijriDay = @HijriDay + 1
SET @SalaahDate = '20191130'
SET @FajrAd = @SalaahDate + '06:14'
SET @Sunrise = @SalaahDate + '07:59'
SET @ZuhrAd = @SalaahDate + '12:00'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @FajrIq = @SalaahDate + '07:00'
SET @AsrIq = @SalaahDate + '14:15'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)


SET @SalaahDate = '20191201'
SET @HijriDay  = 4
SET @HijriMonth = 6
SET @HijriYr = 1441
SET @FajrAd = @SalaahDate + '06:16'
SET @FajrIq = @SalaahDate + '07:00'
SET @Sunrise = @SalaahDate + '08:01'
SET @ZuhrAd = @SalaahDate + '12:01'
SET @ZuhrIq = @SalaahDate + '12:45'
SET @AsrAd = @SalaahDate + '13:37'
SET @AsrIq = @SalaahDate + '14:15'
SET @MaghAd = @SalaahDate + '15:54'
SET @IshAd = @SalaahDate + '17:34'
SET @IshIq = @SalaahDate + '19:00'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191202'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:17'
SET @Sunrise = @SalaahDate + '08:02'
SET @ZuhrAd = @SalaahDate + '12:01'
SET @AsrAd = @SalaahDate + '13:37'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191203'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:19'
SET @Sunrise = @SalaahDate + '08:04'
SET @ZuhrAd = @SalaahDate + '12:01'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191204'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:20'
SET @Sunrise = @SalaahDate + '08:05'
SET @ZuhrAd = @SalaahDate + '12:02'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191205'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:21'
SET @Sunrise = @SalaahDate + '08:06'
SET @ZuhrAd = @SalaahDate + '12:02'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191206'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:23'
SET @Sunrise = @SalaahDate + '08:08'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191207'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:24'
SET @Sunrise = @SalaahDate + '08:09'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191208'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:25'
SET @Sunrise = @SalaahDate + '08:10'
SET @ZuhrAd = @SalaahDate + '12:03'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191209'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:26'
SET @FajrIq = @SalaahDate + '07:00'
SET @Sunrise = @SalaahDate + '08:12'
SET @ZuhrAd = @SalaahDate + '12:04'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191210'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:28'
SET @Sunrise = @SalaahDate + '08:13'
SET @ZuhrAd = @SalaahDate + '12:04'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191211'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:29'
SET @Sunrise = @SalaahDate + '08:14'
SET @ZuhrAd = @SalaahDate + '12:05'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191212'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:30'
SET @Sunrise = @SalaahDate + '08:15'
SET @ZuhrAd = @SalaahDate + '12:05'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191213'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:31'
SET @Sunrise = @SalaahDate + '08:16'
SET @ZuhrAd = @SalaahDate + '12:06'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191214'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:32'
SET @Sunrise = @SalaahDate + '08:17'
SET @ZuhrAd = @SalaahDate + '12:06'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:49'
SET @IshAd = @SalaahDate + '17:29'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191215'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:33'
SET @Sunrise = @SalaahDate + '08:18'
SET @ZuhrAd = @SalaahDate + '12:07'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191216'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:07'
SET @AsrAd = @SalaahDate + '13:35'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191217'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:34'
SET @Sunrise = @SalaahDate + '08:19'
SET @ZuhrAd = @SalaahDate + '12:08'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191218'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:35'
SET @Sunrise = @SalaahDate + '08:20'
SET @ZuhrAd = @SalaahDate + '12:08'
SET @AsrAd = @SalaahDate + '13:36'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191219'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:09'
SET @AsrAd = @SalaahDate + '13:37'
SET @MaghAd = @SalaahDate + '15:50'
SET @IshAd = @SalaahDate + '17:30'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191220'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:36'
SET @Sunrise = @SalaahDate + '08:21'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd =  @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191221'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:38'
SET @MaghAd = @SalaahDate + '15:51'
SET @IshAd = @SalaahDate + '17:31'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191222'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:37'
SET @Sunrise = @SalaahDate + '08:22'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191223'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:39'
SET @MaghAd = @SalaahDate + '15:52'
SET @IshAd = @SalaahDate + '17:32'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191224'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:38'
SET @Sunrise = @SalaahDate + '08:23'
SET @ZuhrAd = @SalaahDate + '12:10'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:53'
SET @IshAd = @SalaahDate + '17:33'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191225'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:12'
SET @AsrAd = @SalaahDate + '13:40'
SET @MaghAd = @SalaahDate + '15:54'
SET @IshAd = @SalaahDate + '17:34'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191226'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:12'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191227'
SET @HijriDay = 1
SET @HijriMonth = 7
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:13'
SET @AsrAd = @SalaahDate + '13:41'
SET @MaghAd = @SalaahDate + '15:55'
SET @IshAd = @SalaahDate + '17:35'
SET @JumAd = @SalaahDate + '12:30'
SET @JumIq = @SalaahDate + '13:00'
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191228'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:13'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '15:56'
SET @IshAd = @SalaahDate + '17:36'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191229'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:14'
SET @AsrAd = @SalaahDate + '13:42'
SET @MaghAd = @SalaahDate + '15:57'
SET @IshAd = @SalaahDate + '17:37'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191230'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:14'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '15:58'
SET @IshAd = @SalaahDate + '17:38'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

SET @SalaahDate = '20191231'
SET @HijriDay = @HijriDay + 1
SET @FajrAd = @SalaahDate + '06:39'
SET @Sunrise = @SalaahDate + '08:24'
SET @ZuhrAd = @SalaahDate + '12:15'
SET @AsrAd = @SalaahDate + '13:43'
SET @MaghAd = @SalaahDate + '15:59'
SET @IshAd = @SalaahDate + '17:39'
SET @JumAd = NULL
SET @JumIq = NULL
INSERT INTO #TempYearSalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)

end

IF OBJECT_ID('dbo.DailySalaahTimes', 'U') IS NOT NULL 
  DROP TABLE dbo.DailySalaahTimes; 

Create TABLE DailySalaahTimes
(
	Id INT IDENTITY(1,1),
	DateDay INT NOT NULL,
	DateMonth INT NOT NULL,
	Fajr VARCHAR(10) NOT NULL,
	Sunrise VARCHAR(10) NOT NULL,
	Zuhr VARCHAR(10) NOT NULL,
	Asr VARCHAR(10) NOT NULL,
	Maghrib VARCHAR(10) NOT NULL,
	Isha VARCHAR(10) NOT NULL
)

INSERT INTO DailySalaahTimes (DateDay, DateMonth, Fajr, Sunrise, Zuhr, Asr, Maghrib, Isha)
	SELECT	DAY(SalaahDate), 
			MONTH(SalaahDate), 
			(SELECT CONVERT(VARCHAR(5),FajrAdhan,108)),
			(SELECT CONVERT(VARCHAR(5),Sunrise,108)),
			(SELECT CONVERT(VARCHAR(5),ZuhrAdhan,108)),
			(SELECT CONVERT(VARCHAR(5),AsrAdhan,108)),
			(SELECT CONVERT(VARCHAR(5),MaghribAdhan,108)),
			(SELECT CONVERT(VARCHAR(5),IshaAdhan,108))
    FROM #TempYearSalaahTimes
	ORDER BY MONTH(SalaahDate), DAY(SalaahDate)	

SELECT * FROM DailySalaahTimes
SELECT * FROM SalaahJamaatTimes

DROP TABLE #TempYearSalaahTimes

--DROP TABLE SalaahTimes

COMMIT TRANSACTION