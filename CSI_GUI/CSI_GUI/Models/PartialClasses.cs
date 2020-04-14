using System.ComponentModel.DataAnnotations;

namespace CSI_GUI.Models
{
    [MetadataType(typeof(SubjectMetaData))]
    public partial class Subject
    { }

    [MetadataType(typeof(DoctorMetaData))]
    public partial class Doctor
    { }

    [MetadataType(typeof(SiteMetaData))]
    public partial class Site
    { }

    [MetadataType(typeof(SponsorMetaData))]
    public partial class Sponsor
    { }

    [MetadataType(typeof(UsersMetaData))]
    public partial class Users
    { }


}