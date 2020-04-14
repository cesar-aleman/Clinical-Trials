-- BS & CA Final Project - Database Systems 

---
------ Site table
---
if exists(select 1 from sysobjects where name = 'Site')
  begin
	print 'Dropping Site'
	drop table Site
  end

create	table Site
(
	sitPID				int identity
	, sitName			varchar(100)
	, sitDescription	varchar(max)

	constraint PK_Site primary key clustered
	(
		sitPID asc
	)
)

---
------ Sponsor table
---
if exists(select 1 from sysobjects where name = 'Sponsor')
  begin
	print 'Dropping Sponsor'
	drop table Sponsor
  end

create	table Sponsor
(
	spoPID				int identity
	, spoName			varchar(100)
	, spoPhoneNumber	varchar(100)

	constraint PK_Sponsor primary key clustered
	(
		spoPID asc
	)
)

---
------ Doctor table
---
if exists(select 1 from sysobjects where name = 'Doctor')
  begin
	print 'Dropping Doctor'
	drop table Doctor
  end

create	table Doctor
(
	docPID				int identity
	, docName			varchar(100)
	, docSpecialization	varchar(max)
	, docPhoneNumber	varchar(100)

	constraint PK_Doctor primary key clustered
	(
		docPID asc
	)
)

---
------ Subject table
---
if exists(select 1 from sysobjects where name = 'Subject')
  begin
	print 'Dropping Subject'
	drop table Subject
  end

create	table Subject
(
	subPID				int identity
	, subInitials		varchar(50)
	, subDOB			datetime
	, subGender			varchar(25)
	, subHeight			float
	, subBloodType		varchar(25)
	, subStatus			varchar(25)
	, subSurvivalStatus varchar(25)

	constraint PK_Subject primary key clustered
	(
		subPID asc
	)
)

---
------ Study table
---
if exists(select 1 from sysobjects where name = 'Study')
  begin
	print 'Dropping Study'
	drop table Study
  end

create	table Study
(
	stuPID					int identity
	, stuName				varchar(50)
	, stuDescription		varchar(max)
	, stuEnrollmentGoal		int
	, stuCompletedStatus	varchar(25)
	, stuStartDate			datetime
	, stuEndDate			datetime
	, stuSponsorLinKID		int
	, stuSiteLinkID			int

	constraint PK_Study primary key clustered
	(
		stuPID asc
	)
)

---
------ StudyArm table
---
if exists(select 1 from sysobjects where name = 'StudyArm')
  begin
	print 'Dropping StudyArm'
	drop table StudyArm
  end

create	table StudyArm
(
	sarPID					int identity
	, sarName				varchar(50)
	, sarStudyLinkID		int
	, sarEnrollmentGoal		int
	 
	constraint PK_StudyArm primary key clustered
	(
		sarPID asc
	)
)

---
------ Visit table
---
if exists(select 1 from sysobjects where name = 'Visit')
  begin
	print 'Dropping Visit'
	drop table Visit
  end

create	table Visit
(
	visPID					int identity
	, visName				int
	, visDescription		varchar(max)
	, visStart				datetime
	, visEnd				datetime
	, visStudyArmLinkID		int

	constraint PK_Visit primary key clustered
	(
		visPID asc
	)
)

---
------ Activity table
---
if exists(select 1 from sysobjects where name = 'Activity')
  begin
	print 'Dropping Activity'
	drop table Activity
  end

create	table Activity
(
	actPID					int identity
	, actName				varchar(100)
	, actDescription		varchar(max)
	, actDuration			int
	, actCost				float
	, actStudyArmLinkID		int

	constraint PK_Activity primary key clustered
	(
		actPID asc
	)
)

---
------ Appointment table
---
if exists(select 1 from sysobjects where name = 'Appointment')
  begin
	print 'Dropping Appointment'
	drop table Appointment
  end

create	table Appointment
(
	appPID					int identity
	, appStartDate			datetime
	, appEndDate			datetime
	, appCompletedStatus	int
	, appStudyArmLinkID		int
	, appActivityLinkID		int
	, appVisitLinkID		int
	, appDoctorLinkID		int
	, appSubjectLinkID		int

	constraint PK_Appointment primary key clustered
	(
		appPID asc
	)
)


---
------ DocumentInfo table
---
if exists(select 1 from sysobjects where name = 'DocumentInfo')
  begin
	print 'Dropping DocumentInfo'
	drop table DocumentInfo
  end

create	table DocumentInfo
(
	dinPID				int identity
	, dinDescription	varchar(max)
	, dinFileName		varchar(max)
	, dinBLOB			varbinary(max)
	, dinVersion		int
	, dinStudyArmLinkID	int
	--, dinSubjectLinkID	int

	constraint PK_DocumentInfo primary key clustered
	(
		dinPID asc
	)
)

---
------ UserPermissions table
---
if exists(select 1 from sysobjects where name = 'UserPermissions')
  begin
	print 'Dropping UserPermissions'
	drop table UserPermissions
  end

create	table UserPermissions 
(
	upePID int identity
	, upeCreatedDate datetime
	, upeCreatedBy varchar(50)
	, upeUserLinkID int
	, upeStudyLinkID int

	constraint PK_UserPermissions primary key clustered
	(
		upePID asc
	)
)

---
------ Users table
---
if exists(select 1 from sysobjects where name = 'Users')
  begin
	print 'Dropping Users'
	drop table Users
  end

create	table Users
(
	usePID int identity
	, useCreatedDate datetime
	, useCreatedBy varchar(255)
	, useModifiedDate datetime
	, useModifiedBy varchar(255)
	, useUserStatus int
	, useUserType int
	, useUserName varchar(255)
	, usePassword varchar(max)
	, useSiteLinkID int

	constraint PK_Users primary key clustered
	(
		usePID asc
	)
)

---
------ SubjectAssignedTo table
---
if exists(select 1 from sysobjects where name = 'SubjectAssignedTo')
  begin
	print 'Dropping SubjectAssignedTo'
	drop table SubjectAssignedTo
  end

create	table SubjectAssignedTo 
(
	satPID int identity
	, satCreatedDate datetime
	, satCreatedBy varchar(50)
	, satSubjectLinkID int
	, satStudyArmLinkID int

	constraint PK_SubjectAssignedTo primary key clustered
	(
		satPID asc
	)
)

---
------ DoctorAssignedTo table
---
if exists(select 1 from sysobjects where name = 'DoctorAssignedTo')
  begin
	print 'Dropping DoctorAssignedTo'
	drop table DoctorAssignedTo
  end

create	table DoctorAssignedTo 
(
	datPID int identity
	, datCreatedDate datetime
	, datCreatedBy varchar(50)
	, datDoctorLinkID int
	, datStudyArmLinkID int

	constraint PK_DoctorAssignedTo primary key clustered
	(
		datPID asc
	)
)


