program newdep;

{$R *.res}


uses
  Forms,
  MultiTWAIN in 'MultiTWAIN.pas',
  dep_config in 'dep_config.pas' {ConfigForm},
  dep_contreportform in 'dep_contreportform.pas' {ContReportForm},
  dep_coursereportform in 'dep_coursereportform.pas' {CourseReportForm},
  dep_datelookupform in 'dep_datelookupform.pas' {DateLookupForm},
  dep_dateselectform in 'dep_dateselectform.pas' {DateSelectForm},
  dep_dep in 'dep_dep.pas' {DepManForm},
  dep_diplomeeditform in 'dep_diplomeeditform.pas' {DiplomeEditForm},
  dep_diplomeform in 'dep_diplomeform.pas' {DiplomeForm},
  dep_examrepform in 'dep_examrepform.pas' {ExamReportForm},
  dep_group in 'dep_group.pas' {GroupManForm},
  dep_groupform in 'dep_groupform.pas' {GroupForm},
  dep_groupmissmanform in 'dep_groupmissmanform.pas' {GroupMissManForm},
  dep_groupweekmissform in 'dep_groupweekmissform.pas' {GroupWeekMissForm},
  dep_inputform in 'dep_inputform.pas' {InputForm},
  dep_listreportform in 'dep_listreportform.pas' {ListReportForm},
  dep_lookupstudentsform in 'dep_lookupstudentsform.pas' {StudentsLookupForm},
  dep_main in 'dep_main.pas' {MainForm},
  dep_marksmanform in 'dep_marksmanform.pas' {MarksManForm},
  dep_membersform in 'dep_membersform.pas' {MembersForm},
  dep_mounthmissreportform in 'dep_mounthmissreportform.pas' {MounthMissReportForm},
  dep_mounthrepform in 'dep_mounthrepform.pas' {MounthRepForm},
  dep_paramform in 'dep_paramform.pas' {ParamForm},
  dep_parentsform in 'dep_parentsform.pas' {ParentsForm},
  dep_placeform in 'dep_placeform.pas' {PlaceManForm},
  dep_practicsform in 'dep_practicsform.pas' {PracticsForm},
  dep_practreportform in 'dep_practreportform.pas' {PractReportForm},
  dep_reportselectform in 'dep_reportselectform.pas' {ReportSelectForm},
  dep_schoolform in 'dep_schoolform.pas' {SchoolManForm},
  dep_selectmounthform in 'dep_selectmounthform.pas' {SelectMounthForm},
  dep_semesterselectform in 'dep_semesterselectform.pas' {ComboSelectForm},
  dep_semestersform in 'dep_semestersform.pas' {SemesterForm},
  dep_semestersmanform in 'dep_semestersmanform.pas' {SemestersManForm},
  dep_seminareditform in 'dep_seminareditform.pas' {DetailEditForm},
  dep_seminarsformform in 'dep_seminarsformform.pas' {DetailForm},
  dep_seminarsstudentsform in 'dep_seminarsstudentsform.pas' {SeminarsStudentsForm},
  dep_semsubjectsform in 'dep_semsubjectsform.pas' {SemesterSubjectsForm},
  dep_skillsform in 'dep_skillsform.pas' {SkillsManForm},
  dep_skillsinputform in 'dep_skillsinputform.pas' {SkillsForm},
  dep_spec in 'dep_spec.pas' {SpecManForm},
  dep_specform in 'dep_specform.pas' {SpecForm},
  dep_studdelform in 'dep_studdelform.pas' {DelStudentForm},
  dep_studentform in 'dep_studentform.pas' {StudentForm},
  dep_studentlistform in 'dep_studentlistform.pas' {StudentListForm},
  dep_studentsdatareportform in 'dep_studentsdatareportform.pas' {StudentsDataReportForm},
  dep_studentsmarkform in 'dep_studentsmarkform.pas' {StudentsMarkForm},
  dep_studmissform in 'dep_studmissform.pas' {StudMissForm},
  dep_subjectselectform in 'dep_subjectselectform.pas' {SubjectSelectForm},
  dep_svodvedrepform in 'dep_svodvedrepform.pas' {CompReportForm},
  dep_testrepform in 'dep_testrepform.pas' {TestReportForm},
  dep_totalmissrepform in 'dep_totalmissrepform.pas' {TotalMissingsReport},
  dep_uchrepform in 'dep_uchrepform.pas' {UchReportForm},
  dep_weightmanform in 'dep_weightmanform.pas' {WeightManForm},
  dep_workform in 'dep_workform.pas' {WorkForm},
  dep_workmanform in 'dep_workmanform.pas' {WorkerManForm},
  kern in 'kern.pas',
  dep_addsubjectform in 'dep_addsubjectform.pas' {AddSubjectForm},
  dep_editpracticsform in 'dep_editpracticsform.pas' {EditPracticsForm},
  dep_weekmissingsrepform in 'dep_weekmissingsrepform.pas' {WeekMissingsRepForm},
  contr_groupsreport in 'contr_groupsreport.pas' {MounthReportForm},
  dep_mounthmarksrepform in 'dep_mounthmarksrepform.pas' {MounthMarkReportForm},
  dep_diplomerepform1 in 'dep_diplomerepform1.pas' {DiplomeRepForm1},
  dep_restorestudentform in 'dep_restorestudentform.pas' {RestoreStudentForm},
  dep_diplomerepform2 in 'dep_diplomerepform2.pas' {DiplomeRepForm2},
  dep_cardform in 'dep_cardform.pas' {CardForm},
  dep_carddetailform in 'dep_carddetailform.pas' {CardDetailForm},
  dep_detailedmounthmissingsrepform in 'dep_detailedmounthmissingsrepform.pas' {DetailedMounthMissingsRepForm},
  dep_academrepform2 in 'dep_academrepform2.pas' {AcademRepForm2},
  dep_academrepform1 in 'dep_academrepform1.pas' {AcademRepForm1},
  dep_academdetailsform in 'dep_academdetailsform.pas' {AcademDetailsForm},
  dep_langrepform in 'dep_langrepform.pas' {LangReportForm},
  dep_diplomeresultform in 'dep_diplomeresultform.pas' {DiplomeResultsRepForm},
  dep_gosresultsreportform in 'dep_gosresultsreportform.pas' {GOSResultsRepForm},
  dep_graduatereportform in 'dep_graduatereportform.pas' {GraduateReportForm},
  dep_appreportform in 'dep_appreportform.pas' {AppReportForm},
  dep_appcontreportform in 'dep_appcontreportform.pas' {AppContRepForm},
  dep_birthlistreportform in 'dep_birthlistreportform.pas' {BirthListReportForm},
  dep_comissionrepform in 'dep_comissionrepform.pas' {ComissionReportForm},
  dep_comissiongosrepform in 'dep_comissiongosrepform.pas' {ComissionGOSReportForm},
  dep_fnpracticsform in 'dep_fnpracticsform.pas' {FnPracticsForm},
  dep_sprform in 'dep_sprform.pas' {SprForm},
  dep_cardprintform in 'dep_cardprintform.pas' {CardPrintForm},
  dep_newacademrepform2 in 'dep_newacademrepform2.pas' {NewAcademRepForm2},
  dep_newacademrepform1 in 'dep_newacademrepform1.pas' {NewAcademRepForm1},
  dep_stmounthstatisticsform in 'dep_stmounthstatisticsform.pas' {StMounthStatisticsForm},
  dep_diplomecopyrepform in 'dep_diplomecopyrepform.pas' {DiplomeCopyRepForm},
  dep_finalstudyresultsreport in 'dep_finalstudyresultsreport.pas' {FinalStudyResultsReportForm},
  customlookupform in 'customlookupform.pas' {CustomLookupForm},
  dep_diplome2repform1 in 'dep_diplome2repform1.pas' {Diplome2RepForm1},
  dep_diplome2repform2 in 'dep_diplome2repform2.pas' {Diplome2RepForm2},
  dep_diplome2copyrepform in 'dep_diplome2copyrepform.pas' {Diplome2CopyRepForm},
  dep_studyplanslistform in 'dep_studyplanslistform.pas' {StudyPlansListForm},
  dep_studyplandetailsform in 'dep_studyplandetailsform.pas' {StudyPlanDetailsForm},
  dep_comissionkvalificationrepform in 'dep_comissionkvalificationrepform.pas' {ComissionKvalificationReportForm},
  dep_kvalificationexamrepform in 'dep_kvalificationexamrepform.pas' {KvalificationExamReportForm};

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
