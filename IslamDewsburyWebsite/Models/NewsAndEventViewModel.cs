using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class NewsAndEventViewModel : BaseViewModel
    { 
        public NewsAndEventViewModel(SalaahTime salaahTimes, DateTime now, LatestNewsEventsViewModel latestNewsEventsViewModel)
        {
            base.SetProperties(salaahTimes, now, true, ActiveTab.Events);
            this.LatestNewsEvents = latestNewsEventsViewModel;
        }

        public int Id { get; set; }

        public LatestNewsEventsViewModel LatestNewsEvents { get; set; }

    }
}