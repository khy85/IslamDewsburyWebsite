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
                PaypalDirectDebitPlanId = donationDetails.PaypalDirectDebitPlanId,
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

        public void UpdateDonationStatus(int id, string status)
        {
            this.dbConnection.Execute(@" UPDATE [dbo].[Donation] SET DonationStatus = @Status WHERE Id = @Id;",
                           new { Id = id, Status = status });
        }

        public void UpdateOneOffDonationPaypalReference(int id, string paypalReference)
        {
            this.dbConnection.Execute(@" UPDATE [dbo].[Donation] SET PaypalDonationId = @PaypalDonationId WHERE Id = @Id;",
                            new { Id = id, PaypalDonationId = paypalReference });
        }

        public void UpdateAgreementToken(int id, string agreementToken)
        {
            this.dbConnection.Execute(@" UPDATE [dbo].[Donation] SET PaypalDirectDebitAgreementToken = @AgreementToken WHERE Id = @Id;",
                            new { Id = id, AgreementToken = agreementToken });
        }

        public void UpdateAgreementId(string token, string agreementId)
        {
            this.dbConnection.Execute(@" UPDATE [dbo].[Donation] SET PaypalDirectDebitAgreementId = @AgreementId WHERE PaypalDirectDebitAgreementToken = @Token;",
                            new { Token = token, AgreementId = agreementId });
        }

        public DonationResult GetDonationDetailsByPaypalId(string paypalId)
        {
            var sql = "SELECT Id, Amount, PaymentType, FirstName FROM Donation WHERE PaypalDonationId = '" + paypalId + "'";
            return this.dbConnection.Query<DonationResult>(sql).SingleOrDefault();
        }

        public DonationResult GetDonationDetailsByToken(string token)
        {
            var sql = "SELECT Id, Amount, PaymentType, FirstName FROM Donation WHERE PaypalDirectDebitAgreementToken = '" + token + "'";
            return this.dbConnection.Query<DonationResult>(sql).SingleOrDefault();
        }

    }
}
