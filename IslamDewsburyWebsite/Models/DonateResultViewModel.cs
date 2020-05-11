using CoreLibrary;
using System;

namespace IslamDewsburyWebsite.Models
{
    public class DonateResultViewModel : BaseViewModel
    {
        public DonateResultViewModel(SalaahTime salaahTimes, DateTime now, ActiveTab tab, PaymentType paymentType, double paymentMade, bool paymentSuccessful)
        {
            this.Payment = paymentMade;
            this.PaymentType = paymentType;
            this.PaymentSuccessful = paymentSuccessful;
            base.SetProperties(salaahTimes, now, true, tab);
        }

        public PaymentType PaymentType { get; set; }

        public double Payment { get; set; }

        public bool PaymentSuccessful { get; set; }
    }
}