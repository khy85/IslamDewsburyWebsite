using System;

namespace CoreLibrary
{
    public class SalaahTime
    {
        public int Id { get; set; }

        public DateTime SalaahDate { get; set; }

        public int? HijriDate { get; set; }
        public String HijriMonth { get; set; }
        public int HijriYear { get;set;}

        public DateTime FajrAdhan { get; set; }
        public DateTime FajrIqamah { get; set; }
        public DateTime Sunrise { get; set; }

        public DateTime ZuhrAdhan { get; set; }
        public DateTime? ZuhrIqamah { get; set; }
        public DateTime? JummahKhutbah { get; set; }
        public DateTime? JummahIqamah { get; set; }

        public DateTime AsrAdhan { get; set; }
        public DateTime AsrIqamah { get; set; }

        public DateTime MaghribAdhan { get; set; }
        public DateTime MaghribIqamah { get; set; }

        public DateTime IshaAdhan { get; set; }
        public DateTime IshaIqamah { get; set; }

    }
   
}
