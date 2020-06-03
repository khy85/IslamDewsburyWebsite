/*
IF OBJECT_ID('RetrieveSalaahTimes', 'P') IS NOT NULL 
  DROP PROC RetrieveSalaahTimes; 
*/

CREATE PROCEDURE RetrieveSalaahTimes
(
	@SalaahDate datetime
)

AS

BEGIN

	SELECT 
		@SalaahDate As SalaahDate,
		jt.HijriDate,
		i.MonthName As HijriMonth,
		jt.HijriYear, 
		ds.Fajr As FajrAdhan,
		(SELECT CONVERT(VARCHAR(5),jt.Fajr,108)) As FajrIqamah,
		ds.Sunrise,
		ds.Zuhr As ZuhrAdhan,
		(SELECT CONVERT(VARCHAR(5),jt.Zuhr,108)) As ZuhrIqamah,
		ds.Asr As AsrAdhan,
		(SELECT CONVERT(VARCHAR(5),jt.Asr,108)) As AsrIqamah,
		ds.Maghrib As MaghribAdhan,
		ds.Maghrib As MaghribIqamah,
		ds.Isha As IshaAdhan,
		(SELECT CONVERT(VARCHAR(5),jt.Isha,108)) As IshaIqamah,
		(SELECT CONVERT(VARCHAR(5),jt.JummahKhutbah,108)) As JummahKhutbah,
		(SELECT CONVERT(VARCHAR(5),jt.JummahIqamah,108)) As JummahIqamah
	FROM DailySalaahTimes ds
	LEFT JOIN SalaahJamaatTimes jt ON ds.DateDay = DAY(jt.SalaahDate) AND ds.DateMonth = MONTH(jt.SalaahDate)
	LEFT JOIN IslamicMonths i on jt.HijriMonth = i.Id 
	WHERE ds.DateDay = DAY(@SalaahDate)
	AND ds.DateMonth = MONTH(@SalaahDate)

END
