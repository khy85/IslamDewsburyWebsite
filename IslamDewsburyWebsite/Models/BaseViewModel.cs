using CoreLibrary;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace IslamDewsburyWebsite.Models
{
    public abstract class BaseViewModel
    {
        public string EnglishDate { get; set; }

        public string ArabicDate { get; set; }

        public bool ShowRightBar { get; set; }

        public SalaahTimesTodayViewModel SalaahTimes { get; set; }

        public ActiveTab ActiveTab { get; set; }

        public void SetProperties(SalaahTime salaahTimes, DateTime now, bool showRightBar, ActiveTab activeTab)
        {
            this.EnglishDate = now.ToString("dddd dd MMM yyyy");
            this.ShowRightBar = showRightBar;
            this.ActiveTab = activeTab;
            this.SalaahTimes = new SalaahTimesTodayViewModel(salaahTimes);  // Set Salaah Times

            if (salaahTimes == null)
            {
                this.ShowRightBar = false;
                return;
            }

            if (salaahTimes.HijriDate.HasValue)
            {
                this.ArabicDate = String.Format("{0}{1} {2} {3} AH",
                                            salaahTimes.HijriDate,
                                            GetDateEnding(salaahTimes.HijriDate.Value),
                                            salaahTimes.HijriMonth,
                                            salaahTimes.HijriYear);
            }
            else
            {
                Calendar umAlQura = new UmAlQuraCalendar();
                this.ArabicDate = String.Format("{0}{1} {2} {3} AH",
                                            umAlQura.GetDayOfMonth(now),
                                            GetDateEnding(umAlQura.GetDayOfMonth(now)),
                                            GetArabicMonth(umAlQura.GetMonth(now)),
                                            umAlQura.GetYear(now));
            }
        }

        private string GetDateEnding(int dayOfMonth)
        {
            if (dayOfMonth == 1 || dayOfMonth == 21 || dayOfMonth == 31)
                return "st";
            else if (dayOfMonth == 2 || dayOfMonth == 22)
                return "nd";
            else if (dayOfMonth == 3 || dayOfMonth == 23)
                return "rd";
            else
                return "th";
        }

        private string GetArabicMonth(int month)
        {
            switch (month)
            {
                case 1:
                    return "Muharram";
                case 2:
                    return "Safar";
                case 3:
                    return "Rabee Al-Awwal";
                case 4:
                    return "Rabee Al-Thany";
                case 5:
                    return "Jumad Al-Awwal";
                case 6:
                    return "Jumad Al-Thany";
                case 7:
                    return "Rajab";
                case 8:
                    return "Sha'aban";
                case 9:
                    return "Ramadan";
                case 10:
                    return "Shawwal";
                case 11:
                    return "Zul-Qaadah";
                case 12:
                    return "Zul-Hijjah";
            }

            return String.Empty;
        }
    }

    public enum ActiveTab
    {
        None = 0,
        Home = 1,
        AboutUs = 2,
        Classes = 3,
        Sisters = 4,
        Madrassah = 5,
        Events = 6,
        ContactUs = 7,
        Services = 8,
        Donate = 9,
        DonationStatus = 10
    }
}