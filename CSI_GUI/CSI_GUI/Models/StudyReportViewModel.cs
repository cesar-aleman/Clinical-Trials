using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    public class StudyReportViewModel
    {
        public StudyReportViewModel()
        {
            stuPID = 0;
            sarPID = 0;
            stuName = "";
            stuStartDate = DateTime.Now;
            stuEndDate = DateTime.Now;
            sarName = "";
            TotalCost = (double)0.0;
            NumberCompleted = 0;
            TotalApp = 0;
        }

        public int stuPID { get; set; }
        public int sarPID { get; set; }
        public string stuName { get; set; }
        public DateTime stuStartDate { get; set; }
        public DateTime stuEndDate { get; set; }
        public string sarName { get; set; }
        public double TotalCost { get; set; }
        public int NumberCompleted { get; set; }
        public int TotalApp { get; set; }


    }
}