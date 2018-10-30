using CoreLibrary;
using System;
using System.Collections.Generic;

namespace DataLayer
{
    public interface INewsAndEventRepository
    {
        List<NewsAndEvent> GetAll();

        NewsAndEvent Find(int id);
    }
}
