using Dapper;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DataLayer
{
    public class LogRepository : ILogRepository
    {
        private IDbConnection dbConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["IslamDewsburyDB"].ConnectionString);

        public void LogAccess(string controller, string action, string description, DateTime now)
        {
            this.dbConnection.Execute(@" INSERT INTO [dbo].[LogAccess] (AccessDate, Controller, Method, [Description]) VALUES (@now, @controller, @method, @description);",
                            new { Now = now, Controller = controller, Method = action, Description = description });
        }
        
    }
}
