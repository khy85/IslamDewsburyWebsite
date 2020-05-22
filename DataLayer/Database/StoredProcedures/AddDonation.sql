/*
IF OBJECT_ID('AddDonation', 'P') IS NOT NULL 
  DROP PROC AddDonation; 
*/

CREATE PROCEDURE AddDonation
(
	@Amount float,
	@ProcessingFeeCovered bit,
	@PaymentType int,
	@ClaimGiftAid bit,
	@Title varchar(10),
	@FirstName varchar(200),
	@LastName varchar(200),
	@CompanyName varchar(200),
	@EmailAddress varchar(200),
	@ContactNo varchar(12),
	@AddressLine1 varchar(200),
	@AddressLine2 varchar(200),
	@City varchar(200),
	@Country varchar(200),
	@Postcode varchar(10),
	@PaypalDirectDebitPlanId varchar(100),
	@DonationStatus varchar(20)
)

AS

BEGIN

	INSERT INTO [dbo].[Donation] (PaypalDirectDebitPlanId, Amount, ProcessingFeeCovered, ClaimGiftAid, PaymentType, Title, FirstName, LastName, CompanyName,
									EmailAddress, ContactNo, AddressLine1, AddressLine2, City, Country, PostCode, DonationStatus)
	VALUES (@PaypalDirectDebitPlanId, @Amount, @ProcessingFeeCovered, @ClaimGiftAid, @PaymentType, @Title, @FirstName, @LastName, @CompanyName,
			@EmailAddress, @ContactNo, @AddressLine1, @AddressLine2, @City, @Country, @Postcode, @DonationStatus);

	SELECT @@IDENTITY;

END
