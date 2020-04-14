-- Insert All test data (After Create_Tables)

--
-- Part 1
-- Insert Sites
insert	[Site] (sitName, sitDescription) values ('Bakersfield Hospital', 'First')
insert	[Site] (sitName, sitDescription) values ('Bakersfield Clinic', 'Second')
insert	[Site] (sitName, sitDescription) values ('Urgent Care', 'Third')
insert	[Site] (sitName, sitDescription) values ('Beaumont Emergency Care', 'Fourth')
insert	[Site] (sitName, sitDescription) values ('Pew Research Center', 'Fifth')
insert	[Site] (sitName, sitDescription) values ('Yale Campus Clinic', 'Sixth')
insert	[Site] (sitName, sitDescription) values ('CSUB Emergency Care', 'Seventh')
insert	[Site] (sitName, sitDescription) values ('AMRG Research', 'Eighth')
insert	[Site] (sitName, sitDescription) values ('Yucaipa Clinic', 'Ninth')
insert	[Site] (sitName, sitDescription) values ('LA Hospital', 'Tenth')

-- Insert Sponsors
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Medi-Cal', '(128)-394-857')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Blue Shield', '(194)-847-5596')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Ancient Protector', '(388)-660-4857')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Shield of Argus', '(295)-968-8473')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Allda Research', '(199)-293-9945')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Clini-Trial', '(299)-939-4055')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Federation of Planets', '(100)-200-4956')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Romulan Empire', '(100)-203-0054')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Klingon Empire', '(100)-203-0056')
insert	[Sponsor] (spoName, spoPhoneNumber) values ('Deep Space 9', '(100)-203-5783')

-- Insert Doctors
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Leonard Bones McCoy', 'Vision', '(123)-498-4102')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Beverly Crusher', 'Olfactory', '(122)-947-2178')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Ogawa', 'Research', '(102)-738-4957')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Katherine Pulaski ', 'Research', '(102)-999-2716')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Julian Bashir', 'Vision', '(773)-829-1826')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Phlox', 'Cancer', '(102)-978-3821')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Jadzia Dax', 'Cardiovascular', '(100)-283-8477')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Vic Fontaine', 'Psychology', '(102)-228-3371')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Kathryn Janeway', 'Family Psychology', '(856)-637-7459')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Geordi La Forge', 'Research', '(100)-288-4772')
insert	[Doctor] (docName, docSpecialization, docPhoneNumber) values ('Strange', 'Infinity Stones', '(001)-387-1245')

-- Insert Subjects
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('RP', '4/20/1992','Male', 58, 'O', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('AP', '5/13/1994','Male', 56, 'A+', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('SY', '8/12/2000','Female', 65, 'B-', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('BS', '1/7/1984','Male', 90, 'B-', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('CA', '9/2/1977','Female', 29, 'O', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('IA', '5/19/1995','Male', 39, 'A-', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('PO', '2/25/1987','Femail', 64, 'A+', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('MN', '6/22/1988','Male', 28, 'B-', 1, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('CO', '8/17/1995','Decline To State', 18, 'O', 0, 'Alive')
insert	[Subject] (subInitials, subDOB, subGender, subHeight, subBloodType, subStatus, subSurvivalStatus) values ('AP', '10/12/1998','Male', 87, 'A-', 0, 'Deceased')

-- Insert Studies
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Heart Monitor x1004854', 'Testing Heart Monitor Technology', 25,'Incomplete', '', '', 1, 4)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Blood Pressure x1230201', 'Testing Blood Pressure Medication', 50, 'Complete', '', '', 4, 2)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Medicinal Cannabis x1249382', 'Testing medicinal use of Cannabis', 100,'Incomplete', '', '', 3, 8)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Arthrits Medication x2291943', 'Testing effects of arthritus medication', 20, 'Incomplete', '', '', 4, 4)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Caffine Addiction x1204212', 'Testing effects of caffine withdraw', 10, 'Incomplete', '', '', 5, 5)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Tobacco Addiction x1485293', 'Testing tobacco supplement', 10, 'Incomplete', '', '', 6, 7)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Weight Loss Drugs x286736', 'Testing weight loss medication', 15, 'Complete', '', '', 7, 8)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Shock Therapy x295848', 'Testing effects of electricity on human brain', 20, 'Incomplete', '', '', 7, 2)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Torture Methods x1958382', 'Testing new and improved methods of torture', 50, 'Incomplete', '', '', 5, 6)
insert	[Study] (stuName, stuDescription, stuEnrollmentGoal, stuCompletedStatus, stuStartDate, stuEndDate, stuSponsorLinkID, stuSiteLinkID) values ('Lethal Injection x958381', 'Testing effect of lethal injection, is it reall lethal?', 100, 'Incomplete', '', '', 4, 9)

-- Insert Study Arms
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 25, 1)
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Placebo Group', 25, 1)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 25, 2)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 40, 3)
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Placebo Group', 50, 3)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 15, 4)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 30, 5)
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Placebo Group', 45, 5)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 50, 6)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 25, 7)
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Placebo Group', 30, 7)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 15, 8)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 25, 9)
insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Placebo Group', 35, 9)

insert	[StudyArm] (sarName, sarEnrollmentGoal, sarStudyLinkID) values ('Main', 45, 10)

-- 
-- Part 2

select * from Visit
select * from StudyArm -- 15 study arms


-- Insert Visits
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '5/1/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '5/4/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '5/7/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (4, 'Fourth', '5/10/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (5, 'Fifth', '5/13/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (6, 'Sixth', '5/16/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (7, 'Seventh', '5/17/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (8, 'Eighth', '5/21/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (9, 'Ninth', '5/24/2018', '', 1)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (10, 'Tenth', '5/27/2018', '', 1)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '5/1/2018', '', 2)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '5/4/2018', '', 2)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '5/7/2018', '', 2)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '4/1/2018', '', 3)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '4/2/2018', '', 3)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '4/3/2018', '', 3)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '3/1/2018', '', 4)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '3/2/2018', '', 4)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '3/3/2018', '', 4)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '2/1/2018', '', 5)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '2/2/2018', '', 5)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '2/3/2018', '', 5)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '2/1/2018', '', 6)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '2/2/2018', '', 6)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '2/3/2018', '', 6)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '2/1/2018', '', 7)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '2/2/2018', '', 7)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '2/3/2018', '', 7)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '1/1/2018', '', 8)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '1/2/2018', '', 8)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '1/3/2018', '', 8)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '10/1/2017', '', 9)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '10/2/2017', '', 9)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '10/3/2017', '', 9)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '11/1/2017', '', 10)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '11/2/2017', '', 10)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '11/3/2017', '', 10)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '9/1/2017', '', 11)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '9/2/2017', '', 11)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '9/3/2017', '', 11)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '6/1/2017', '', 12)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '6/2/2017', '', 12)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '6/3/2017', '', 12)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '6/1/2018', '', 13)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '6/2/2018', '', 13)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '6/3/2018', '', 13)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '7/1/2018', '', 14)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '7/2/2018', '', 14)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '7/3/2018', '', 14)

insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (1, 'First', '8/1/2018', '', 15)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (2, 'Second', '8/2/2018', '', 15)
insert	[Visit] (visName, visDescription, visStart, visEnd, visStudyArmLinkID) values (3, 'Third', '8/3/2018', '', 15)

-- Insert Activities


insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 95.00, 1)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 100.00, 1)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 39.99, 1)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('EKG', 'Second', 60, 100.00, 1)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Checkup', 'Third', 60, 39.99, 1)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 60.00, 2)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 75.00, 2)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 150.00, 2)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 95.00, 3)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 100.00, 3)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 39.99, 3)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 60.00, 4)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 75.00, 4)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 150.00, 4)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 95.00, 5)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 100.00, 5)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 39.99, 5)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 60.00, 6)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 75.00, 6)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 150.00, 6)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 95.00, 7)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 100.00, 7)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 39.99, 7)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 60.00, 8)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 75.00, 8)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 150.00, 8)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 95.00, 9)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 100.00, 9)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 39.99, 9)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Blood Draw', 'First', 60, 60.00, 10)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Random Transfusion', 'Second', 60, 75.00, 10)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Physical', 'Third', 60, 150.00, 10)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Paperwork', 'Fourth', 60, 60.00, 3)
insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Checkup', 'Fifth', 60, 75.00, 3)

insert	[Activity] (actName, actDescription, actDuration, actCost, actStudyArmLinkID) values ('Checkup', 'Fourth', 60, 75.00, 4)

-- Insert Appointments
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 1, 1, 1, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/21/2018 8:30:00 AM', '5/21/2018 9:30:00 AM', 0, 2, 2, 2, 2, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/22/2018 8:00:00 AM', '5/22/2018 9:00:00 AM', 0, 3, 3, 3, 3, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/23/2018 11:00:00 AM', '5/23/2018 12:00:00 PM', 0, 4, 4, 4, 4, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/24/2018 11:45:00 AM', '5/24/2018 12:45:00 PM', 0, 5, 5, 5, 5, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/25/2018 10:15:00 AM', '5/25/2018 11:15:00 AM', 0, 6, 6, 6, 6, 1)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/26/2018 7:15:00 AM', '5/26/2018 8:30:00 AM', 0, 7, 7, 7, 7, 1)

--Subject 2
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/1/2018 8:00:00 AM', '6/1/2018 9:00:00 AM', 0, 8, 8, 8, 8, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/2/2018 12:00:00 PM', '6/2/2018 1:00:00 PM', 0, 9, 9, 9, 9, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/15/2018 4:00:00 PM', '5/15/2018 6:45:00 PM', 1, 10, 10, 10, 10, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/4/2018 6:00:00 PM', '6/4/2018 7:00:00 PM', 0, 11, 11, 11, 1, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/16/2018 10:00:00 AM', '5/16/2018 11:00:00 AM', 1, 12, 12, 2, 2, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/5/2018 6:00:00 AM', '6/5/2018 10:00:00 AM', 0, 13, 13, 13, 3, 2)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/10/2018 5:00:00 PM', '5/10/2018 6:00:00 PM', 1, 14, 14, 14, 4, 2)

--Subject 3
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/14/2018 9:00:00 AM', '5/14/2018 10:00:00 AM', 1, 15, 15, 15, 5, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/6/2018 12:00:00 PM', '6/6/2018 1:00:00 PM', 0, 1, 16, 16, 6, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/13/2018 12:00:00 PM', '5/13/2018 1:00:00 PM', 1, 1, 17, 17, 7, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/7/2018 3:00:00 PM', '6/7/2018 4:15:00 PM', 0, 2, 18, 18, 8, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/8/2018 2:00:00 PM', '6/8/2018 4:00:00 PM', 0, 3, 19, 19, 9, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/9/2018 1:00:00 PM', '6/9/2018 2:10:00 PM', 0, 4, 20, 20, 10, 3)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/10/2018 7:00:00 AM', '6/10/2018 8:10:00 AM', 0, 5, 21, 21, 1, 3)

--Subject 4
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/10/2018 10:00:00 AM', '6/10/2018 11:00:00 AM', 0, 6, 22, 22, 2, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/11/2018 7:00:00 AM', '6/11/2018 8:10:00 AM', 0, 7, 23, 23, 3, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/12/2018 8:00:00 AM', '6/12/2018 10:00:00 AM', 0, 8, 24, 24, 4, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/13/2018 1:00:00 PM', '5/1/2018 2:00:00 PM', 1, 9, 25, 25, 5, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/12/2018 10:00:00 AM', '5/12/2018 12:00:00 PM', 1, 10, 26, 26, 6, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/11/2018 7:00:00 AM', '5/1/2018 8:00:00 AM', 1, 11, 27, 27, 7, 4)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/13/2018 12:00:00 PM', '5/13/2018 1:00:00 PM', 0, 12, 28, 28, 8, 4)

--Subject 5
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/12/2018 4:00:00 PM', '5/12/2018 5:00:00 PM', 1, 13, 29, 29, 9, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/11/2018 12:00:00 PM', '5/11/2018 1:00:00 PM', 1, 14, 30, 30, 10, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/10/2018 6:00:00 PM', '5/10/2018 7:00:00 PM', 1, 15, 31, 31, 1, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/13/2018 2:00:00 PM', '6/13/2018 3:15:00 PM', 0, 1, 32, 32, 2, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/14/2018 10:00:00 AM', '6/14/2018 11:00:00 AM', 0, 2, 1, 33, 3, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/9/2018 12:00:00 PM', '5/9/2018 1:00:00 PM', 1, 3, 2, 34, 4, 5)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/15/2018 2:00:00 PM', '5/1/2018 4:00:00 PM', 0, 4, 3, 35, 5, 5)

--Subject 6
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/13/2018 12:00:00 PM', '5/13/2018 1:00:00 PM', 1, 5, 4, 36, 6, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/12/2018 2:00:00 PM', '5/12/2018 4:00:00 PM', 1, 6, 5, 37, 7, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/11/2018 5:00:00 PM', '5/11/2018 6:00:00 PM', 1, 7, 6, 38, 8, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/10/2018 7:00:00 AM', '5/10/2018 9:00:00 AM', 1, 8, 7, 39, 9, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/9/2018 8:00:00 AM', '5/9/2018 9:00:00 AM', 1, 9, 8, 40, 10, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/8/2018 12:00:00 PM', '5/8/2018 1:00:00 PM', 1, 10, 9, 41, 1, 6)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/7/2018 5:00:00 PM', '5/7/2018 6:00:00 PM', 1, 11, 10, 42, 2, 6)

--Subject 7
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/10/2018 4:00:00 PM', '5/10/2018 5:00:00 PM', 1, 12, 11, 43, 3, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/13/2018 5:00:00 PM', '6/13/2018 6:00:00 PM', 0, 13, 12, 44, 4, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/9/2018 10:00:00 AM', '5/9/2018 11:00:00 AM', 1, 14, 13, 45, 5, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/14/2018 7:00:00 PM', '6/14/2018 8:00:00 PM', 0, 15, 14, 46, 6, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/8/2018 2:00:00 PM', '5/8/2018 3:00:00 PM', 1, 1, 15, 47, 7, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/15/2018 6:00:00 AM', '6/15/2018 8:00:00 AM', 0, 2, 16, 48, 8, 7)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/7/2018 2:00:00 PM', '5/7/2018 3:00:00 PM', 1, 3, 17, 49, 9, 7)

--Subject 8
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/14/2018 12:00:00 PM', '6/14/2018 1:00:00 PM', 0, 4, 18, 50, 10, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/8/2018 12:00:00 PM', '5/8/2018 1:00:00 PM', 1, 5, 19, 51, 1, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/15/2018 2:00:00 PM', '6/15/2018 3:00:00 PM', 0, 6, 20, 52, 2, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/7/2018 4:00:00 PM', '5/7/2018 5:00:00 PM', 1, 7, 21, 1, 3, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/16/2018 7:00:00 PM', '6/16/2018 8:00:00 PM', 0, 8, 22, 2, 4, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/6/2018 6:00:00 PM', '5/6/2018 7:00:00 PM', 1, 9, 23, 3, 5, 8)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/17/2018 8:00:00 PM', '6/17/2018 9:00:00 PM', 0, 10, 24, 4, 6, 8)

--Subject 9
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/8/2018 8:00:00 AM', '5/8/2018 10:00:00 AM', 1, 11, 25, 5, 7, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/7/2018 2:00:00 PM', '5/7/2018 3:00:00 PM', 1, 12, 26, 6, 8, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/5/2018 7:00:00 AM', '5/5/2018 8:15:00 AM', 1, 13, 27, 7, 9, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/16/2018 11:00:00 AM', '6/16/2018 12:00:00 PM', 0, 14, 28, 10, 9, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/17/2018 2:00:00 PM', '6/17/2018 3:00:00 PM', 0, 15, 29, 9, 1, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/18/2018 1:00:00 PM', '6/18/2018 2:30:00 PM', 0, 1, 30, 10, 2, 9)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/19/2018 7:00:00 AM', '6/19/2018 8:00:00 AM', 0, 2, 31, 11, 3, 9)

--Subject 10
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/18/2018 8:00:00 AM', '6/18/2018 10:00:00 AM', 0, 3, 32, 12, 4, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/7/2018 12:00:00 PM', '5/7/2018 1:00:00 PM', 1, 4, 1, 13, 5, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/6/2018 8:00:00 PM', '5/6/2018 10:00:00 PM', 1, 5, 2, 14, 6, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/5/2018 9:00:00 AM', '5/5/2018 11:00:00 PM', 1, 6, 3, 15, 7, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/19/2018 5:00:00 PM', '6/19/2018 6:00:00 PM', 0, 7, 4, 16, 8, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/4/2018 11:30:00 AM', '5/4/2018 1:00:00 PM', 1, 8, 5, 17, 9, 10)
insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('6/20/2018 7:15:00 AM', '6/20/2018 8:00:00 AM', 0, 9, 6, 18, 10, 10)

	--Arm 1
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 3, 7, 6, 5)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 4, 10, 4, 3)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 2, 5, 8)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 3, 9, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 9, 7, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 9, 7, 11)

	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 4, 5, 8)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 3, 5, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 6, 7, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 8, 7, 11)

	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 2, 3, 7, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 2, 4, 7, 11)

	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 3, 7, 11, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 4, 10, 11, 5)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 4, 2, 11, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 1, 5, 9, 11, 7)

	----Arm 2(Special Demo)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 2, 8, 12, 2, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 2, 3, 11, 1, 2)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 2, 7, 13, 2, 1)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 2, 6, 13, 1, 2)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 2, 6, 12, 2, 1)

	--Arm3
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 3, 9, 14, 11, 9)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 3, 10, 15, 11, 6)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 3, 11, 16, 11, 9)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 3, 9, 15, 3, 6)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 3, 10, 14, 3, 8)

	--Arm4
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 4, 12, 17, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 4, 13, 18, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 4, 14, 19, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 4, 13, 19, 1, 4)
	insert	[Appointment] (appStartDate, appEndDate, appCompletedStatus, appStudyArmLinkID, appActivityLinkID, appVisitLinkID, appSubjectLinkID, appDoctorLinkID) values ('5/20/2018 7:00:00 AM', '5/20/2018 8:00:00 AM', 0, 4, 13, 18, 1, 4)

GO

-- Insert Documents DocumentIn
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 1)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 1)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 1)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 1)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 2)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 2)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 2)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 2)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 3)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 3)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 3)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 3)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 4)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 4)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 4)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 4)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 5)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 5)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 5)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 5)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 6)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 6)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 6)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 6)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 7)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 7)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 7)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 7)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 8)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 8)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 8)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 8)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 9)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 9)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 9)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 9)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 10)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 10)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 10)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 10)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 11)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 11)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 11)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 11)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 12)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 12)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 12)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 12)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 13)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 13)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 13)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 13)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 14)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 14)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 14)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 14)

insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Patient History', 'somefilename.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 15)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Notes', 'notes.txt', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 6, 15)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Regulatory', 'regdocs.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 15)
insert	[DocumentInfo] (dinDescription, dinFileName, dinBLOB, dinVersion, dinStudyArmLinkID) values ('Release of Liability', 'rol.pdf', CONVERT(VARBINARY(25), '0x9473FBCCBC01AF', 1), 2, 15)

--Insert UserPermissions
--User Permissions
--SuperUser
insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 1

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 2

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 3

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 4

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 5

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 6

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 7

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 8

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 9

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 1, 10

--Administrator
insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 1

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 2

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 3

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 4

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 5

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 6

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 7

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 8

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 9

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 2, 10

--Coordinator
insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 3, 1

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 3, 2

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 3, 3

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 3, 4

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 3, 5

--Monitor
insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 4, 1

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 4, 2

insert	UserPermissions (upeCreatedDate, upeCreatedBy, upeUserLinkID, upeStudyLinkID)
select	getdate(), system_user, 4, 3


-- Insert SubjectAssignedTo
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 1, 1
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 2, 1
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 3, 1
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 4, 1


insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 2, 2
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 3, 2
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 4, 2
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 5, 2
insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 6, 2


insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 3, 3

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 4, 4

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 5, 5

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 6, 6

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 7, 7

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 8, 8

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 9, 9

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 10, 10

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 1, 10

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 2, 10

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 3, 10

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 4, 10

insert	SubjectAssignedTo(satCreatedDate, satCreatedBy, satSubjectLinkID, satStudyArmLinkID)
select	getdate(), system_user, 5, 10

select * from Subject

-- Insert DoctorAssignedTo
insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 1, 1

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 2, 2

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 3, 3

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 4, 4

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 5, 5

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 6, 6

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 7, 7

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 8, 8

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 9, 9

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 10, 10

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 1, 11

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 2, 12

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 3, 13

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 4, 14

insert	DoctorAssignedTo(datCreatedDate, datCreatedBy, datDoctorLinkID, datStudyArmLinkID)
select	getdate(), system_user, 5, 15

select * from Doctor

-- Insert Users
insert	Users(useCreatedDate, useCreatedBy, useModifiedDate, useModifiedBy, useUserStatus, useUserType, useUserName, usePassword, useSiteLinkID)
select	getdate(), system_user, getdate(), system_user, 1, 1, 'SuperUser', 'AQAAAAIAACcQAAAAINm3xLZMQz+fQfGw89OGhMeZVTJG8Vxx1aMBtu/gI/ZtLiTRuZ+2nEUloQvuntSNYMh0E5tb8SjZlfTB/Lm8yW8x+aQ+C9eTdWyLqeftYQB4zxr50tgZGE6GwsVLgoFwYA==', 0
insert Users(useCreatedDate, useCreatedBy, useModifiedBy, useModifiedDate, useUserStatus, useUserType, useUserName, usePassword, useSiteLinkID)
select GETDATE(), SYSTEM_USER, SYSTEM_USER, GETDATE(), 1, 2, 'Administrator', 'AQAAAAIAACcQAAAAINm3xLZMQz+fQfGw89OGhMeZVTJG8Vxx1aMBtu/gI/ZtLiTRuZ+2nEUloQvuntSNYMh0E5tb8SjZlfTB/Lm8yW8x+aQ+C9eTdWyLqeftYQB4zxr50tgZGE6GwsVLgoFwYA==', 0
insert Users(useCreatedDate, useCreatedBy, useModifiedBy, useModifiedDate, useUserStatus, useUserType, useUserName, usePassword, useSiteLinkID)
select GETDATE(), SYSTEM_USER, SYSTEM_USER, GETDATE(), 1, 3, 'Coordinator', 'AQAAAAIAACcQAAAAINm3xLZMQz+fQfGw89OGhMeZVTJG8Vxx1aMBtu/gI/ZtLiTRuZ+2nEUloQvuntSNYMh0E5tb8SjZlfTB/Lm8yW8x+aQ+C9eTdWyLqeftYQB4zxr50tgZGE6GwsVLgoFwYA==', 0
insert Users(useCreatedDate, useCreatedBy, useModifiedBy, useModifiedDate, useUserStatus, useUserType, useUserName, usePassword, useSiteLinkID)
select GETDATE(), SYSTEM_USER, SYSTEM_USER, GETDATE(), 1, 4, 'Monitor', 'AQAAAAIAACcQAAAAINm3xLZMQz+fQfGw89OGhMeZVTJG8Vxx1aMBtu/gI/ZtLiTRuZ+2nEUloQvuntSNYMh0E5tb8SjZlfTB/Lm8yW8x+aQ+C9eTdWyLqeftYQB4zxr50tgZGE6GwsVLgoFwYA==', 0


-- 
-- Quick update, small error in upload
update DoctorAssignedTo
set datDoctorLinkID = 10 where datDoctorLinkID > 10 


-- Complete