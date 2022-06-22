using IslamDewsburyWebsite.ActionFilterAttributes;
using IslamDewsburyWebsite.Models;
using System;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.Controllers
{
    [LogAction]
    public class RegularClassesController : BaseController
    {

        public ActionResult IslamicStudies()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Classes);

            return View(viewModel);
        }

        public ActionResult Tajweed()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Classes);

            return View(viewModel);
        }

        public ActionResult TaleemulQuranEnglish()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Classes);

            return View(viewModel);
        }

        public ActionResult TaleemulQuranUrdu()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, true, ActiveTab.Classes);

            return View(viewModel);
        }

        public ActionResult WeeklySchedule()
        {
            GenericViewModel viewModel = new GenericViewModel(TodaySalaahTime, DateTime.Now, false, ActiveTab.Classes);

            return View(viewModel);
        }
    }
}