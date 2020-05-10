﻿IF OBJECT_ID('dbo.Donation', 'U') IS NOT NULL 
  DROP TABLE dbo.Donation; 

Create TABLE Donation
(
	Id INT IDENTITY(1,1),
	PaypalDonationId VARCHAR(100) NOT NULL,
	Amount FLOAT NOT NULL,
	ProcessingFeeCovered BIT NOT NULL,
	ClaimGiftAid BIT NOT NULL,
	PaymentType INT NOT NULL,
	Title VARCHAR(10) NOT NULL,
	FirstName VARCHAR(200) NOT NULL,
	LastName VARCHAR(200) NOT NULL,
	CompanyName VARCHAR(200) NULL,
	EmailAddress VARCHAR(100) NOT NULL,
	ContactNo VARCHAR(12) NOT NULL,
	AddressLine1 VARCHAR(200) NOT NULL,
	AddressLine2 VARCHAR(200) NULL,
	City VARCHAR(200) NOT NULL,
	Country VARCHAR(200) NOT NULL,
	PostCode VARCHAR(10) NOT NULL,
	DonationStatus VARCHAR(2) NOT NULL
)