using DataLayer;
using IslamDewsburyWebsite.ActionFilterAttributes;
using IslamDewsburyWebsite.Models;
using IslamDewsburyWebsite.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    
    public class HomeController : BaseController
    {
        private IMailService _mailSvc;

        public HomeController(IMailService mailSvc)
        {
            this._mailSvc = mailSvc;
        }

        [LogAction]
        public ActionResult Index()
        {
            var indexViewModel = new IndexViewModel(TodaySalaahTime, DateTime.Now);

            // Carousel Images
            var carouselImages = CarouselRepo.GetAll();
            foreach(var c in carouselImages)
            {
                indexViewModel.CarouselImages.Add(new CarouselViewModel(c));
            }

            // Latest 5 News and Events
            var newsAndEvents = GetNewsAndEventViewModels(5);
            indexViewModel.LatestNewsAndEvents.AddRange(newsAndEvents);

            return View(indexViewModel);
        }

        [LogAction]
        public ActionResult NewsAndEvent(int id)
        {
            var ne = NewsAndEventRepo.Find(id);
            NewsAndEventViewModel viewModel = new NewsAndEventViewModel(TodaySalaahTime, DateTime.Now, new LatestNewsEventsViewModel(ne));

            return View(viewModel);
        }

        [LogAction]
        public ActionResult PreviousNewsAndEvents()
        {
            var newsAndEvents = GetNewsAndEventViewModels();
            var prevNewsAndEvents = new PreviousNewsAndEventsViewModel(TodaySalaahTime, DateTime.Now);
            prevNewsAndEvents.NewsEvents.AddRange(newsAndEvents);

            return View(prevNewsAndEvents);
        }

        private List<LatestNewsEventsViewModel> GetNewsAndEventViewModels(int? numberToRetrieve = null)
        {
            var allNewsAndEvents = new List<LatestNewsEventsViewModel>();
            var newsAndEvents = NewsAndEventRepo.GetAll();

            foreach (var ne in newsAndEvents.OrderByDescending(x => x.DateDisplayed).Take(numberToRetrieve.HasValue ? numberToRetrieve.Value : newsAndEvents.Count))
            {
                allNewsAndEvents.Add(new LatestNewsEventsViewModel(ne));
            }

            return allNewsAndEvents;
        }


        #region Salaah Times

        [LogAction]
        public PartialViewResult NextSalaahTimes(DateTime currentDate)
        {
            var nextSalaah = this.SalaahTimesRepo.Find(currentDate.AddDays(1));
            if (nextSalaah == null)
                nextSalaah = this.SalaahTimesRepo.Find(currentDate);

            var salaahTimes = new SalaahTimesTodayViewModel(nextSalaah);

            return PartialView("_SalaahTimes", salaahTimes);
        }

        [LogAction]
        public PartialViewResult PreviousSalaahTimes(DateTime currentDate)
        {
            var nextSalaah = this.SalaahTimesRepo.Find(currentDate.AddDays(-1));
            if (nextSalaah == null)
                nextSalaah = this.SalaahTimesRepo.Find(currentDate);

            var salaahTimes = new SalaahTimesTodayViewModel(nextSalaah);

            return PartialView("_SalaahTimes", salaahTimes);
        }

        #endregion

        public ActionResult AboutUs(int id)
        {
            GenericTabbedViewModel viewModel = new GenericTabbedViewModel(TodaySalaahTime, id, DateTime.Now, ActiveTab.AboutUs);

            string tab = string.Empty;
            switch(id)
            {
                case 1:
                    tab = "The Centre";
                    break;
                case 2:
                    tab = "Imam";
                    break;
                case 3:
                    tab = "Background";
                    break;

            }
            LogRepo.LogAccess("Home", "AboutUs", tab, DateTime.Now);

            return View(viewModel);
        }

        [LogAction]
        public ActionResult Sisters()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Sisters);

            return View(viewModel);
        }

        [LogAction]
        public ActionResult Madrassah()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Madrassah);

            return View(viewModel);
        }

        public ActionResult Services(int id)
        {
            GenericTabbedViewModel viewModel = new GenericTabbedViewModel(TodaySalaahTime, id, DateTime.Now, ActiveTab.Services);

            string tab = string.Empty;
            switch (id)
            {
                case 1:
                    tab = "Open Day";
                    break;
                case 2:
                    tab = "Accepting Islam";
                    break;
                case 3:
                    tab = "Wedding";
                    break;
                case 4:
                    tab = "Funeral";
                    break;

            }
            LogRepo.LogAccess("Home", "Services", tab, DateTime.Now);


            return View(viewModel);
        }

        [LogAction]
        public ActionResult Donate()
        {
            DonateViewModel viewModel = new DonateViewModel(TodaySalaahTime, DateTime.Now, PaymentType.OneOff);

            return View(viewModel);
        }

        [LogAction]
        public ActionResult DonateDD()
        {
            DonateViewModel viewModel = new DonateViewModel(TodaySalaahTime, DateTime.Now, PaymentType.Monthly);

            return View("Donate",viewModel);
        }

        [LogAction]
        public ActionResult RamadanTenNights()
        {
            DonateViewModel viewModel = new DonateViewModel(TodaySalaahTime, DateTime.Now, PaymentType.RamadanTenNights);

            return View("Donate",viewModel);
        }

        [LogAction]
        public ActionResult DhulHijjahTenDays()
        {
            DonateViewModel viewModel = new DonateViewModel(TodaySalaahTime, DateTime.Now, PaymentType.DhulHijjahTenDays);

            return View("Donate", viewModel);
        }

        [LogAction]
        public ActionResult ContactUs()
        {
            ContactMessageViewModel viewModel = new ContactMessageViewModel();

            ViewBag.Message = "Contact Us";

            return View(viewModel);
        }

        [HttpPost()]
        public ActionResult ContactUs(ContactMessageViewModel viewModel)
        {
            var messageReceived = String.Format("Comment From : {1}{0} Email: {2}{0} Phone: {3}{0} Message: {4}{0}",
                                                Environment.NewLine,
                                                viewModel.FullName,
                                                viewModel.EmailAddr,
                                                viewModel.PhoneNo,
                                                viewModel.Message);

            bool mailSentSuccessfully = this._mailSvc.SendMail("Khayam_a@hotmail.com", "Khayam_a@hotmail.com", "Website content", messageReceived);

            if (mailSentSuccessfully)
            {
                viewModel = new ContactMessageViewModel(mailSentSuccessfully);
            }

            return View(viewModel);
        }


    }
}