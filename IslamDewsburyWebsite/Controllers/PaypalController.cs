using CoreLibrary;
using IslamDewsburyWebsite.Helper;
using IslamDewsburyWebsite.Models;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    public class PaypalController : BaseController
    {
        private Payment payment;

        [HttpPost]
        public ActionResult PaymentWithPaypal(DonateViewModel donateViewModel)
        {
            if (!ModelState.IsValid)
                return View("~/Views/Home/Donate.cshtml", donateViewModel);

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            switch (donateViewModel.Donation.PaymentType)
            {
                case PaymentType.OneOff:
                    return OneOffPayment(donateViewModel, apiContext);
                case PaymentType.Monthly:
                    return DirectDebit(donateViewModel, apiContext);
                case PaymentType.RamadanTenNights:
                    DateTime endDate = new DateTime(2022, 5, 1);
                    return TenNights(donateViewModel, apiContext, endDate, PaymentType.RamadanTenNights);
                //case PaymentType.DhulHijjahTenDays:
                //    DateTime endDate = new DateTime(2020, 7, 31);
                //    return TenNights(donateViewModel, apiContext, endDate, PaymentType.DhulHijjahTenDays);
            }

            return View("~/Views/Home/Donate.cshtml", donateViewModel);
        }

        public ActionResult ReturnOneOffPaypalPayment(string payerId, string paymentId)
        {
            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            try
            {
                var executedPayment = ExecutePayment(apiContext, payerId, paymentId);
            }
            catch (Exception ex)
            {
                DonationRepo.UpdateDonationStatus(paymentId, "Failed - Error");
                return RedirectOneOffPayment(false, paymentId);
            }

            DonationRepo.UpdateDonationStatus(paymentId, "Set-up");

            return RedirectOneOffPayment(true, paymentId);
        }

        public ActionResult CancelOneOffPaypalPayment(string payerId, string paymentId)
        {
            DonationRepo.UpdateDonationStatus(paymentId, "Cancelled");

            return RedirectOneOffPayment(false, paymentId);
        }

        public ActionResult ReturnDdPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            var agreement = new Agreement { token = token };
            var executedAgreement = agreement.Execute(apiContext);
            DonationRepo.UpdateAgreementId(token, executedAgreement.id);

            DonationRepo.UpdateDonationStatus(result.Id, "Set-up");

            return RedirectDirectDebit(true, result);
        }

        public ActionResult CancelDdPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            DonationRepo.UpdateDonationStatus(result.Id, "Cancelled");

            return RedirectDirectDebit(false, result);
        }

        public ActionResult ReturnTenNightsPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            var agreement = new Agreement { token = token };
            var executedAgreement = agreement.Execute(apiContext);
            DonationRepo.UpdateAgreementId(token, executedAgreement.id);

            DonationRepo.UpdateDonationStatus(result.Id, "Set-up");

            return RedirectDirectDebit(true, result);
        }

        public ActionResult CancelTenNightsPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            DonationRepo.UpdateDonationStatus(result.Id, "Cancelled");

            return RedirectDirectDebit(false, result);
        }

        private int SaveDonatorDetails(DonateViewModel donate, string paypalDirectDebitPlanId)
        {
            Donation donation = new Donation
            {
                PaypalDirectDebitPlanId = paypalDirectDebitPlanId,
                Amount = donate.Donation.FinalAmount.Value,
                CoveringProcessingFee = donate.Donation.CoveringProcessingFee,
                ClaimGiftAid = donate.Donation.ClaimGiftAid,
                PaymentType = (int)donate.Donation.PaymentType,
                Title = donate.Donator.Title.ToString(),
                FirstName = donate.Donator.FirstName,
                LastName = donate.Donator.LastName,
                CompanyName = donate.Donator.CompanyName,
                EmailAddress = donate.Donator.EmailAddress,
                ContactNo = donate.Donator.ContactNo,
                AddressLine1 = donate.Donator.AddressLine1,
                AddressLine2 = donate.Donator.AddressLine2,
                City = donate.Donator.City,
                Country = donate.Donator.Country,
                PostCode = donate.Donator.PostCode
            };

            return DonationRepo.SaveDonation(donation);
        }

        #region Direct Debit private methods

        private ActionResult DirectDebit(DonateViewModel donateViewModel, APIContext apiContext)
        {
            // Create Plan
            Plan ddPlan = CreateDirectDebitPlan(donateViewModel, apiContext);
            ddPlan = Plan.Create(apiContext, ddPlan);
            int invoiceNo = this.SaveDonatorDetails(donateViewModel, ddPlan.id);

            // Activate the plan
            PatchRequest patch = ActivateDirectDebitPlan();
            ddPlan.Update(apiContext, patch);
            DonationRepo.UpdateDonationStatus(invoiceNo, "Plan activated");

            // Create Billing agreement
            var agreement = new Agreement
            {
                name = ddPlan.name,
                description = ddPlan.description,
                start_date = DateTime.Now.AddMonths(1).ToString("yyyy-MM-ddTHH:mm:ssZ"), // Start monthly from next month as instant payment will have taken already
                plan = new Plan
                {
                    id = ddPlan.id
                },
                payer = new Payer
                {
                    payment_method = "paypal"
                }
            };

            var createdAgreement = agreement.Create(apiContext);
            DonationRepo.UpdateAgreementToken(invoiceNo, createdAgreement.token);
            DonationRepo.UpdateDonationStatus(invoiceNo, "DD set-up");

            // Find the approval URL to send our user to
            var approvalUrl = createdAgreement.links.FirstOrDefault(x => x.rel.Equals("approval_url", StringComparison.OrdinalIgnoreCase));

            return Redirect(approvalUrl.href);
        }

        private Plan CreateDirectDebitPlan(DonateViewModel donateViewModel, APIContext apiContext)
        {
            return new Plan
            {
                name = $"Monthly DD - {donateViewModel.Donator.FirstName} {donateViewModel.Donator.LastName} - £{donateViewModel.Donation.FinalAmount}",
                description = "Monthly donation to Islam Dewsbury - £" + donateViewModel.Donation.FinalAmount.ToString(),
                type = "infinite",
                payment_definitions = new List<PaymentDefinition>
                {
                    new PaymentDefinition
                    {
                        name = "Islam Dewsbury DD",
                        type = "REGULAR",
                        frequency = "MONTH",
                        frequency_interval = "1",
                        amount = new Currency
                        {
                            currency = "GBP",
                            value = donateViewModel.Donation.FinalAmount.ToString()
                        },
                        cycles = "0"
                    }
                },
                merchant_preferences = new MerchantPreferences
                {
                    // the initial payment
                    setup_fee = new Currency
                    {
                        currency = "GBP",
                        value = donateViewModel.Donation.FinalAmount.ToString()
                    },
                    return_url = Url.Action("ReturnDdPaypalPayment", "Paypal", null, Request.Url.Scheme),
                    cancel_url = Url.Action("CancelDdPaypalPayment", "Paypal", null, Request.Url.Scheme)
                }
            };
        }

        private PatchRequest ActivateDirectDebitPlan()
        {
            return new PatchRequest
            {
                new Patch
                {
                    op = "replace",
                    path = "/",
                    value = new Plan
                    {
                        state = "ACTIVE"
                    }
                }
            };
        }

        private ActionResult RedirectDirectDebit(bool paymentSuccessful, DonationResult donationResult)
        {
            var paymentType = (PaymentType)donationResult.PaymentType;
            string paymentMade = donationResult.Amount.ToString("#.##");
            string donor = donationResult.FirstName;

            DonateResultViewModel viewModel
                = new DonateResultViewModel(TodaySalaahTime, DateTime.Now, ActiveTab.DonationStatus, paymentType, paymentMade, paymentSuccessful, donor);

            return View("PaymentResult", viewModel);
        }

        #endregion

        #region 10 Nights private methods

        private ActionResult TenNights(DonateViewModel donateViewModel, APIContext apiContext, DateTime endDate, PaymentType paymentType)
        {
            // Figure out how many days left as part of these 10 days
            DateTime todayDate = DateTime.Today;
            int totalDays = (endDate - todayDate).Days;

            // Create Plan
            Plan tenNightsPlan = CreateTenNightsPlan(donateViewModel, apiContext, paymentType, totalDays);
            tenNightsPlan = Plan.Create(apiContext, tenNightsPlan);
            int invoiceNo = this.SaveDonatorDetails(donateViewModel, tenNightsPlan.id);

            // Activate the plan
            PatchRequest patch = ActivateTenNightsPlan();
            tenNightsPlan.Update(apiContext, patch);
            DonationRepo.UpdateDonationStatus(invoiceNo, "Plan activated");

            // Create Billing agreement
            var agreement = new Agreement
            {
                name = tenNightsPlan.name,
                description = tenNightsPlan.description,
                start_date = DateTime.Today.AddDays(1).AddHours(23).ToString("yyyy-MM-ddTHH:mm:ssZ"), // Start daily from tomorrow as instant payment is taken out
                plan = new Plan
                {
                    id = tenNightsPlan.id
                },
                payer = new Payer
                {
                    payment_method = "paypal"
                }
            };

            var createdAgreement = agreement.Create(apiContext);
            DonationRepo.UpdateAgreementToken(invoiceNo, createdAgreement.token);
            DonationRepo.UpdateDonationStatus(invoiceNo, paymentType + " set-up");

            // Find the approval URL to send our user to
            var approvalUrl = createdAgreement.links.FirstOrDefault(x => x.rel.Equals("approval_url", StringComparison.OrdinalIgnoreCase));

            return Redirect(approvalUrl.href);
        }

        private Plan CreateTenNightsPlan(DonateViewModel donateViewModel, APIContext apiContext, PaymentType paymentType, int totalDays)
        {
            string monthRef = paymentType == PaymentType.RamadanTenNights ? "Ramadaan Last 10 Nights" : "Dhul Hijjah 10 Days";

            return new Plan
            {
                name = $"{monthRef} DD - {donateViewModel.Donator.FirstName} {donateViewModel.Donator.LastName} - £{donateViewModel.Donation.FinalAmount}",
                description = $"{monthRef} to Islam Dewsbury - £{donateViewModel.Donation.FinalAmount.ToString()}",
                type = "fixed",
                payment_definitions = new List<PaymentDefinition>
                {
                    new PaymentDefinition
                    {
                        name = "Islam Dewsbury DD",
                        type = "REGULAR",
                        frequency = "DAY",
                        frequency_interval = "1",
                        amount = new Currency
                        {
                            currency = "GBP",
                            value = donateViewModel.Donation.FinalAmount.ToString()
                        },
                        cycles = (totalDays - 1).ToString()
                    }
                },
                merchant_preferences = new MerchantPreferences
                {
                    // the initial payment
                    setup_fee = new Currency
                    {
                        currency = "GBP",
                        value = donateViewModel.Donation.FinalAmount.ToString()
                    },
                    return_url = Url.Action("ReturnTenNightsPaypalPayment", "Paypal", null, Request.Url.Scheme),
                    cancel_url = Url.Action("CancelTenNightsPaypalPayment", "Paypal", null, Request.Url.Scheme)
                }
            };
        }

        private PatchRequest ActivateTenNightsPlan()
        {
            return new PatchRequest
            {
                new Patch
                {
                    op = "replace",
                    path = "/",
                    value = new Plan
                    {
                        state = "ACTIVE"
                    }
                }
            };
        }

        private ActionResult RedirectTenNights(bool paymentSuccessful, DonationResult donationResult)
        {
            var paymentType = (PaymentType)donationResult.PaymentType;
            string paymentMade = donationResult.Amount.ToString("#.##");
            string donor = donationResult.FirstName;

            DonateResultViewModel viewModel
                = new DonateResultViewModel(TodaySalaahTime, DateTime.Now, ActiveTab.DonationStatus, paymentType, paymentMade, paymentSuccessful, donor);

            return View("PaymentResult", viewModel);
        }

        #endregion

        #region One-off private methods

        private ActionResult OneOffPayment(DonateViewModel donateViewModel, APIContext apiContext)
        {
            string paypalId = string.Empty;
            try
            {
                int invoiceNo = this.SaveDonatorDetails(donateViewModel, string.Empty);

                var createdPayment = this.CreatePayment(apiContext, donateViewModel.Donation, invoiceNo);
                paypalId = createdPayment.id;
                DonationRepo.UpdateOneOffDonationPaypalReference(invoiceNo, createdPayment.id);

                var approvalUrl = createdPayment.links.FirstOrDefault(x => x.rel.Equals("approval_url", StringComparison.OrdinalIgnoreCase));

                return Redirect(approvalUrl.href);
            }
            catch (Exception ex)
            {
                DonationRepo.UpdateDonationStatus(paypalId, "Failed - Error");
                return RedirectOneOffPayment(false, paypalId);
            }
        }

        private Payment CreatePayment(APIContext apiContext, DonationViewModel donationViewModel, int donationId)
        {
            //create itemlist and add item objects to it  
            var itemList = new ItemList()
            {
                items = new List<Item>()
            };

            //Adding Item Details like name, currency, price etc  
            itemList.items.Add(new Item()
            {
                name = "Donation",
                currency = "GBP",
                price = donationViewModel.InitialAmount.ToString(),
                quantity = "1",
                sku = "sku"
            });

            var payer = new Payer() { payment_method = "paypal" };

            // Configure Redirect Urls here with RedirectUrls object  
            var redirUrls = new RedirectUrls()
            {
                cancel_url = Url.Action("CancelOneOffPaypalPayment", "Paypal", null, Request.Url.Scheme),
                return_url = Url.Action("ReturnOneOffPaypalPayment", "Paypal", null, Request.Url.Scheme),
            };


            // Adding Tax, shipping and Subtotal details  
            var details = new Details()
            {
                handling_fee = donationViewModel.CoveringProcessingFee ? donationViewModel.ProcessingFee.ToString() : "0.00",
                subtotal = donationViewModel.InitialAmount.ToString()
            };

            //Final amount with details  
            var amount = new Amount()
            {
                currency = "GBP",
                total = donationViewModel.FinalAmount.ToString(),
                details = details
            };

            var transactionList = new List<Transaction>();

            transactionList.Add(new Transaction()
            {
                description = "Donation to Islam Dewsbury - £" + donationViewModel.FinalAmount.ToString(),
                //invoice_number = donationId.ToString("000000"),
                amount = amount,
                item_list = itemList
            });

            this.payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };

            return this.payment.Create(apiContext);
        }

        private Payment ExecutePayment(APIContext apiContext, string payerId, string paymentId)
        {
            var paymentExecution = new PaymentExecution()
            {
                payer_id = payerId
            };

            this.payment = new Payment()
            {
                id = paymentId
            };

            return this.payment.Execute(apiContext, paymentExecution);
        }

        private ActionResult RedirectOneOffPayment(bool paymentSuccessful, string paypalPaymentId)
        {
            string paymentMade = string.Empty;
            PaymentType paymentType = PaymentType.OneOff;
            string donor = string.Empty;

            DonationResult result = DonationRepo.GetDonationDetailsByPaypalId(paypalPaymentId);
            if (result != null)
            {
                paymentType = (PaymentType)result.PaymentType;
                paymentMade = result.Amount.ToString("#.##");
                donor = result.FirstName;
            }

            DonateResultViewModel viewModel
                = new DonateResultViewModel(TodaySalaahTime, DateTime.Now, ActiveTab.DonationStatus, paymentType, paymentMade, paymentSuccessful, donor);

            return View("PaymentResult", viewModel);
        }

        #endregion
    }
}