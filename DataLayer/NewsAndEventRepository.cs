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
    public class NewsAndEventRepository : INewsAndEventRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public List<NewsAndEvent> GetAll()
        {
            var sql = "SELECT * FROM NewsAndEvents";
            return this.dbConnection.Query<NewsAndEvent>(sql).ToList();
        }

        public NewsAndEvent Find(int id)
        {
            var sql = "SELECT * FROM NewsAndEvents WHERE Id = @Id";
            return this.dbConnection.Query<NewsAndEvent>(sql, new { Id = id }).SingleOrDefault();
        }


    }
}
