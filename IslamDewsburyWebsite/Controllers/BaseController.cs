using CoreLibrary;
using DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    public class BaseController : Controller
    {
        public ISalaahTimeRepository SalaahTimesRepo;
        public ICarouselRepository CarouselRepo;
        public INewsAndEventRepository NewsAndEventRepo;

        public SalaahTime TodaySalaahTime;

        public BaseController()
        {
            this.SalaahTimesRepo = new SalaahTimeRepository();
            this.TodaySalaahTime = this.SalaahTimesRepo.Find(DateTime.Today);

            this.CarouselRepo = new CarouselRepository();
            this.NewsAndEventRepo = new NewsAndEventRepository();
        }

    }
}