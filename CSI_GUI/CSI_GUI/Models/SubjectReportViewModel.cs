using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    public class SubjectReportViewModel
    {
        public SubjectReportViewModel()
        {
            
            subPID = 0;
            subInitials = "";
            stuName = "";
            sarName = "";
            appCompletedStatus = 0;
            subSurvivalStatus = "";
        }
        public int subPID { get; set; }
        public string subInitials { get; set; }
        public string stuName { get; set; }
        public string sarName { get; set; }
        public int appCompletedStatus { get; set; }
        public string subSurvivalStatus { get; set; }
    }
}