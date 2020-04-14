using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    public class DoctorReportViewModel
    {
        public DoctorReportViewModel()
        {

            appPID = 0;
            docPID = 0;
            docName = "";
            stuName = "";
            sarName = "";
            appCompletedStatus = 0;
            appStartDate = DateTime.Now;
        }
        public int appPID { get; set; }
        public int docPID { get; set; }
        public string docName { get; set; }
        public string stuName { get; set; }
        public string sarName { get; set; }
        public int appCompletedStatus { get; set; }
        public DateTime appStartDate { get; set; }
    }
}