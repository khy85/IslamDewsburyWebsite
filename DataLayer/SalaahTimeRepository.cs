using CoreLibrary;
using Dapper;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DataLayer
{
    public class SalaahTimeRepository : ISalaahTimeRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public SalaahTime Find(DateTime dateOfSalaah)
        {
            var procedure = "RetrieveSalaahTimes";
            return this.dbConnection.Query<SalaahTime>(procedure, new { SalaahDate = dateOfSalaah }, commandType: CommandType.StoredProcedure).SingleOrDefault();
        }

    }
}
