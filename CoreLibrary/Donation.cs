using System;

namespace CoreLibrary
{
    public class Donation
    {
        public string PaypalDonationId { get; set; }

        public string PaypalDirectDebitPlanId { get; set; }

        public double Amount { get; set; }

        public bool CoveringProcessingFee { get; set; }

        public bool ClaimGiftAid { get; set; }

        public int PaymentType { get; set; }

        public string Title { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string CompanyName { get; set; }

        public string EmailAddress { get; set; }

        public string ContactNo { get; set; }

        public string AddressLine1 { get; set; }

        public string AddressLine2 { get; set; }

        public string City { get; set; }

        public string Country { get; set; }

        public string PostCode { get; set; }
    }
}
