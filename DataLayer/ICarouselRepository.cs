using CoreLibrary;
using System;
using System.Collections.Generic;

namespace DataLayer
{
    public interface ICarouselRepository
    {
        List<Carousel> GetAll();

    }
}
