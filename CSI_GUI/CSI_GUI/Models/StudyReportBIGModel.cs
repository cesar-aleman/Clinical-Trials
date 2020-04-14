using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    public class StudyReportBIGModel
    {
        public List<StudyDetailViewModel> studyDetails { get; set; }
        public List<Doctor> doctors { get; set; }
        public List<Subject> subjects { get; set; }

    }
}