using CoreLibrary;
using System;
using System.Collections.Generic;

namespace IslamDewsburyWebsite.Models
{
    public class IndexViewModel : BaseViewModel
    {
        public IndexViewModel(SalaahTime salaahTimes, DateTime now)
        {
            base.SetProperties(salaahTimes, now, true, ActiveTab.Home);
            this.CarouselImages = new List<CarouselViewModel>();
            this.LatestNewsAndEvents = new List<LatestNewsEventsViewModel>();
        }

        public List<CarouselViewModel> CarouselImages { get; set; }

        public List<LatestNewsEventsViewModel> LatestNewsAndEvents { get; set; }

    }
}