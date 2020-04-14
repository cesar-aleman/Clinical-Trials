using System;

namespace CSI_GUI.Models
{
    public class DashboardViewModel
    {
        public string sitName { get; set; }
        public string stuName { get; set; }
        public DateTime stuStartDate { get; set; }
        public DateTime stuEndDate { get; set; }
        public int sarPID { get; set; }
        public string sarName { get; set; }
        public int sarEnrollmentGoal { get; set; }
        public int stuPID { get; set; }

    }
}