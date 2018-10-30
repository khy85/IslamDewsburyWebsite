using CoreLibrary;
using System;
using System.Collections.Generic;

namespace IslamDewsburyWebsite.Models
{
    public class AdminSalaahTimesViewModel : BaseViewModel
    {
        public AdminSalaahTimesViewModel(SalaahTime salaahTimes, DateTime now, MonthlySalaahTimesViewModel monthlySalaahTimes)
        {
            base.SetProperties(salaahTimes, now, false, ActiveTab.None);
            this.MonthlySalaahTimes = monthlySalaahTimes;

            this.MonthNames = new List<MonthViewModel>()
            {
                new MonthViewModel(1, "January"),
                new MonthViewModel(2, "February"),
                new MonthViewModel(3, "March"),
                new MonthViewModel(4, "April"),
                new MonthViewModel(5, "May"),
                new MonthViewModel(6, "June"),
                new MonthViewModel(7, "July"),
                new MonthViewModel(8, "August"),
                new MonthViewModel(9, "September"),
                new MonthViewModel(10, "October"),
                new MonthViewModel(11, "November"),
                new MonthViewModel(12, "December")
            };

            this.DefaultMonthId = DateTime.Now.Month;

            this.YearDates = new List<int>()
            {
                DateTime.Now.Year,
                DateTime.Now.Year + 1,
                DateTime.Now.Year + 2,
            };
        }

        public List<MonthViewModel> MonthNames { get; set; }

        public List<int> YearDates { get; set; }

        public int DefaultMonthId { get; set; }

        public MonthlySalaahTimesViewModel MonthlySalaahTimes { get; set; }
    }

    public class MonthViewModel
    {
        public MonthViewModel(int monthId, string monthName)
        {
            this.MonthId = monthId;
            this.MonthName = monthName;
        }
        public string MonthName { get; set; }

        public int MonthId { get; set; }
    }

    public class MonthlySalaahTimesViewModel
    {
        public MonthlySalaahTimesViewModel()
        {

        }
    }
}