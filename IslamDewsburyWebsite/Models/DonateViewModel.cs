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
            base.SetProperties(salaahTimes, now, false, ActiveTab.Home);
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

        [Required]
        public double? InitialAmount { get; set; }

        [Required]
        public double? FinalAmount { get; set; }

        [Required]
        public double ProcessingFee { get; set; }

        [Required]
        public bool CoveringProcessingFee { get; set; }

        [Required]
        public PaymentType PaymentType { get; set; }

        [Required]
        public bool ClaimGiftAid { get; set; }
    }

    public class DonatorDetailsViewModel
    {
        [Required]
        public Title Title { get; set; }

        [Required]
        public string FirstName { get; set; }

        [Required]
        public string LastName { get; set; }

        public string CompanyName { get; set; }

        [Required]
        public string EmailAddress { get; set; }

        [Required]
        public string ContactNo { get; set; }

        [Required]
        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string City { get; set; }

        public string Country { get; set; }

        [Required]
        public string PostCode { get; set; }
    }

    public enum Title
    {
        Mr,
        Mrs,
        Ms, 
        Miss,
        Dr,
        Prof
    }

    public enum PaymentType
    {
        OneOff,
        Monthly,
        LastTenNights
    }
}