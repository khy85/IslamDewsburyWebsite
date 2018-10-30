using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

namespace IslamDewsburyWebsite.Services
{
    public class MailService : IMailService
    {
        public bool SendMail(string from, string to, string subject, string body)
        {
            try
            {
                var msg = new MailMessage(from, to, subject, body);

                var smtpClient = new SmtpClient();
                smtpClient.Send(msg);

            } 
            catch (Exception ex)
            {
                return false;
            }

            return true;
        }
    }
}