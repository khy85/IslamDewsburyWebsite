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
            }

            return View("~/Views/Home/Donate.cshtml", donateViewModel);
        }

        public ActionResult ReturnOneOffPaypalPayment(string Cancel = null)
        {
            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            try
            {
                string payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId) || !string.IsNullOrEmpty(Cancel))
                    return RedirectOneOffPayment(false);

                // This function executes after receving all parameters for the payment  
                var guid = Request.Params["guid"];
                var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                //If executed payment failed then we will show payment failure message to user  
                if (executedPayment.state.ToLower() != "approved")
                {
                    UpdateDonationStatusByGuid("Failed - Paypal");

                    return RedirectOneOffPayment(false);
                }
            }
            catch (Exception ex)
            {
                UpdateDonationStatusByGuid("Failed - Error");
                return RedirectOneOffPayment(false);
            }

            UpdateDonationStatusByGuid("Set-up");
            return RedirectOneOffPayment(true);
        }

        public ActionResult ReturnDdPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            return RedirectOneOffPayment(false);
        }

        public ActionResult CancelDdPaypalPayment(string token)
        {
            DonationResult result = DonationRepo.GetDonationDetailsByToken(token);

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            var agreement = new Agreement { token = token };
            var executedAgreement = agreement.Execute(apiContext);
            DonationRepo.UpdateAgreementId(token, executedAgreement.id);

            UpdateDonationStatusByGuid("Set-up");
            return RedirectDirectDebit(true, result);
        }


        private int SaveDonatorDetails(DonateViewModel donate, string paypalDonationId, string paypalDirectDebitPlanId)
        {
            Donation donation = new Donation
            {
                PaypalDonationId = paypalDonationId,
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
            int invoiceNo = this.SaveDonatorDetails(donateViewModel, string.Empty, ddPlan.id);

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
                description = "Direct debit with Islam Dewsbury",
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
                            value = donateViewModel.Donation.InitialAmount.ToString()
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
                        value = donateViewModel.Donation.InitialAmount.ToString()
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

        #region One-off private methods

        private ActionResult OneOffPayment(DonateViewModel donateViewModel, APIContext apiContext)
        {
            try
            {
                string payerId = Request.Params["PayerID"];

                string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/Paypal/ReturnOneOffPaypalPayment?";

                var guid = Convert.ToString((new Random()).Next(100000));

                int invoiceNo = this.SaveDonatorDetails(donateViewModel, guid, string.Empty);

                var createdPayment = this.CreatePayment(apiContext, baseURI + "guid=" + guid, donateViewModel.Donation, invoiceNo);

                var links = createdPayment.links.GetEnumerator();
                string paypalRedirectUrl = null;

                while (links.MoveNext())
                {
                    Links lnk = links.Current;
                    if (lnk.rel.ToLower().Trim().Equals("approval_url"))
                    {
                        //saving the payapalredirect URL to which user will be redirected for payment  
                        paypalRedirectUrl = lnk.href;
                    }
                }

                Session.Add(guid, createdPayment.id);
                return Redirect(paypalRedirectUrl);
            }
            catch (Exception ex)
            {
                UpdateDonationStatusByGuid("Failed - Error");
                return RedirectOneOffPayment(false);
            }
        }

        private void UpdateDonationStatusByGuid(string status)
        {
            var guid = Request.Params["guid"];
            if (!string.IsNullOrEmpty(guid))
                DonationRepo.UpdateDonationStatus(guid, status);
        }

        private Payment CreatePayment(APIContext apiContext, string redirectUrl, DonationViewModel donationViewModel, int donationId)
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
                cancel_url = redirectUrl + "&Cancel=true",
                return_url = redirectUrl
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
                description = "Donation to Islam Dewsbury",
                invoice_number = donationId.ToString("000000"),
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

            // Create a payment using a APIContext  
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

        private ActionResult RedirectOneOffPayment(bool paymentSuccessful)
        {
            var guid = Request.Params["guid"];
            string paymentMade = string.Empty;
            PaymentType paymentType = PaymentType.OneOff;
            string donor = string.Empty;

            if (!string.IsNullOrEmpty(guid))
            {
                DonationResult result = DonationRepo.GetDonationDetailsByPaypalId(guid);
                if (result != null)
                {
                    paymentType = (PaymentType)result.PaymentType;
                    paymentMade = result.Amount.ToString("#.##");
                    donor = result.FirstName;
                }
            }

            DonateResultViewModel viewModel
                = new DonateResultViewModel(TodaySalaahTime, DateTime.Now, ActiveTab.DonationStatus, paymentType, paymentMade, paymentSuccessful, donor);

            return View("PaymentResult", viewModel);
        }

        #endregion
    }
}