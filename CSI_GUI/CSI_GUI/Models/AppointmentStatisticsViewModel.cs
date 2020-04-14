using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    public class AppointmentStatisticsViewModel
    {
        public AppointmentStatisticsViewModel()
        {
            stuName = "";
            sarName = "";
            appCompletedStatus = 0;
            actName = "";
            actCost = 0.0;
        }

        public string stuName { get; set; }
        public string sarName { get; set; }
        public int appCompletedStatus { get; set; }
        public string actName { get; set; }
        public double actCost { get; set; }
    }
}