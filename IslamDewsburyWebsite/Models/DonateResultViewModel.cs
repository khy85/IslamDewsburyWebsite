using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class DonateResultViewModel : BaseViewModel
    {
        public DonateResultViewModel(SalaahTime salaahTimes, DateTime now, ActiveTab tab, PaymentType paymentType, 
            string paymentMade, bool paymentSuccessful, string donorName)
        {
            this.Payment = paymentMade;
            this.PaymentType = paymentType;
            this.PaymentSuccessful = paymentSuccessful;
            this.DonorName = donorName;
            base.SetProperties(salaahTimes, now, true, tab);
        }

        public PaymentType PaymentType { get; set; }

        public string Payment { get; set; }

        public bool PaymentSuccessful { get; set; }

        public string DonorName { get; set; }
    }
}