using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace CSI_GUI.Models
{
    public class SiteContext : DbContext
    {

        public SiteContext() : base("SiteContext")
        {
        }

        public DbSet<Users> Users { get; set; }  //top
        public DbSet<Appointment> Appointments { get; set; }  //top

        public DbSet<Doctor> Doctors { get; set; }  //top
        public DbSet<Subject> Subjects { get; set; }  //top
        public DbSet<DoctorAssignedTo> DocAssigned { get; set; }  //top
        public DbSet<SubjectAssignedTo> SubAssigned { get; set; }  //top
        public DbSet<StudyArm> StudyArms { get; set; }
        public DbSet<Study> Studies { get; set; }

        public DbSet<Site> Sites { get; set; }//top
        public DbSet<Sponsor> Sponsors { get; set; }


        //b.s. - Not needed
        //protected override void OnModelCreating(DbModelBuilder modelBuilder)
        //{
        //    modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        //}
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            Database.SetInitializer<SiteContext>(null);
            base.OnModelCreating(modelBuilder);
        }
    }
}