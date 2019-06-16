using CoreLibrary;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;

namespace IslamDewsburyWebsite.Models
{
    public class LatestNewsEventsViewModel
    {
        private const int numberOfWords = 50;

        public LatestNewsEventsViewModel(NewsAndEvent newsAndEvent)
        {
            this.Id = newsAndEvent.Id;
            this.CreatedDisplayDate = newsAndEvent.UploadedDate;
            this.DisplayDateDay = newsAndEvent.DateDisplayed.ToString("dd");
            this.DisplayDateMonth = CultureInfo.CurrentCulture.DateTimeFormat.GetAbbreviatedMonthName(newsAndEvent.DateDisplayed.Month);
            this.DisplayDateYear = newsAndEvent.DateDisplayed.Year.ToString();
            this.DisplayDate = this.DisplayDateDay + " " + this.DisplayDateMonth + " " + this.DisplayDateYear;
            this.Tooltip = newsAndEvent.Tooltip;
            this.SmallImgLocation = newsAndEvent.SmallImgLocation;
            this.MediumImgLocation = newsAndEvent.MediumImgLocation;
            this.LargeImgLocation = newsAndEvent.LargeImgLocation;
            this.Heading = newsAndEvent.Heading;
            this.Content = newsAndEvent.Content;
            var splitContent = this.Content.Split(' ');
            this.ContentReadMore = splitContent.Length > numberOfWords ? true : false;
            this.DisplayContent = String.Join(" ", splitContent.Take(numberOfWords));
        }

        public int Id { get; set; }

        public DateTime CreatedDisplayDate { get; set; }

        public string DisplayDate { get; set; } 

        public string DisplayDateDay { get; set; }

        public string DisplayDateMonth { get; set; }

        public string DisplayDateYear { get; set; }

        public string SmallImgLocation { get; set; }

        public string MediumImgLocation { get; set; }

        public string LargeImgLocation { get; set; }

        public string Tooltip { get; set; }

        public string Heading { get; set; }

        public string Content { get; set; }

        public bool ContentReadMore { get; set; }

        public string DisplayContent { get; set; }

    }
}