using CoreLibrary;
using DataLayer;
using System;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    public class BaseController : Controller
    {
        public ISalaahTimeRepository SalaahTimesRepo;
        public ICarouselRepository CarouselRepo;
        public INewsAndEventRepository NewsAndEventRepo;
        public ILogRepository LogRepo;
        public IDonationRepository DonationRepo;

        public SalaahTime TodaySalaahTime;

        public BaseController()
        {
            this.SalaahTimesRepo = new SalaahTimeRepository();
            this.TodaySalaahTime = this.SalaahTimesRepo.Find(DateTime.Today);

            this.CarouselRepo = new CarouselRepository();
            this.NewsAndEventRepo = new NewsAndEventRepository();
            this.DonationRepo = new DonationRepository();
            this.LogRepo = new LogRepository();
        }

    }
}