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
            var sql = "SELECT *, i.MonthName As HijriMonth FROM SalaahTimes s LEFT JOIN IslamicMonths i on s.HijriMonth = i.Id WHERE SalaahDate = @SalaahDate";
            return this.dbConnection.Query<SalaahTime>(sql, new { SalaahDate = dateOfSalaah }).SingleOrDefault();
        }

        public List<SalaahTime> FindByMonth(int monthNo)
        {
            throw new NotImplementedException();
        }

        public SalaahTime Insert(SalaahTime salaahTime)
        {
            var sql = @"INSERT INTO SalaahTimes (SalaahDate, FajrAdhan, FajrIqamah, Sunrise, ZuhrAdhan, ZuhrIqamah, AsrAdhan, AsrIqamah, MaghribAdhan, MaghribIqamah, IshaAdhan, IshaIqamah, JummahKhutbah, JummahIqamah) 
                        VALUES (@SalaahDate, @FajrAd, @FajrIq, @Sunrise, @ZuhrAd, @ZuhrIq,  @AsrAd, @AsrIq, @MaghAd,  @MaghAd, @IshAd,  @IshIq, @JumAd, @JumIq)";

            var id = this.dbConnection.Query<int>(sql, salaahTime).Single();
            salaahTime.Id = id;
            return salaahTime;
        }

        public void Update(SalaahTime salaahTime)
        {
            var sql = "UPDATE SalaahTimes SET " +
                      "FajrAdhan = @FajrAdhan, FajrIqamah = @FajrIqamah, Sunrise = @Sunrise" +
                      "ZuhrAdhan = @ZuhrAdhan, ZuhrIqamah = @ZuhrIqamah" +
                      "JummahKhutbah = @JummahKhutbah, JummahIqamah = @JummahIqamah" +
                      "AsrAdhan = @AsrAdhan, AsrIqamah = @AsrIqamah" +
                      "MaghribAdhan = @MaghribAdhan, MaghribIqamah = @MaghribIqamah" +
                      "IshaAdhan = @IshaAdhan, IshaIqamah = @IshaIqamah";

            this.dbConnection.Execute(sql, salaahTime);
        }

    }
}
