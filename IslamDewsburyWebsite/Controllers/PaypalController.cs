using CoreLibrary;
using IslamDewsburyWebsite.Helper;
using IslamDewsburyWebsite.Models;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    public class PaypalController : BaseController
    {
        private Payment payment;

        [HttpPost]
        public ActionResult PaymentWithPaypal(DonateViewModel donateViewModel, string Cancel = null)
        {
            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            donateViewModel.SetProperties(TodaySalaahTime, DateTime.Now);

            try
            {
                //A resource representing a Payer that funds a payment Payment Method as paypal
                //Payer Id will be returned when payment proceeds or click to pay  
                string payerId = Request.Params["PayerID"];

                if (string.IsNullOrEmpty(payerId))
                {
                    string baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/Paypal/PaymentWithPayPal?";

                    var guid = Convert.ToString((new Random()).Next(100000));

                    int invoiceNo = this.SaveDonatorDetails(donateViewModel, guid);

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
                else
                {
                    // This function executes after receving all parameters for the payment  
                    var guid = Request.Params["guid"];
                    var executedPayment = ExecutePayment(apiContext, payerId, Session[guid] as string);

                    //If executed payment failed then we will show payment failure message to user  
                    if (executedPayment.state.ToLower() != "approved")
                    {
                        UpdateDonationStatus("Failed - Paypal");
                        return Redirect("Failed", ActiveTab.DonationFailed);
                    }
                }
            }
            catch (Exception ex)
            {
                UpdateDonationStatus("Failed - Error");
                return Redirect("Failed", ActiveTab.DonationFailed);
            }

            UpdateDonationStatus("Set-up");
            return Redirect("Succeeded", ActiveTab.DonationSucceeded);
        }

        private int SaveDonatorDetails(DonateViewModel donate, string paypalDonationId)
        {
            Donation donation = new Donation
            {
                PaypalDonationId = paypalDonationId,
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

        private void UpdateDonationStatus(string status)
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

            double processingFee = 0.00;
            if (donationViewModel.CoveringProcessingFee)
                processingFee = Math.Round((donationViewModel.FinalAmount.Value * 0.014) + 0.20, 2);

            // Adding Tax, shipping and Subtotal details  
            var details = new Details()
            {
                handling_fee = processingFee.ToString(),
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

        private ActionResult Redirect(string viewUrl, ActiveTab tab)
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, tab);

            return View(viewUrl, viewModel);
        }
    }
}