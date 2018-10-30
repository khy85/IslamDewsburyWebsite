using CoreLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace IslamDewsburyWebsite.Models
{
    public class CarouselViewModel
    {
        public CarouselViewModel(Carousel carousel)
        {
            this.CarouselClass = carousel.Id == 1 ? "active" : "";
            this.OrderId = carousel.OrderId;
            this.ImageLocation = carousel.ImageLocation;
            this.TooltipMsg = carousel.Tooltip;
        }

        public int Id { get; set; }

        public int OrderId { get; set; }

        public string ImageLocation { get; set; }

        public string TooltipMsg { get; set; }

        public string CarouselClass { get; set; }


    }
}