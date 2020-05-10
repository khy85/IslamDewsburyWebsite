using CoreLibrary;
using Dapper;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DataLayer
{
    public class DonationRepository : IDonationRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public int SaveDonation(Donation donationDetails)
        {
            var procedure = "AddDonation";
            var values = new
            {
                Amount = donationDetails.Amount,
                ProcessingFeeCovered = donationDetails.CoveringProcessingFee,
                PaymentType = donationDetails.PaymentType,
                ClaimGiftAid = donationDetails.ClaimGiftAid,
                Title = donationDetails.Title,
                FirstName = donationDetails.FirstName,
                LastName = donationDetails.LastName,
                CompanyName = donationDetails.CompanyName,
                EmailAddress = donationDetails.EmailAddress,
                ContactNo = donationDetails.ContactNo,
                AddressLine1 = donationDetails.AddressLine1,
                AddressLine2 = donationDetails.AddressLine2,
                City = donationDetails.City,
                Country = donationDetails.Country,
                Postcode = donationDetails.PostCode,
                DonationStatus = "Created"
            };

            int resultId = this.dbConnection.ExecuteScalar<int>(procedure, values, commandType: CommandType.StoredProcedure);

            return resultId;
        }

        public void UpdateDonationStatus(string paypalId, string status)
        {
            this.dbConnection.Execute(@" UPDATE [dbo].[Donation] SET DonationStatus = @Status WHERE PaypalDonationId = @PaypalDonationId;",
                            new { PaypalDonationId = paypalId, Status = status });
        }
        
    }
}
