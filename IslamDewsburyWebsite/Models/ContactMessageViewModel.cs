using CoreLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace IslamDewsburyWebsite.Models
{
    public class ContactMessageViewModel : BaseViewModel
    {
        public ContactMessageViewModel() { }

        public ContactMessageViewModel(SalaahTime salaahTimes, string fullName, string phoneNo, string emailAddr, string message, DateTime now)
        {
            this.FullName = fullName;
            this.PhoneNo = phoneNo;
            this.EmailAddr = emailAddr;
            this.Message = message;
            this.SetProperties(salaahTimes, now, true, ActiveTab.ContactUs);
        }

        public ContactMessageViewModel(bool messageSent)
        {
            this.MessageSent = messageSent;
        }

    [Required(ErrorMessage = " Please provide a Full Name")]
        [Display(Name = "Full Name:")]
        public string FullName { get; set; }

        [Required(ErrorMessage = " Please provide a Phone Number")]
        [Display(Name = "Phone Number:")]
        public string PhoneNo { get; set; }

        [Required(ErrorMessage = " Please provide an Email Address")]
        [Display(Name = "Email Address:")]
        public string EmailAddr { get; set; }

        [Required(ErrorMessage = " Please enter a Message")]
        [DataType(DataType.MultilineText)]
        [Display(Name = "Message:")]
        [MaxLength(999)]
        public string Message { get; set; }

        public bool MessageSent { get; set; }

    }
}