using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class GenericTabbedViewModel : BaseViewModel
    {
        public GenericTabbedViewModel(SalaahTime salaahTimes, int tabNo, DateTime now, ActiveTab activeTab)
        {
            this.TabNumber = tabNo;
            base.SetProperties(salaahTimes, now, true, activeTab);
        }

        public int TabNumber { get; set; }
    }
}