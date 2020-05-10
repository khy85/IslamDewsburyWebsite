using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class GenericViewModel : BaseViewModel
    {
        public GenericViewModel(SalaahTime salaahTimes, DateTime now, bool showRightBar, ActiveTab activeTab)
        {
            base.SetProperties(salaahTimes, now, showRightBar, activeTab);
        }
    }
}