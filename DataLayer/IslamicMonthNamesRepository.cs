using CoreLibrary;
using Dapper;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace DataLayer
{
    public class IslamicMonthNamesRepository : IIslamicMonthNamesRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public List<IslamicMonth> GetById(int id)
        {
            var sql = "SELECT * FROM IslamicMonths WHERE Id = " + id;
            return this.dbConnection.Query<IslamicMonth>(sql).ToList();
        }
        
    }
}
