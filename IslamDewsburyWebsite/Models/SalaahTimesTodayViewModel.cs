using CoreLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

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
            this.FajrAdhan = GetTime(salaahTime.FajrAdhan);
            this.FajrIqamah = GetTime(salaahTime.FajrIqamah);
            this.Sunrise = GetTime(salaahTime.Sunrise);
            this.ZuhrAdhan = GetTime(salaahTime.ZuhrAdhan);
            this.AsrAdhan = GetTime(salaahTime.AsrAdhan);
            this.AsrIqamah = GetTime(salaahTime.AsrIqamah);
            this.MaghribAdhan = GetTime(salaahTime.MaghribAdhan);
            this.MaghribIqamah = GetTime(salaahTime.MaghribIqamah);
            this.IshaAdhan = GetTime(salaahTime.IshaAdhan);
            this.IshaIqamah = GetTime(salaahTime.IshaIqamah);

            if (salaahTime.JummahKhutbah.HasValue)
            {
                this.JummahKhutbah = GetTime(salaahTime.JummahKhutbah.Value);
                this.JummahSalaah = GetTime(salaahTime.JummahIqamah.Value);
                this.IsJummah = true;
            }
            else
            {
                this.ZuhrIqamah = GetTime(salaahTime.ZuhrIqamah.Value);
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

        private string GetTime(DateTime input)
        {
            return input.ToString("HH:mm");
        }
    }
}