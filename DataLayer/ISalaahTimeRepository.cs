using CoreLibrary;
using System;
using System.Collections.Generic;

namespace DataLayer
{
    public interface ISalaahTimeRepository
    {

        SalaahTime Find(DateTime dateOfSalaah);

        List<SalaahTime> FindByMonth(int monthNo);

        void Update(SalaahTime salaahTime);

        SalaahTime Insert(SalaahTime salaahTime);

    }
}
