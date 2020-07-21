using CoreLibrary;
using System;
using System.ComponentModel.DataAnnotations;

namespace IslamDewsburyWebsite.Models
{
    public class DonateViewModel : BaseViewModel
    {
        public DonateViewModel()
        {
            Donation = new DonationViewModel();
            Donator = new DonatorDetailsViewModel();
        }

        public DonateViewModel(SalaahTime salaahTimes, DateTime now, PaymentType paymentType)
        {
            Donation = new DonationViewModel(paymentType);
            Donator = new DonatorDetailsViewModel();
            SetProperties(salaahTimes, now);
        }

        public DonationViewModel Donation { get; set; }

        public DonatorDetailsViewModel Donator { get; set; }

        public void SetProperties(SalaahTime salaahTimes, DateTime now)
        {
            base.SetProperties(salaahTimes, now, false, ActiveTab.Donate);
        }
    }

    public class DonationViewModel
    {
        public DonationViewModel() { }

        public DonationViewModel(PaymentType paymentType)
        {
            PaymentType = paymentType;
            InitialAmount = 5.00;
        }

        [Required(ErrorMessage = "Required")]
        public double? InitialAmount { get; set; }

        [Required(ErrorMessage = "Required")]
        public double? FinalAmount { get; set; }

        [Required(ErrorMessage = "Required")]
        public double ProcessingFee { get; set; }

        [Required(ErrorMessage = "Required")]
        public bool CoveringProcessingFee { get; set; }

        [Required(ErrorMessage = "Required")]
        public PaymentType PaymentType { get; set; }

        [Required(ErrorMessage = "Required")]
        public bool ClaimGiftAid { get; set; }
    }

    public class DonatorDetailsViewModel
    {
        [Required(ErrorMessage = "Required")]
        public Title Title { get; set; }

        [Required(ErrorMessage = "Required")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "Required")]
        public string LastName { get; set; }

        public string CompanyName { get; set; }

        [Required(ErrorMessage = "Required")]
        [EmailAddress]
        public string EmailAddress { get; set; }

        [Required(ErrorMessage = "Required")]
        [Phone]
        public string ContactNo { get; set; }

        [Required(ErrorMessage = "Required")]
        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string City { get; set; }

        public string Country { get; set; }

        [Required(ErrorMessage = "Required")]
        public string PostCode { get; set; }
    }

    public enum Title
    {
        Mr = 1,
        Mrs = 2,
        Ms = 3,
        Miss = 4,
        Dr = 5,
        Prof = 6
    }

    public enum PaymentType
    {
        OneOff = 1,
        Monthly = 2,
        RamadanTenNights = 3,
        DhulHijjahTenDays = 4
    }
}