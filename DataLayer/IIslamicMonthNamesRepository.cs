using CoreLibrary;
using System;
using System.Collections.Generic;

namespace DataLayer
{
    public interface IIslamicMonthNamesRepository
    {
        List<IslamicMonth> GetById(int id);

    }
}
