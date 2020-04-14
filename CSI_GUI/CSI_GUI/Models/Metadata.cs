using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CSI_GUI.Models
{
    //b.s. 17/07/2017 - Create meta data classes to change attributes of data pulled from database, 
    //... don't forget to also create partial class reference in PartialClasses.cs


    public partial class DoctorMetaData
    {
        [Display(Name = "Name")]
        public string docName { get; set; }

        [Display(Name = "Specialization")]
        public string docSpecialization { get; set; }

        [Display(Name = "PhoneNumber")]
        public int docPhoneNumber { get; set; }
    }

    public partial class SubjectMetaData
    {
        [Display(Name = "Initials")]
        public string subInitials { get; set; }

        [Display(Name = "Date of Birth")]
        public DateTime subDOB { get; set; }

        [Display(Name = "Gender")]
        public string subGender { get; set; }

        [Display(Name = "Height")]
        public double subHeight { get; set; }

        [Display(Name = "Blood Type")]
        public string subBloodType { get; set; }

        [Display(Name = "Survival Status")]
        public string subSurvivalStatus { get; set; }

    }

    public partial class SiteMetaData
    {
        [Display(Name = "Name")]
        public string sitName { get; set; }

        [Display(Name = "Description")]
        public string sitDescription { get; set; }
    }

    public partial class SponsorMetaData
    {
        [Display(Name = "Name")]
        public string spoName { get; set; }

        [Display(Name = "Phone Number")]
        public string spoPhoneNumber { get; set; }
    }
    public partial class UsersMetaData
    {

    }
}
