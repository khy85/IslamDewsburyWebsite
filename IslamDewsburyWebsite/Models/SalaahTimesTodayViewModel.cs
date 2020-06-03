using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class SalaahTimesTodayViewModel
    {
        public SalaahTimesTodayViewModel() { }

        public SalaahTimesTodayViewModel(SalaahTime salaahTime)
        {
            if (salaahTime == null)
                return;

            this.HighlightedDate = salaahTime.SalaahDate;
            this.HijriDate = salaahTime.HijriDate;
            this.HijriMonth = salaahTime.HijriMonth;
            this.DisplayedDate = salaahTime.SalaahDate.ToString("ddd dd MMM yyyy");
            this.FajrAdhan = salaahTime.FajrAdhan;
            this.FajrIqamah = salaahTime.FajrIqamah;
            this.Sunrise = salaahTime.Sunrise;
            this.ZuhrAdhan = salaahTime.ZuhrAdhan;
            this.AsrAdhan = salaahTime.AsrAdhan;
            this.AsrIqamah = salaahTime.AsrIqamah;
            this.MaghribAdhan = salaahTime.MaghribAdhan;
            this.MaghribIqamah = salaahTime.MaghribIqamah;
            this.IshaAdhan = salaahTime.IshaAdhan;
            this.IshaIqamah = salaahTime.IshaIqamah;

            if (!string.IsNullOrEmpty(salaahTime.JummahKhutbah))
            {
                this.JummahKhutbah = salaahTime.JummahKhutbah;
                this.JummahSalaah = salaahTime.JummahIqamah;
                this.IsJummah = true;
            }
            else
            {
                this.ZuhrIqamah = salaahTime.ZuhrIqamah;
            }

            System.Globalization.DateTimeFormatInfo mfi = new System.Globalization.DateTimeFormatInfo();
            this.DownloadUrl = String.Format("/Content/MonthlySalaahTimetable/{0} {1}.jpg", mfi.GetMonthName(salaahTime.SalaahDate.Month), salaahTime.SalaahDate.Year);
        }

        public DateTime? HighlightedDate { get; set; }

        public int? HijriDate { get; set; }

        public string HijriMonth { get; set; }

        public string DisplayedDate { get; set; }

        public string FajrAdhan { get; set; }

        public string FajrIqamah { get; set; }

        public string Sunrise { get; set; }

        public string ZuhrAdhan { get; set; }

        public string ZuhrIqamah { get; set; }

        public string AsrAdhan { get; set; }

        public string AsrIqamah { get; set; }

        public string MaghribAdhan { get; set; }

        public string MaghribIqamah { get; set; }

        public string IshaAdhan { get; set; }

        public string IshaIqamah { get; set; }

        public bool IsJummah { get; set; }

        public string JummahKhutbah { get; set; }

        public string JummahSalaah { get; set; }

        public string DownloadUrl { get; set; }
    }
}