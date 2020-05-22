using CoreLibrary;
using System;

namespace DataLayer
{
    public interface IDonationRepository
    {
        int SaveDonation(Donation donationDetails);

        void UpdateDonationStatus(string paypalId, string status);

        void UpdateDonationStatus(int id, string status);

        void UpdateAgreementToken(int id, string agreementToken);

        void UpdateAgreementId(string token, string agreementId);

        DonationResult GetDonationDetailsByPaypalId(string paypalId);

        DonationResult GetDonationDetailsByToken(string token);
    }
}
