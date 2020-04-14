using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
using System.Data;


namespace CSI_GUI
{
    class SqlStuff
    {
        static string GetDashboard = "sp_GetDashboardByID";

        static string GetAppointmentStatistics = "sp_AppointmentStatistics";
        static string GetDoctorReport = "sp_DoctorReport";
        static string GetSubjectReport = "sp_SubjectReport";
        static string GetStudyReportByID = "sp_StudyReportByID";
        static string GetStudyReport = "sp_StudyReport";

        static string GetAppointmentDetail = "sp_GetAppointmentDetail";
        static string GetSubjectAppointments = "sp_GetSubjectAppointments";
        static string GetDoctorAppointments = "sp_GetDoctorAppointments";
        static string GetStudies = "sp_ReturnStudiesBySite";

        static string GetDoctorsByStudyArm = "sp_DoctorsByStudyArm";
        static string GetSubjectsByStudyArm = "sp_SubjectsByStudyArm";
        static string GetDocumentsByStudyArm = "sp_DocumentsByStudyArm";
        static string GetVisitsByStudyArm = "sp_VisitsByStudyArm";
        static string GetActivitiesByStudyArm = "sp_ActivitiesByStudyArm";
        static string GetAppointmentsByStudyArm = "sp_AppointmentsByStudyArm";



        static string GetDataTableSprocName = "spTest1_ReturnDataTable";
        static string GetSingleValueSprocName = "spTest1_ReturnSingleValue";
        static string GetScalarValueSprocName = "spTest1_ReturnScalar";

        // Get connection 
        public SqlConnection GetControlConnection()
        {
            string test = ConfigurationManager.AppSettings["ControlConnection"];
            return new SqlConnection(ConfigurationManager.AppSettings["ControlConnection"]);
        }

        public DataTable Dashboard(int usePID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDashboard, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("usePID", usePID));
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }


        public DataTable AppointmentStatistics()
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetAppointmentStatistics, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable SubjectReport(int subPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetSubjectReport, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("subPID", subPID));
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable DoctorReport(int docPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDoctorReport, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("docPID", docPID));
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable StudyReportByID(int stuPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetStudyReportByID, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("stuPID", stuPID));
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable StudyReport()
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetStudyReport, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable DoctorAppointments(int sarPID, int docPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDoctorAppointments, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    sqlCommand.Parameters.Add(new SqlParameter("docPID", docPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable SubjectAppointments(int sarPID, int subPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetSubjectAppointments, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    sqlCommand.Parameters.Add(new SqlParameter("subPID", subPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        public DataTable AppointmentDetail(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetAppointmentDetail, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        //CA 03MAY2018 stored procedure to get doctors by study arm
        public DataTable DoctorsByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDoctorsByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }
        //CA 03MAY2018 stored procedure to get subjecys by study arm
        public DataTable SubjectsByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetSubjectsByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        //CA 03MAY2018 stored procedure to get subjecys by study arm
        public DataTable DocumentsByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDocumentsByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        //CA 03MAY2018 stored procedure to get visits by study arm
        public DataTable VisitsByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetVisitsByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        //CA 03MAY2018 stored procedure to get activites by study arm
        public DataTable ActivitesByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetActivitiesByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        //CA 03MAY2018 stored procedure to get appointments by study arm
        public DataTable AppointmentsByStudyArm(int sarPID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetAppointmentsByStudyArm, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("sarPID", sarPID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        // bs. 5/2/2018 -- First View - Studies by site, filtered by usePID
        // Call sproc with parameters - return datatable
        public DataTable GetStudiesBySite(int usePID)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetStudies, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("usePID", usePID));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }

        // Call sproc with parameters - return datatable
        public DataTable GetDataTable(int Num1, decimal Dec1, string String1, DateTime Date1)
        {
            var returnValue = new DataTable();
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetDataTableSprocName, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("ThisNum", Num1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisDec", Dec1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisString", String1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisDate", Date1));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();

                    using (var sqlDataAdapter = new SqlDataAdapter(sqlCommand))
                    {
                        sqlDataAdapter.Fill(returnValue);
                    }
                }
            }
            return returnValue;
        }
        
        // Call sproc with parameters - return single int (usually new table ID)
        public int GetSingleValue(int Num1, decimal Dec1, string String1, DateTime Date1)
        {
            int returnValue = 0;
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetSingleValueSprocName, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    sqlCommand.Parameters.Add(new SqlParameter("ThisNum", Num1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisDec", Dec1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisString", String1));
                    sqlCommand.Parameters.Add(new SqlParameter("ThisDate", Date1));
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();
                    returnValue = (int)sqlCommand.ExecuteScalar();
                }
            }
            return returnValue;

        }

        // Call sproc with no parameters - execute non-query (create table, insert, delete, etc.)
        public int GetRowsAffectedByNonQuery()    
        {
            int returnValue = 0;
            using (var sqlConnection = GetControlConnection())
            {
                using (var sqlCommand = new SqlCommand(GetScalarValueSprocName, sqlConnection))
                {
                    sqlCommand.CommandType = CommandType.StoredProcedure;
                    //sqlCommand.CommandTimeout = 60; // one minute timeout
                    sqlConnection.Open();
                    returnValue = (int)sqlCommand.ExecuteNonQuery();
                }
            }
            return returnValue;
        }
    }
}
