using System;

namespace CSI_GUI.Models
{
    public class AppointmentViewModel
    {
        public int appPID { get; set; }
        public int appSubjectLinkID { get; set; }
        public int appDoctorLinkID { get; set; }
        public int appStudyArmLinkID { get; set; }
        public string subInitials { get; set; }
        public string docName { get; set; }
        public DateTime appStartDate { get; set; }
        public DateTime appEndDate { get; set; }
        public int appCompletedStatus { get; set; }
    }
}