using System.Web.Mvc;
using Microsoft.Practices.Unity;
using Unity.Mvc5;
using IslamDewsburyWebsite.Services;

namespace IslamDewsburyWebsite
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();
            
            container.RegisterType<IMailService, MailService>();
            
            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}