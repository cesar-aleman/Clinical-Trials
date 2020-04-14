using CSI_GUI.Code;
using CSI_GUI.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Mvc;

namespace CSI_GUI.Controllers
{
    [UserAuthorization(UserTypesList.SuperUser)]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            int currentUser = SessionManager.CurrentUser.usePID;

            var sqlStuff = new SqlStuff();
            var theData = sqlStuff.Dashboard(currentUser);

            var dashboardByID = new List<DashboardViewModel>();
            dashboardByID = ConvertDataTable<DashboardViewModel>(theData);

            return View("Index", dashboardByID);
        }

        [HttpGet]
        public ActionResult AddSponsor()
        {
            var spoModel = new Sponsor();
            spoModel.spoPID = -1;
            return View("AddSponsor", spoModel);
        }

        [HttpPost]
        public ActionResult AddSponsor(Sponsor spo)
        {
            var dbSponsor = new Sponsor();
            using (var sc = new SiteContext())
            {
                if (spo.spoPID < 1)
                {
                    dbSponsor = spo;
                    sc.Sponsors.Add(dbSponsor);
                    sc.SaveChanges();
                }
            }
            return RedirectToAction("AddSponsor");
        }

        [HttpGet]
        public ActionResult AddSite()
        {
            var sitModel = new Site();
            sitModel.sitPID = -1;
            return View("AddSite", sitModel);
        }

        [HttpPost]
        public ActionResult AddSite(Site sit)
        {
            var dbSite = new Site();
            using (var sc = new SiteContext())
            {
                if (sit.sitPID < 1)
                {
                    dbSite = sit;
                    sc.Sites.Add(dbSite);
                    sc.SaveChanges();
                }
            }
            return RedirectToAction("AddSite");
        }

        [HttpGet]
        public ActionResult AddSubject()
        {
            var subModel = new Subject();
            subModel.subPID = -1;
            return View("AddSubject", subModel);
        }

        [HttpPost]
        public ActionResult AddSubject(Subject sub)
        {
            var dbSubject = new Subject();
            using (var sc = new SiteContext())
            {
                if (sub.subPID < 1)
                {
                    dbSubject = sub;
                    sc.Subjects.Add(dbSubject);
                    sc.SaveChanges();
                }
            }
            return RedirectToAction("AddSubject");
        }

        [HttpGet]
        public ActionResult AddDoctor()
        {
            var docModel = new Doctor();
            docModel.docPID = -1;
            return View("AddDoctor", docModel);
        }

        [HttpPost]
        public ActionResult AddDoctor(Doctor doc)
        {
            var dbDoctor = new Doctor();
            using (var sc = new SiteContext())
            {
                if (doc.docPID < 1)
                {
                    dbDoctor = doc;
                    sc.Doctors.Add(dbDoctor);
                    sc.SaveChanges();
                }
            }
            return RedirectToAction("AddDoctor");
        }



        public ActionResult Appointments(int studyArmPID)
        {
            int currentUser = SessionManager.CurrentUser.usePID;

            var sqlStuff = new SqlStuff();
            var theData = sqlStuff.AppointmentDetail(studyArmPID);

            var appointments = new List<AppointmentViewModel>();
            appointments = ConvertDataTable<AppointmentViewModel>(theData);

            return View("Appointments", appointments);
        }


        private static List<T> ConvertDataTable<T>(DataTable dt)
        {
            List<T> data = new List<T>();
            foreach (DataRow row in dt.Rows)
            {
                T item = GetItem<T>(row);
                data.Add(item);
            }
            return data;
        }
        private static T GetItem<T>(DataRow dr)
        {
            Type temp = typeof(T);
            T obj = Activator.CreateInstance<T>();

            foreach (DataColumn column in dr.Table.Columns)
            {
                foreach (PropertyInfo pro in temp.GetProperties())
                {
                    if (pro.Name == column.ColumnName)
                        pro.SetValue(obj, dr[column.ColumnName], null);
                    else
                        continue;
                }
            }
            return obj;
        }

        public ActionResult CompleteAppointment(int appID)
        {
            var returnID = -1;
            using (var sc = new SiteContext())
            {
                if (sc.Appointments.Where(x => x.appPID == appID).FirstOrDefault() != null)
                {
                    //create the link
                    var dbAppointment = sc.Appointments.First(x => x.appPID == appID);
                    dbAppointment.appCompletedStatus = 1;

                    sc.Entry(dbAppointment).State = System.Data.Entity.EntityState.Modified;
                    sc.SaveChanges();
                }
                returnID = (int)sc.Appointments.FirstOrDefault(x => x.appPID == appID).appDoctorLinkID;
            }

            return RedirectToAction("DoctorReport", new { id = returnID });
        }

        public ActionResult AppointmentStatistics()
        {
            var sqlStuff = new SqlStuff();
            var data = sqlStuff.AppointmentStatistics();

            var model = new List<AppointmentStatisticsViewModel>();
            model = ConvertDataTable<AppointmentStatisticsViewModel>(data);

            return View(model);
        }

        public ActionResult DoctorReport(int? id)
        {
            var sqlStuff = new SqlStuff();
            var data = sqlStuff.DoctorReport((int)id);

            var model = new List<DoctorReportViewModel>();
            model = ConvertDataTable<DoctorReportViewModel>(data);

            return View(model);
        }

        public ActionResult SubjectReport(int? id)
        {
            var sqlStuff = new SqlStuff();
            var data = sqlStuff.SubjectReport(((int)id));

            var model = new List<SubjectReportViewModel>();
            model = ConvertDataTable<SubjectReportViewModel>(data);

            return View(model);
        }

        [UserAuthorization(UserTypesList.SuperUser)]
        public ActionResult StudyReport(int? id)
        {
            var sqlStuff = new SqlStuff();
            var data = sqlStuff.StudyReport();

            var model = new List<StudyReportViewModel>();
            model = ConvertDataTable<StudyReportViewModel>(data);

            return View(model);
        }

        public ActionResult StudyReportByID(int? id)
        {
            var sqlStuff = new SqlStuff();
            var data = sqlStuff.StudyReportByID((int)id);

            var dbmodel = new List<StudyDetailViewModel>();
            dbmodel = ConvertDataTable<StudyDetailViewModel>(data);

            var model = new StudyReportBIGModel();
            model.studyDetails = dbmodel;

            using (var sc = new SiteContext())
            {
                var armIDs = sc.StudyArms.Where(x => x.sarStudyLinkID == id).ToList();
                model.subjects = new List<Subject>();
                model.doctors = new List<Doctor>();

                foreach (var item in armIDs)
                {
                    var docAssigned = sc.DocAssigned.Where(x => x.datStudyArmLinkID == item.sarPID).ToList();
                    foreach (var doc in docAssigned)
                    {
                        var dbDoctor = sc.Doctors.FirstOrDefault(x => x.docPID == doc.datDoctorLinkID);
                        model.doctors.Add(dbDoctor);
                    }
                    var subAssigned = sc.SubAssigned.Where(x => x.satStudyArmLinkID == item.sarPID).ToList();
                    foreach (var sub in subAssigned)
                    {
                        var dbSubject = sc.Subjects.FirstOrDefault(x => x.subPID == sub.satSubjectLinkID);
                        model.subjects.Add(dbSubject);
                    }
                }
            }
            return View(model);
        }

        public ActionResult AddFile()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        public ActionResult LinkDoctor(int? id) //getting sarPID
        {
            var model = new LinkDoctorsViewModel();
            using (var sc = new SiteContext())
            {
                model.studyArmID = Convert.ToInt32(id);
                var dbAssigned = sc.DocAssigned.Where(x => x.datStudyArmLinkID == model.studyArmID).ToList();
                var allDoctors = sc.Doctors.ToList();

                foreach (var item in dbAssigned)
                {
                    var doc = sc.Doctors.First(x => x.docPID == item.datDoctorLinkID);
                    model.assignedDoctors.Add(doc);
                }

                foreach (var item in allDoctors)
                {
                    if (!model.assignedDoctors.Any(x => x.docPID == item.docPID))
                    {
                        var doc = allDoctors.First(x => x.docPID == item.docPID);
                        model.unassignedDoctors.Add(doc);
                    }
                }
                model.armName = sc.StudyArms.FirstOrDefault(x => x.sarPID == model.studyArmID).sarName;
            }

            return View("LinkDoctor", model);
        }

        public ActionResult LinkDoctorID(int docID, int sarID)
        {
            using (var sc = new SiteContext())
            {
                if (sc.DocAssigned.Where(x => x.datStudyArmLinkID == sarID && x.datDoctorLinkID == docID).FirstOrDefault() == null)
                {
                    //create the link
                    var dbAssigned = new DoctorAssignedTo();
                    dbAssigned.datStudyArmLinkID = Convert.ToInt32(sarID);
                    dbAssigned.datDoctorLinkID = Convert.ToInt32(docID);
                    dbAssigned.datCreatedBy = SessionManager.CurrentUser.useUserName;
                    dbAssigned.datCreatedDate = DateTime.Now;

                    sc.DocAssigned.Add(dbAssigned);
                    sc.Entry(dbAssigned).State = System.Data.Entity.EntityState.Added;
                    sc.SaveChanges();
                }
            }

            return RedirectToAction("LinkDoctor", new { id = sarID });
        }

        public ActionResult UnLinkDoctorID(int docID, int sarID)
        {
            using (var sc = new SiteContext())
            {
                if (sc.DocAssigned.Where(x => x.datStudyArmLinkID == sarID && x.datDoctorLinkID == docID).FirstOrDefault() != null)
                {
                    //delete link
                    var dbAssigned = sc.DocAssigned.First(x => x.datDoctorLinkID == docID && x.datStudyArmLinkID == sarID);
                    sc.Entry(dbAssigned).State = System.Data.Entity.EntityState.Deleted;
                    sc.SaveChanges();
                }
            }

            return RedirectToAction("LinkDoctor", new { id = sarID });
        }

        public class LinkDoctorsViewModel
        {
            public LinkDoctorsViewModel()
            {
                studyArmID = -1;
                armName = "";
                assignedDoctors = new List<Doctor>();
                unassignedDoctors = new List<Doctor>();
            }

            public int studyArmID;
            public string armName;
            public List<Doctor> assignedDoctors { get; set; }
            public List<Doctor> unassignedDoctors { get; set; }

        }

        public ActionResult LinkSubject(int? id) //getting sarPID
        {
            var model = new LinkSubjectsViewModel();
            using (var sc = new SiteContext())
            {
                model.studyArmID = Convert.ToInt32(id);
                var dbAssigned = sc.SubAssigned.Where(x => x.satStudyArmLinkID == model.studyArmID).ToList();
                var allSubjects = sc.Subjects.ToList();

                foreach (var item in dbAssigned)
                {
                    var sub = sc.Subjects.First(x => x.subPID == item.satSubjectLinkID);
                    model.assignedSubjects.Add(sub);
                }

                foreach (var item in allSubjects)
                {
                    if (!model.assignedSubjects.Any(x => x.subPID == item.subPID))
                    {
                        var sub = allSubjects.First(x => x.subPID == item.subPID);
                        model.unassignedSubjects.Add(sub);
                    }
                }
                model.armName = sc.StudyArms.FirstOrDefault(x => x.sarPID == model.studyArmID).sarName;
            }

            return View("LinkSubject", model);
        }

        public ActionResult LinkSubjectID(int subID, int sarID)
        {
            using (var sc = new SiteContext())
            {
                if (sc.SubAssigned.Where(x => x.satStudyArmLinkID == sarID && x.satSubjectLinkID == subID).FirstOrDefault() == null)
                {
                    //create the link
                    var dbAssigned = new SubjectAssignedTo();
                    dbAssigned.satStudyArmLinkID = Convert.ToInt32(sarID);
                    dbAssigned.satSubjectLinkID = Convert.ToInt32(subID);
                    dbAssigned.satCreatedBy = SessionManager.CurrentUser.useUserName;
                    dbAssigned.satCreatedDate = DateTime.Now;

                    sc.SubAssigned.Add(dbAssigned);
                    sc.Entry(dbAssigned).State = System.Data.Entity.EntityState.Added;
                    sc.SaveChanges();
                }
            }

            return RedirectToAction("LinkSubject", new { id = sarID });
        }

        public ActionResult UnLinkSubjectID(int subID, int sarID)
        {
            using (var sc = new SiteContext())
            {
                if (sc.SubAssigned.Where(x => x.satStudyArmLinkID == sarID && x.satSubjectLinkID == subID).FirstOrDefault() != null)
                {
                    //delete link
                    var dbAssigned = sc.SubAssigned.First(x => x.satSubjectLinkID == subID && x.satStudyArmLinkID == sarID);
                    sc.Entry(dbAssigned).State = System.Data.Entity.EntityState.Deleted;
                    sc.SaveChanges();
                }
            }

            return RedirectToAction("LinkSubject", new { id = sarID });
        }

        public class LinkSubjectsViewModel
        {
            public LinkSubjectsViewModel()
            {
                studyArmID = -1;
                armName = "";
                assignedSubjects = new List<Subject>();
                unassignedSubjects = new List<Subject>();
            }

            public int studyArmID;
            public string armName;
            public List<Subject> assignedSubjects { get; set; }
            public List<Subject> unassignedSubjects { get; set; }

        }


        public ActionResult StudyArmDetailsView(int? id)
        {
            var sqlStuff = new SqlStuff();
            var dbDoctors = sqlStuff.DoctorsByStudyArm((int)id);
            var dbSubjects = sqlStuff.SubjectsByStudyArm((int)id);
            var dbDocuments = sqlStuff.DocumentsByStudyArm((int)id);
            var dbVisits = sqlStuff.VisitsByStudyArm((int)id);
            var dbActivites = sqlStuff.ActivitesByStudyArm((int)id);
            var dbAppointments = sqlStuff.AppointmentsByStudyArm((int)id);

            var model = new StudyArmDetailsViewModel();
            model.doctors = ConvertDataTable<Doctor>(dbDoctors);
            //model.subjects = ConvertDataTable<Subject>(dbSubjects);
            model.documents = ConvertDataTable<DocumentInfo>(dbDocuments);
            model.visits = ConvertDataTable<Visit>(dbVisits);
            model.activities = ConvertDataTable<Activity>(dbActivites);
            model.appointments = ConvertDataTable<Appointment>(dbAppointments);
            model.VisitActivitiesCheckBoxes = new List<CheckBox>();
            model.studyArmID = Convert.ToInt32(id);

            using (var context = new SiteContext())
            {
                var assigned = context.SubAssigned.Where(x => x.satStudyArmLinkID == model.studyArmID).ToList();
                foreach (var item in assigned)
                {
                    var sub = context.Subjects.FirstOrDefault(x => x.subPID == item.satSubjectLinkID);
                    model.subjects.Add(sub);
                }
            }

            foreach (Appointment app in model.appointments)
            {
                var box = new CheckBox();
                box.appPID = app.appPID;
                box.isChecked = true;
                model.VisitActivitiesCheckBoxes.Add(box);
            }
            return View("StudyArmDetailsView", model);
        }

        public class StudyArmDetailsViewModel
        {
            public StudyArmDetailsViewModel()
            {
                doctors = new List<Doctor>();
                subjects = new List<Subject>();
                documents = new List<DocumentInfo>();
                visits = new List<Visit>();
                activities = new List<Activity>();
                appointments = new List<Appointment>();
                studyArmID = -1;
            }

            public int studyArmID;
            public List<Doctor> doctors { get; set; }
            public List<Subject> subjects { get; set; }
            public List<DocumentInfo> documents { get; set; }
            public List<Visit> visits { get; set; }
            public List<Activity> activities { get; set; }
            public List<Appointment> appointments { get; set; }

            public List<CheckBox> VisitActivitiesCheckBoxes { get; set; }

        }

        public class CheckBox
        {
            public bool isChecked { get; set; }
            public int appPID { get; set; }
            public int visPID { get; set; }
            public int actPID { get; set; }
            public CheckBox()
            {
                isChecked = false;
                appPID = -1;
                visPID = -1;
                actPID = -1;
            }
        };
        [HttpPost]
        public JsonResult AppointmentUpdate(CheckBox model)
        {
            //sql
            //using (var saveContext = new SiteContext())
            //{
            //    var dbVisitActivity = saveContext.ac.FirstOrDefault(x => x.vacPID == model.VisitActivitiesLinkID);
            //    if (dbVisitActivity != null)
            //    {

            //        if ((dbVisitActivity.vacStatus == 1 && model.isChecked) || dbVisitActivity.vacStatus == 0 && !model.isChecked)
            //        {
            //            return Json(new { }, "application/json", JsonRequestBehavior.AllowGet);
            //        }
            //        else
            //        {
            //            if (model.isChecked)
            //            {
            //                dbVisitActivity.vacStatus = 1;
            //            }
            //            else
            //            {
            //                dbVisitActivity.vacStatus = 0;
            //                //bs - Delete appointment if they uncheck box
            //                using (var deleteContext = new SiteContext())
            //                {
            //                    var dbAppointment = deleteContext.Appointments.FirstOrDefault(x => x.appVisitActivitiesLinkID == model.VisitActivitiesLinkID);
            //                    saveContext.Entry(dbAppointment).State = System.Data.Entity.EntityState.Deleted;
            //                    saveContext.SaveChanges();
            //                }
            //            }
            //            saveContext.Entry(dbVisitActivity).State = System.Data.Entity.EntityState.Modified;
            //            saveContext.SaveChanges();
            //        }
            //    }
            //}

            return Json(new { }, "application/json", JsonRequestBehavior.AllowGet);
        }


    }
}