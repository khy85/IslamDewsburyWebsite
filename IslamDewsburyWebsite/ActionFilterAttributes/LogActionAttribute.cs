using DataLayer;
using System;
using System.Web.Mvc;

namespace IslamDewsburyWebsite.ActionFilterAttributes
{
    public class LogActionAttribute : ActionFilterAttribute
    {
        private ILogRepository _logRepository;

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            _logRepository = new LogRepository();
            var controller = filterContext.RequestContext.RouteData.Values.ContainsKey("Controller") ? filterContext.RequestContext.RouteData.Values["Controller"].ToString() : null;
            var action = filterContext.RequestContext.RouteData.Values.ContainsKey("Action") ? filterContext.RequestContext.RouteData.Values["Action"].ToString() : null;
            var description = string.Empty;

            DateTime now = DateTime.Now;

            _logRepository.LogAccess(controller, action, description, now);


            base.OnActionExecuting(filterContext);
        }
    }
}