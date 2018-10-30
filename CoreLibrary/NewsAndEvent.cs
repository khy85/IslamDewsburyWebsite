using System;

namespace CoreLibrary
{
    public class NewsAndEvent
    {
        public int Id { get; set; }

        public DateTime UploadedDate { get; set; }

        public DateTime DateDisplayed { get; set; }

        public string LargeImgLocation { get; set; }

        public string MediumImgLocation { get; set; }

        public string SmallImgLocation { get; set; }

        public string Tooltip { get; set; }

        public string Heading { get; set; }

        public string Content { get; set; }
    }
}
