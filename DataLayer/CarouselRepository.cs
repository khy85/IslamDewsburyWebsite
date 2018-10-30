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
    public class CarouselRepository : ICarouselRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public List<Carousel> GetAll()
        {
            var sql = "SELECT * FROM Carousel WHERE IsEnabled = 1";
            return this.dbConnection.Query<Carousel>(sql).ToList();
        }
        
    }
}
