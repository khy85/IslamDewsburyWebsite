using CoreLibrary;
using System;
using System.Collections.Generic;

namespace DataLayer
{
    public interface ISalaahTimeRepository
    {
        SalaahTime Find(DateTime dateOfSalaah);
    }
}
