using System;

namespace CoreLibrary
{
    public class SalaahTime
    {
        public DateTime SalaahDate { get; set; }

        public int? HijriDate { get; set; }
        public string HijriMonth { get; set; }
        public int HijriYear { get;set;}

        public string FajrAdhan { get; set; }
        public string FajrIqamah { get; set; }
        public string Sunrise { get; set; }

        public string ZuhrAdhan { get; set; }
        public string ZuhrIqamah { get; set; }
        public string JummahKhutbah { get; set; }
        public string JummahIqamah { get; set; }

        public string AsrAdhan { get; set; }
        public string AsrIqamah { get; set; }

        public string MaghribAdhan { get; set; }
        public string MaghribIqamah { get; set; }

        public string IshaAdhan { get; set; }
        public string IshaIqamah { get; set; }

    }
   
}
