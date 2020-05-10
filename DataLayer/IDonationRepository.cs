using CoreLibrary;
using System;

namespace DataLayer
{
    public interface IDonationRepository
    {
        int SaveDonation(Donation donationDetails);

        void UpdateDonationStatus(string paypalId, string status);
    }
}
