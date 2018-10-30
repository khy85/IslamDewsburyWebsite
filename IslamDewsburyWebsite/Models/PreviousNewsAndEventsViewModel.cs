using CoreLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IslamDewsburyWebsite.Models
{
    public class PreviousNewsAndEventsViewModel : BaseViewModel
    {
        public PreviousNewsAndEventsViewModel(SalaahTime salaahTimes, DateTime now)
        {
            base.SetProperties(salaahTimes, now, true, ActiveTab.Events);
            this.NewsEvents = new List<LatestNewsEventsViewModel>();
        }

        public List<LatestNewsEventsViewModel> NewsEvents { get; set; }
    }
}