//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CSI_GUI.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Users
    {
        public int usePID { get; set; }
        public Nullable<System.DateTime> useCreatedDate { get; set; }
        public string useCreatedBy { get; set; }
        public Nullable<System.DateTime> useModifiedDate { get; set; }
        public string useModifiedBy { get; set; }
        public Nullable<int> useUserStatus { get; set; }
        public Nullable<int> useUserType { get; set; }
        public string useUserName { get; set; }
        public string usePassword { get; set; }
        public Nullable<int> useSiteLinkID { get; set; }
    }
}
