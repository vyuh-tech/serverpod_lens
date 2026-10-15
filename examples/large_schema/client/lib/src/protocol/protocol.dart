/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_auth_core_client/serverpod_auth_core_client.dart'
    as _iacc;
import 'package:serverpod_auth_idp_client/serverpod_auth_idp_client.dart'
    as _iaic;
import 'package:serverpod_client/serverpod_client.dart' as _isc;
import 'campus/academics/course_categories.dart' as _icbi7gwo;
import 'campus/academics/course_equivalences.dart' as _izhnn43s;
import 'campus/academics/course_materials.dart' as _i60iovqj;
import 'campus/academics/course_outcomes.dart' as _ifd85uwc;
import 'campus/academics/course_prerequisites.dart' as _ihnnsiks;
import 'campus/academics/course_sections.dart' as _iporzlvp;
import 'campus/academics/courses.dart' as _iik9idpd;
import 'campus/academics/lecturer_departments.dart' as _i6p3cs2n;
import 'campus/academics/lecturers.dart' as _ixrb3pvm;
import 'campus/academics/office_hours.dart' as _i90s5rli;
import 'campus/academics/programme_courses.dart' as _idvibfro;
import 'campus/academics/programme_versions.dart' as _ikq440cu;
import 'campus/academics/programmes.dart' as _i49ncx41;
import 'campus/academics/qualifications.dart' as _iuk3rrc1;
import 'campus/academics/room_bookings.dart' as _igrg8f15;
import 'campus/academics/section_capacity_overrides.dart' as _i4dxex9j;
import 'campus/academics/section_instructors.dart' as _i60vl9yy;
import 'campus/academics/section_meetings.dart' as _i1ujp85c;
import 'campus/academics/timetable_entries.dart' as _i5vbc563;
import 'campus/academics/timetables.dart' as _iztuz2v2;
import 'campus/admissions/acceptances.dart' as _ioijgh15;
import 'campus/admissions/application_choices.dart' as _iszjqqz2;
import 'campus/admissions/application_documents.dart' as _i3p9hmqv;
import 'campus/admissions/application_reviews.dart' as _iwgn7l2z;
import 'campus/admissions/applications.dart' as _i84qe6g5;
import 'campus/admissions/cohort_memberships.dart' as _iz7cqiiz;
import 'campus/admissions/cohorts.dart' as _iu4vottr;
import 'campus/admissions/guardians.dart' as _i2lpxeo5;
import 'campus/admissions/offer_conditions.dart' as _id663sq3;
import 'campus/admissions/offers.dart' as _icm8cu4v;
import 'campus/admissions/student_addresses.dart' as _i4ls3qtz;
import 'campus/admissions/student_contacts.dart' as _irvnuni5;
import 'campus/admissions/student_documents.dart' as _iwai6mlf;
import 'campus/admissions/student_guardians.dart' as _i16zyk3v;
import 'campus/admissions/student_holds.dart' as _iz31h8i4;
import 'campus/admissions/student_notes.dart' as _idvhf8qa;
import 'campus/admissions/student_status_events.dart' as _i6c5z7zh;
import 'campus/admissions/students.dart' as _ixciykx6;
import 'campus/assessment/appeals.dart' as _izef6fak;
import 'campus/assessment/assessment_components.dart' as _ipsxsf4b;
import 'campus/assessment/assessment_markers.dart' as _if8a84ek;
import 'campus/assessment/assessment_submissions.dart' as _iuohle5e;
import 'campus/assessment/assessments.dart' as _iy95bowl;
import 'campus/assessment/exam_accommodations.dart' as _i968i8hm;
import 'campus/assessment/exam_registrations.dart' as _iqsus0ia;
import 'campus/assessment/exam_seats.dart' as _iq0v8pha;
import 'campus/assessment/exam_sessions.dart' as _igek713o;
import 'campus/assessment/exams.dart' as _iej23kcn;
import 'campus/assessment/grade_changes.dart' as _i2oqkkd6;
import 'campus/assessment/grade_scale_bands.dart' as _i12uv7b6;
import 'campus/assessment/grade_scales.dart' as _ielxdmeu;
import 'campus/assessment/grades.dart' as _ips0lupm;
import 'campus/assessment/submission_files.dart' as _iv6t9wps;
import 'campus/campus/academic_years.dart' as _idxtqeho;
import 'campus/campus/buildings.dart' as _ijg49dtu;
import 'campus/campus/campuses.dart' as _ii5cv0xg;
import 'campus/campus/departments.dart' as _ieaagiip;
import 'campus/campus/faculties.dart' as _iw9evvci;
import 'campus/campus/rooms.dart' as _i5697to7;
import 'campus/campus/terms.dart' as _iny6aho6;
import 'campus/enrolment/attendance_records.dart' as _i7ljm6m0;
import 'campus/enrolment/attendance_sessions.dart' as _i5rv3lv9;
import 'campus/enrolment/completions.dart' as _iftc8tcu;
import 'campus/enrolment/credit_transfers.dart' as _ixqnp4lw;
import 'campus/enrolment/enrolment_requests.dart' as _iij70sau;
import 'campus/enrolment/enrolments.dart' as _ikbz98ec;
import 'campus/enrolment/study_plan_courses.dart' as _i6lqa8un;
import 'campus/enrolment/study_plans.dart' as _i5anj6ne;
import 'campus/enrolment/waitlist_entries.dart' as _imquh55n;
import 'campus/enrolment/withdrawals.dart' as _i6xgcgm2;
import 'campus/finance/fee_schedule_lines.dart' as _isewgl0f;
import 'campus/finance/fee_schedules.dart' as _i6ur2gi2;
import 'campus/finance/fee_types.dart' as _ivd0ctvz;
import 'campus/finance/financial_aid_applications.dart' as _iy3qqd34;
import 'campus/finance/financial_aid_decisions.dart' as _i6aphuzg;
import 'campus/finance/invoice_lines.dart' as _i785d3eu;
import 'campus/finance/invoices.dart' as _ih7yrsa3;
import 'campus/finance/payment_allocations.dart' as _ip72wm5q;
import 'campus/finance/payments.dart' as _igjjsnon;
import 'campus/finance/refunds.dart' as _ih0zxat5;
import 'campus/finance/scholarship_awards.dart' as _i2d8zb54;
import 'campus/finance/scholarships.dart' as _i12o4a5n;
import 'campus/finance/sponsor_contributions.dart' as _imm1bvl9;
import 'campus/finance/sponsors.dart' as _iufogsm9;
import 'campus/finance/sponsorships.dart' as _i5w6z1o1;
import 'campus/housing/housing_allocations.dart' as _id1yl7ms;
import 'campus/housing/housing_applications.dart' as _inj6rnis;
import 'campus/housing/housing_charges.dart' as _i9sv4sdm;
import 'campus/housing/housing_contracts.dart' as _is5welzq;
import 'campus/housing/housing_guests.dart' as _ieupa5nm;
import 'campus/housing/housing_inspections.dart' as _i33gygjf;
import 'campus/housing/housing_maintenance_requests.dart' as _ip7dqx68;
import 'campus/housing/housing_preferences.dart' as _i1chn6z5;
import 'campus/housing/residence_beds.dart' as _ijjla5z9;
import 'campus/housing/residence_floors.dart' as _ioguw2d9;
import 'campus/housing/residence_rooms.dart' as _i4wllryj;
import 'campus/housing/residences.dart' as _ilwtmbox;
import 'campus/library/authors.dart' as _im17xq9s;
import 'campus/library/book_authors.dart' as _ieum417b;
import 'campus/library/book_copies.dart' as _i8iyxmm6;
import 'campus/library/book_editions.dart' as _idwj8oog;
import 'campus/library/books.dart' as _i91fxs7d;
import 'campus/library/fines.dart' as _imao42n2;
import 'campus/library/library_branches.dart' as _i7d3ow2m;
import 'campus/library/library_visits.dart' as _ife2jm2t;
import 'campus/library/loan_renewals.dart' as _iz85k6nw;
import 'campus/library/loans.dart' as _ivrsnad5;
import 'campus/library/publishers.dart' as _i7uvxqby;
import 'campus/library/reading_list_entries.dart' as _i8fl0bcz;
import 'campus/library/reading_lists.dart' as _iuf8fw82;
import 'campus/library/reservations.dart' as _izrbvszp;
import 'campus/research/ethics_applications.dart' as _ilkwpsep;
import 'campus/research/ethics_reviews.dart' as _i23unika;
import 'campus/research/grant_budgets.dart' as _irnr71yk;
import 'campus/research/grant_expenses.dart' as _io3zc5dl;
import 'campus/research/grants.dart' as _irh7kw2j;
import 'campus/research/project_milestones.dart' as _i6qyipky;
import 'campus/research/publication_authors.dart' as _i2rtf719;
import 'campus/research/publications.dart' as _i5u1ue6j;
import 'campus/research/research_datasets.dart' as _ik725i35;
import 'campus/research/research_memberships.dart' as _i5h5n425;
import 'campus/research/research_projects.dart' as _it8rg4yy;
import 'schema/schema_access_exception.dart' as _iqdes7hr;
import 'schema/schema_column.dart' as _ip7yl2xa;
import 'schema/schema_enum.dart' as _irxuw07j;
import 'schema/schema_foreign_key.dart' as _iarzs90a;
import 'schema/schema_graph.dart' as _is38wmwx;
import 'schema/schema_index.dart' as _id0qwmzg;
import 'schema/schema_module.dart' as _iyw9pr81;
import 'schema/schema_snapshot.dart' as _iaxhcc5o;
import 'schema/schema_table.dart' as _ixxyfkud;
export 'campus/academics/course_categories.dart';
export 'campus/academics/course_equivalences.dart';
export 'campus/academics/course_materials.dart';
export 'campus/academics/course_outcomes.dart';
export 'campus/academics/course_prerequisites.dart';
export 'campus/academics/course_sections.dart';
export 'campus/academics/courses.dart';
export 'campus/academics/lecturer_departments.dart';
export 'campus/academics/lecturers.dart';
export 'campus/academics/office_hours.dart';
export 'campus/academics/programme_courses.dart';
export 'campus/academics/programme_versions.dart';
export 'campus/academics/programmes.dart';
export 'campus/academics/qualifications.dart';
export 'campus/academics/room_bookings.dart';
export 'campus/academics/section_capacity_overrides.dart';
export 'campus/academics/section_instructors.dart';
export 'campus/academics/section_meetings.dart';
export 'campus/academics/timetable_entries.dart';
export 'campus/academics/timetables.dart';
export 'campus/admissions/acceptances.dart';
export 'campus/admissions/application_choices.dart';
export 'campus/admissions/application_documents.dart';
export 'campus/admissions/application_reviews.dart';
export 'campus/admissions/applications.dart';
export 'campus/admissions/cohort_memberships.dart';
export 'campus/admissions/cohorts.dart';
export 'campus/admissions/guardians.dart';
export 'campus/admissions/offer_conditions.dart';
export 'campus/admissions/offers.dart';
export 'campus/admissions/student_addresses.dart';
export 'campus/admissions/student_contacts.dart';
export 'campus/admissions/student_documents.dart';
export 'campus/admissions/student_guardians.dart';
export 'campus/admissions/student_holds.dart';
export 'campus/admissions/student_notes.dart';
export 'campus/admissions/student_status_events.dart';
export 'campus/admissions/students.dart';
export 'campus/assessment/appeals.dart';
export 'campus/assessment/assessment_components.dart';
export 'campus/assessment/assessment_markers.dart';
export 'campus/assessment/assessment_submissions.dart';
export 'campus/assessment/assessments.dart';
export 'campus/assessment/exam_accommodations.dart';
export 'campus/assessment/exam_registrations.dart';
export 'campus/assessment/exam_seats.dart';
export 'campus/assessment/exam_sessions.dart';
export 'campus/assessment/exams.dart';
export 'campus/assessment/grade_changes.dart';
export 'campus/assessment/grade_scale_bands.dart';
export 'campus/assessment/grade_scales.dart';
export 'campus/assessment/grades.dart';
export 'campus/assessment/submission_files.dart';
export 'campus/campus/academic_years.dart';
export 'campus/campus/buildings.dart';
export 'campus/campus/campuses.dart';
export 'campus/campus/departments.dart';
export 'campus/campus/faculties.dart';
export 'campus/campus/rooms.dart';
export 'campus/campus/terms.dart';
export 'campus/enrolment/attendance_records.dart';
export 'campus/enrolment/attendance_sessions.dart';
export 'campus/enrolment/completions.dart';
export 'campus/enrolment/credit_transfers.dart';
export 'campus/enrolment/enrolment_requests.dart';
export 'campus/enrolment/enrolments.dart';
export 'campus/enrolment/study_plan_courses.dart';
export 'campus/enrolment/study_plans.dart';
export 'campus/enrolment/waitlist_entries.dart';
export 'campus/enrolment/withdrawals.dart';
export 'campus/finance/fee_schedule_lines.dart';
export 'campus/finance/fee_schedules.dart';
export 'campus/finance/fee_types.dart';
export 'campus/finance/financial_aid_applications.dart';
export 'campus/finance/financial_aid_decisions.dart';
export 'campus/finance/invoice_lines.dart';
export 'campus/finance/invoices.dart';
export 'campus/finance/payment_allocations.dart';
export 'campus/finance/payments.dart';
export 'campus/finance/refunds.dart';
export 'campus/finance/scholarship_awards.dart';
export 'campus/finance/scholarships.dart';
export 'campus/finance/sponsor_contributions.dart';
export 'campus/finance/sponsors.dart';
export 'campus/finance/sponsorships.dart';
export 'campus/housing/housing_allocations.dart';
export 'campus/housing/housing_applications.dart';
export 'campus/housing/housing_charges.dart';
export 'campus/housing/housing_contracts.dart';
export 'campus/housing/housing_guests.dart';
export 'campus/housing/housing_inspections.dart';
export 'campus/housing/housing_maintenance_requests.dart';
export 'campus/housing/housing_preferences.dart';
export 'campus/housing/residence_beds.dart';
export 'campus/housing/residence_floors.dart';
export 'campus/housing/residence_rooms.dart';
export 'campus/housing/residences.dart';
export 'campus/library/authors.dart';
export 'campus/library/book_authors.dart';
export 'campus/library/book_copies.dart';
export 'campus/library/book_editions.dart';
export 'campus/library/books.dart';
export 'campus/library/fines.dart';
export 'campus/library/library_branches.dart';
export 'campus/library/library_visits.dart';
export 'campus/library/loan_renewals.dart';
export 'campus/library/loans.dart';
export 'campus/library/publishers.dart';
export 'campus/library/reading_list_entries.dart';
export 'campus/library/reading_lists.dart';
export 'campus/library/reservations.dart';
export 'campus/research/ethics_applications.dart';
export 'campus/research/ethics_reviews.dart';
export 'campus/research/grant_budgets.dart';
export 'campus/research/grant_expenses.dart';
export 'campus/research/grants.dart';
export 'campus/research/project_milestones.dart';
export 'campus/research/publication_authors.dart';
export 'campus/research/publications.dart';
export 'campus/research/research_datasets.dart';
export 'campus/research/research_memberships.dart';
export 'campus/research/research_projects.dart';
export 'schema/schema_access_exception.dart';
export 'schema/schema_column.dart';
export 'schema/schema_enum.dart';
export 'schema/schema_foreign_key.dart';
export 'schema/schema_graph.dart';
export 'schema/schema_index.dart';
export 'schema/schema_module.dart';
export 'schema/schema_snapshot.dart';
export 'schema/schema_table.dart';
export 'client.dart';

class Protocol extends _isc.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    return className;
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on _isc.DeserializationClassNameNotFoundException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _icbi7gwo.CampusCourseCategory) {
      return _icbi7gwo.CampusCourseCategory.fromJson(data) as T;
    }
    if (t == _izhnn43s.CampusCourseEquivalence) {
      return _izhnn43s.CampusCourseEquivalence.fromJson(data) as T;
    }
    if (t == _i60iovqj.CampusCourseMaterial) {
      return _i60iovqj.CampusCourseMaterial.fromJson(data) as T;
    }
    if (t == _ifd85uwc.CampusCourseOutcome) {
      return _ifd85uwc.CampusCourseOutcome.fromJson(data) as T;
    }
    if (t == _ihnnsiks.CampusCoursePrerequisite) {
      return _ihnnsiks.CampusCoursePrerequisite.fromJson(data) as T;
    }
    if (t == _iporzlvp.CampusCourseSection) {
      return _iporzlvp.CampusCourseSection.fromJson(data) as T;
    }
    if (t == _iik9idpd.CampusCourse) {
      return _iik9idpd.CampusCourse.fromJson(data) as T;
    }
    if (t == _i6p3cs2n.CampusLecturerDepartment) {
      return _i6p3cs2n.CampusLecturerDepartment.fromJson(data) as T;
    }
    if (t == _ixrb3pvm.CampusLecturer) {
      return _ixrb3pvm.CampusLecturer.fromJson(data) as T;
    }
    if (t == _i90s5rli.CampusOfficeHour) {
      return _i90s5rli.CampusOfficeHour.fromJson(data) as T;
    }
    if (t == _idvibfro.CampusProgrammeCourse) {
      return _idvibfro.CampusProgrammeCourse.fromJson(data) as T;
    }
    if (t == _ikq440cu.CampusProgrammeVersion) {
      return _ikq440cu.CampusProgrammeVersion.fromJson(data) as T;
    }
    if (t == _i49ncx41.CampusProgramme) {
      return _i49ncx41.CampusProgramme.fromJson(data) as T;
    }
    if (t == _iuk3rrc1.CampusQualification) {
      return _iuk3rrc1.CampusQualification.fromJson(data) as T;
    }
    if (t == _igrg8f15.CampusRoomBooking) {
      return _igrg8f15.CampusRoomBooking.fromJson(data) as T;
    }
    if (t == _i4dxex9j.CampusSectionCapacityOverride) {
      return _i4dxex9j.CampusSectionCapacityOverride.fromJson(data) as T;
    }
    if (t == _i60vl9yy.CampusSectionInstructor) {
      return _i60vl9yy.CampusSectionInstructor.fromJson(data) as T;
    }
    if (t == _i1ujp85c.CampusSectionMeeting) {
      return _i1ujp85c.CampusSectionMeeting.fromJson(data) as T;
    }
    if (t == _i5vbc563.CampusTimetableEntry) {
      return _i5vbc563.CampusTimetableEntry.fromJson(data) as T;
    }
    if (t == _iztuz2v2.CampusTimetable) {
      return _iztuz2v2.CampusTimetable.fromJson(data) as T;
    }
    if (t == _ioijgh15.CampusAcceptance) {
      return _ioijgh15.CampusAcceptance.fromJson(data) as T;
    }
    if (t == _iszjqqz2.CampusApplicationChoice) {
      return _iszjqqz2.CampusApplicationChoice.fromJson(data) as T;
    }
    if (t == _i3p9hmqv.CampusApplicationDocument) {
      return _i3p9hmqv.CampusApplicationDocument.fromJson(data) as T;
    }
    if (t == _iwgn7l2z.CampusApplicationReview) {
      return _iwgn7l2z.CampusApplicationReview.fromJson(data) as T;
    }
    if (t == _i84qe6g5.CampusApplication) {
      return _i84qe6g5.CampusApplication.fromJson(data) as T;
    }
    if (t == _iz7cqiiz.CampusCohortMembership) {
      return _iz7cqiiz.CampusCohortMembership.fromJson(data) as T;
    }
    if (t == _iu4vottr.CampusCohort) {
      return _iu4vottr.CampusCohort.fromJson(data) as T;
    }
    if (t == _i2lpxeo5.CampusGuardian) {
      return _i2lpxeo5.CampusGuardian.fromJson(data) as T;
    }
    if (t == _id663sq3.CampusOfferCondition) {
      return _id663sq3.CampusOfferCondition.fromJson(data) as T;
    }
    if (t == _icm8cu4v.CampusOffer) {
      return _icm8cu4v.CampusOffer.fromJson(data) as T;
    }
    if (t == _i4ls3qtz.CampusStudentAddress) {
      return _i4ls3qtz.CampusStudentAddress.fromJson(data) as T;
    }
    if (t == _irvnuni5.CampusStudentContact) {
      return _irvnuni5.CampusStudentContact.fromJson(data) as T;
    }
    if (t == _iwai6mlf.CampusStudentDocument) {
      return _iwai6mlf.CampusStudentDocument.fromJson(data) as T;
    }
    if (t == _i16zyk3v.CampusStudentGuardian) {
      return _i16zyk3v.CampusStudentGuardian.fromJson(data) as T;
    }
    if (t == _iz31h8i4.CampusStudentHold) {
      return _iz31h8i4.CampusStudentHold.fromJson(data) as T;
    }
    if (t == _idvhf8qa.CampusStudentNote) {
      return _idvhf8qa.CampusStudentNote.fromJson(data) as T;
    }
    if (t == _i6c5z7zh.CampusStudentStatusEvent) {
      return _i6c5z7zh.CampusStudentStatusEvent.fromJson(data) as T;
    }
    if (t == _ixciykx6.CampusStudent) {
      return _ixciykx6.CampusStudent.fromJson(data) as T;
    }
    if (t == _izef6fak.CampusAppeal) {
      return _izef6fak.CampusAppeal.fromJson(data) as T;
    }
    if (t == _ipsxsf4b.CampusAssessmentComponent) {
      return _ipsxsf4b.CampusAssessmentComponent.fromJson(data) as T;
    }
    if (t == _if8a84ek.CampusAssessmentMarker) {
      return _if8a84ek.CampusAssessmentMarker.fromJson(data) as T;
    }
    if (t == _iuohle5e.CampusAssessmentSubmission) {
      return _iuohle5e.CampusAssessmentSubmission.fromJson(data) as T;
    }
    if (t == _iy95bowl.CampusAssessment) {
      return _iy95bowl.CampusAssessment.fromJson(data) as T;
    }
    if (t == _i968i8hm.CampusExamAccommodation) {
      return _i968i8hm.CampusExamAccommodation.fromJson(data) as T;
    }
    if (t == _iqsus0ia.CampusExamRegistration) {
      return _iqsus0ia.CampusExamRegistration.fromJson(data) as T;
    }
    if (t == _iq0v8pha.CampusExamSeat) {
      return _iq0v8pha.CampusExamSeat.fromJson(data) as T;
    }
    if (t == _igek713o.CampusExamSession) {
      return _igek713o.CampusExamSession.fromJson(data) as T;
    }
    if (t == _iej23kcn.CampusExam) {
      return _iej23kcn.CampusExam.fromJson(data) as T;
    }
    if (t == _i2oqkkd6.CampusGradeChange) {
      return _i2oqkkd6.CampusGradeChange.fromJson(data) as T;
    }
    if (t == _i12uv7b6.CampusGradeScaleBand) {
      return _i12uv7b6.CampusGradeScaleBand.fromJson(data) as T;
    }
    if (t == _ielxdmeu.CampusGradeScale) {
      return _ielxdmeu.CampusGradeScale.fromJson(data) as T;
    }
    if (t == _ips0lupm.CampusGrade) {
      return _ips0lupm.CampusGrade.fromJson(data) as T;
    }
    if (t == _iv6t9wps.CampusSubmissionFile) {
      return _iv6t9wps.CampusSubmissionFile.fromJson(data) as T;
    }
    if (t == _idxtqeho.CampusAcademicYear) {
      return _idxtqeho.CampusAcademicYear.fromJson(data) as T;
    }
    if (t == _ijg49dtu.CampusBuilding) {
      return _ijg49dtu.CampusBuilding.fromJson(data) as T;
    }
    if (t == _ii5cv0xg.CampusCampus) {
      return _ii5cv0xg.CampusCampus.fromJson(data) as T;
    }
    if (t == _ieaagiip.CampusDepartment) {
      return _ieaagiip.CampusDepartment.fromJson(data) as T;
    }
    if (t == _iw9evvci.CampusFaculty) {
      return _iw9evvci.CampusFaculty.fromJson(data) as T;
    }
    if (t == _i5697to7.CampusRoom) {
      return _i5697to7.CampusRoom.fromJson(data) as T;
    }
    if (t == _iny6aho6.CampusTerm) {
      return _iny6aho6.CampusTerm.fromJson(data) as T;
    }
    if (t == _i7ljm6m0.CampusAttendanceRecord) {
      return _i7ljm6m0.CampusAttendanceRecord.fromJson(data) as T;
    }
    if (t == _i5rv3lv9.CampusAttendanceSession) {
      return _i5rv3lv9.CampusAttendanceSession.fromJson(data) as T;
    }
    if (t == _iftc8tcu.CampusCompletion) {
      return _iftc8tcu.CampusCompletion.fromJson(data) as T;
    }
    if (t == _ixqnp4lw.CampusCreditTransfer) {
      return _ixqnp4lw.CampusCreditTransfer.fromJson(data) as T;
    }
    if (t == _iij70sau.CampusEnrolmentRequest) {
      return _iij70sau.CampusEnrolmentRequest.fromJson(data) as T;
    }
    if (t == _ikbz98ec.CampusEnrolment) {
      return _ikbz98ec.CampusEnrolment.fromJson(data) as T;
    }
    if (t == _i6lqa8un.CampusStudyPlanCourse) {
      return _i6lqa8un.CampusStudyPlanCourse.fromJson(data) as T;
    }
    if (t == _i5anj6ne.CampusStudyPlan) {
      return _i5anj6ne.CampusStudyPlan.fromJson(data) as T;
    }
    if (t == _imquh55n.CampusWaitlistEntry) {
      return _imquh55n.CampusWaitlistEntry.fromJson(data) as T;
    }
    if (t == _i6xgcgm2.CampusWithdrawal) {
      return _i6xgcgm2.CampusWithdrawal.fromJson(data) as T;
    }
    if (t == _isewgl0f.CampusFeeScheduleLine) {
      return _isewgl0f.CampusFeeScheduleLine.fromJson(data) as T;
    }
    if (t == _i6ur2gi2.CampusFeeSchedule) {
      return _i6ur2gi2.CampusFeeSchedule.fromJson(data) as T;
    }
    if (t == _ivd0ctvz.CampusFeeType) {
      return _ivd0ctvz.CampusFeeType.fromJson(data) as T;
    }
    if (t == _iy3qqd34.CampusFinancialAidApplication) {
      return _iy3qqd34.CampusFinancialAidApplication.fromJson(data) as T;
    }
    if (t == _i6aphuzg.CampusFinancialAidDecision) {
      return _i6aphuzg.CampusFinancialAidDecision.fromJson(data) as T;
    }
    if (t == _i785d3eu.CampusInvoiceLine) {
      return _i785d3eu.CampusInvoiceLine.fromJson(data) as T;
    }
    if (t == _ih7yrsa3.CampusInvoice) {
      return _ih7yrsa3.CampusInvoice.fromJson(data) as T;
    }
    if (t == _ip72wm5q.CampusPaymentAllocation) {
      return _ip72wm5q.CampusPaymentAllocation.fromJson(data) as T;
    }
    if (t == _igjjsnon.CampusPayment) {
      return _igjjsnon.CampusPayment.fromJson(data) as T;
    }
    if (t == _ih0zxat5.CampusRefund) {
      return _ih0zxat5.CampusRefund.fromJson(data) as T;
    }
    if (t == _i2d8zb54.CampusScholarshipAward) {
      return _i2d8zb54.CampusScholarshipAward.fromJson(data) as T;
    }
    if (t == _i12o4a5n.CampusScholarship) {
      return _i12o4a5n.CampusScholarship.fromJson(data) as T;
    }
    if (t == _imm1bvl9.CampusSponsorContribution) {
      return _imm1bvl9.CampusSponsorContribution.fromJson(data) as T;
    }
    if (t == _iufogsm9.CampusSponsor) {
      return _iufogsm9.CampusSponsor.fromJson(data) as T;
    }
    if (t == _i5w6z1o1.CampusSponsorship) {
      return _i5w6z1o1.CampusSponsorship.fromJson(data) as T;
    }
    if (t == _id1yl7ms.CampusHousingAllocation) {
      return _id1yl7ms.CampusHousingAllocation.fromJson(data) as T;
    }
    if (t == _inj6rnis.CampusHousingApplication) {
      return _inj6rnis.CampusHousingApplication.fromJson(data) as T;
    }
    if (t == _i9sv4sdm.CampusHousingCharge) {
      return _i9sv4sdm.CampusHousingCharge.fromJson(data) as T;
    }
    if (t == _is5welzq.CampusHousingContract) {
      return _is5welzq.CampusHousingContract.fromJson(data) as T;
    }
    if (t == _ieupa5nm.CampusHousingGuest) {
      return _ieupa5nm.CampusHousingGuest.fromJson(data) as T;
    }
    if (t == _i33gygjf.CampusHousingInspection) {
      return _i33gygjf.CampusHousingInspection.fromJson(data) as T;
    }
    if (t == _ip7dqx68.CampusHousingMaintenanceRequest) {
      return _ip7dqx68.CampusHousingMaintenanceRequest.fromJson(data) as T;
    }
    if (t == _i1chn6z5.CampusHousingPreference) {
      return _i1chn6z5.CampusHousingPreference.fromJson(data) as T;
    }
    if (t == _ijjla5z9.CampusResidenceBed) {
      return _ijjla5z9.CampusResidenceBed.fromJson(data) as T;
    }
    if (t == _ioguw2d9.CampusResidenceFloor) {
      return _ioguw2d9.CampusResidenceFloor.fromJson(data) as T;
    }
    if (t == _i4wllryj.CampusResidenceRoom) {
      return _i4wllryj.CampusResidenceRoom.fromJson(data) as T;
    }
    if (t == _ilwtmbox.CampusResidence) {
      return _ilwtmbox.CampusResidence.fromJson(data) as T;
    }
    if (t == _im17xq9s.CampusAuthor) {
      return _im17xq9s.CampusAuthor.fromJson(data) as T;
    }
    if (t == _ieum417b.CampusBookAuthor) {
      return _ieum417b.CampusBookAuthor.fromJson(data) as T;
    }
    if (t == _i8iyxmm6.CampusBookCopy) {
      return _i8iyxmm6.CampusBookCopy.fromJson(data) as T;
    }
    if (t == _idwj8oog.CampusBookEdition) {
      return _idwj8oog.CampusBookEdition.fromJson(data) as T;
    }
    if (t == _i91fxs7d.CampusBook) {
      return _i91fxs7d.CampusBook.fromJson(data) as T;
    }
    if (t == _imao42n2.CampusFine) {
      return _imao42n2.CampusFine.fromJson(data) as T;
    }
    if (t == _i7d3ow2m.CampusLibraryBranch) {
      return _i7d3ow2m.CampusLibraryBranch.fromJson(data) as T;
    }
    if (t == _ife2jm2t.CampusLibraryVisit) {
      return _ife2jm2t.CampusLibraryVisit.fromJson(data) as T;
    }
    if (t == _iz85k6nw.CampusLoanRenewal) {
      return _iz85k6nw.CampusLoanRenewal.fromJson(data) as T;
    }
    if (t == _ivrsnad5.CampusLoan) {
      return _ivrsnad5.CampusLoan.fromJson(data) as T;
    }
    if (t == _i7uvxqby.CampusPublisher) {
      return _i7uvxqby.CampusPublisher.fromJson(data) as T;
    }
    if (t == _i8fl0bcz.CampusReadingListEntry) {
      return _i8fl0bcz.CampusReadingListEntry.fromJson(data) as T;
    }
    if (t == _iuf8fw82.CampusReadingList) {
      return _iuf8fw82.CampusReadingList.fromJson(data) as T;
    }
    if (t == _izrbvszp.CampusReservation) {
      return _izrbvszp.CampusReservation.fromJson(data) as T;
    }
    if (t == _ilkwpsep.CampusEthicsApplication) {
      return _ilkwpsep.CampusEthicsApplication.fromJson(data) as T;
    }
    if (t == _i23unika.CampusEthicsReview) {
      return _i23unika.CampusEthicsReview.fromJson(data) as T;
    }
    if (t == _irnr71yk.CampusGrantBudget) {
      return _irnr71yk.CampusGrantBudget.fromJson(data) as T;
    }
    if (t == _io3zc5dl.CampusGrantExpense) {
      return _io3zc5dl.CampusGrantExpense.fromJson(data) as T;
    }
    if (t == _irh7kw2j.CampusGrant) {
      return _irh7kw2j.CampusGrant.fromJson(data) as T;
    }
    if (t == _i6qyipky.CampusProjectMilestone) {
      return _i6qyipky.CampusProjectMilestone.fromJson(data) as T;
    }
    if (t == _i2rtf719.CampusPublicationAuthor) {
      return _i2rtf719.CampusPublicationAuthor.fromJson(data) as T;
    }
    if (t == _i5u1ue6j.CampusPublication) {
      return _i5u1ue6j.CampusPublication.fromJson(data) as T;
    }
    if (t == _ik725i35.CampusResearchDataset) {
      return _ik725i35.CampusResearchDataset.fromJson(data) as T;
    }
    if (t == _i5h5n425.CampusResearchMembership) {
      return _i5h5n425.CampusResearchMembership.fromJson(data) as T;
    }
    if (t == _it8rg4yy.CampusResearchProject) {
      return _it8rg4yy.CampusResearchProject.fromJson(data) as T;
    }
    if (t == _iqdes7hr.SchemaAccessException) {
      return _iqdes7hr.SchemaAccessException.fromJson(data) as T;
    }
    if (t == _ip7yl2xa.SchemaColumn) {
      return _ip7yl2xa.SchemaColumn.fromJson(data) as T;
    }
    if (t == _irxuw07j.SchemaEnum) {
      return _irxuw07j.SchemaEnum.fromJson(data) as T;
    }
    if (t == _iarzs90a.SchemaForeignKey) {
      return _iarzs90a.SchemaForeignKey.fromJson(data) as T;
    }
    if (t == _is38wmwx.SchemaGraph) {
      return _is38wmwx.SchemaGraph.fromJson(data) as T;
    }
    if (t == _id0qwmzg.SchemaIndex) {
      return _id0qwmzg.SchemaIndex.fromJson(data) as T;
    }
    if (t == _iyw9pr81.SchemaModule) {
      return _iyw9pr81.SchemaModule.fromJson(data) as T;
    }
    if (t == _iaxhcc5o.SchemaSnapshot) {
      return _iaxhcc5o.SchemaSnapshot.fromJson(data) as T;
    }
    if (t == _ixxyfkud.SchemaTable) {
      return _ixxyfkud.SchemaTable.fromJson(data) as T;
    }
    if (t == _isc.getType<_icbi7gwo.CampusCourseCategory?>()) {
      return (data != null
              ? _icbi7gwo.CampusCourseCategory.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_izhnn43s.CampusCourseEquivalence?>()) {
      return (data != null
              ? _izhnn43s.CampusCourseEquivalence.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i60iovqj.CampusCourseMaterial?>()) {
      return (data != null
              ? _i60iovqj.CampusCourseMaterial.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ifd85uwc.CampusCourseOutcome?>()) {
      return (data != null
              ? _ifd85uwc.CampusCourseOutcome.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ihnnsiks.CampusCoursePrerequisite?>()) {
      return (data != null
              ? _ihnnsiks.CampusCoursePrerequisite.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iporzlvp.CampusCourseSection?>()) {
      return (data != null
              ? _iporzlvp.CampusCourseSection.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iik9idpd.CampusCourse?>()) {
      return (data != null ? _iik9idpd.CampusCourse.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i6p3cs2n.CampusLecturerDepartment?>()) {
      return (data != null
              ? _i6p3cs2n.CampusLecturerDepartment.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ixrb3pvm.CampusLecturer?>()) {
      return (data != null ? _ixrb3pvm.CampusLecturer.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i90s5rli.CampusOfficeHour?>()) {
      return (data != null ? _i90s5rli.CampusOfficeHour.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_idvibfro.CampusProgrammeCourse?>()) {
      return (data != null
              ? _idvibfro.CampusProgrammeCourse.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ikq440cu.CampusProgrammeVersion?>()) {
      return (data != null
              ? _ikq440cu.CampusProgrammeVersion.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i49ncx41.CampusProgramme?>()) {
      return (data != null ? _i49ncx41.CampusProgramme.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iuk3rrc1.CampusQualification?>()) {
      return (data != null
              ? _iuk3rrc1.CampusQualification.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_igrg8f15.CampusRoomBooking?>()) {
      return (data != null ? _igrg8f15.CampusRoomBooking.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i4dxex9j.CampusSectionCapacityOverride?>()) {
      return (data != null
              ? _i4dxex9j.CampusSectionCapacityOverride.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i60vl9yy.CampusSectionInstructor?>()) {
      return (data != null
              ? _i60vl9yy.CampusSectionInstructor.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i1ujp85c.CampusSectionMeeting?>()) {
      return (data != null
              ? _i1ujp85c.CampusSectionMeeting.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5vbc563.CampusTimetableEntry?>()) {
      return (data != null
              ? _i5vbc563.CampusTimetableEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iztuz2v2.CampusTimetable?>()) {
      return (data != null ? _iztuz2v2.CampusTimetable.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ioijgh15.CampusAcceptance?>()) {
      return (data != null ? _ioijgh15.CampusAcceptance.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iszjqqz2.CampusApplicationChoice?>()) {
      return (data != null
              ? _iszjqqz2.CampusApplicationChoice.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i3p9hmqv.CampusApplicationDocument?>()) {
      return (data != null
              ? _i3p9hmqv.CampusApplicationDocument.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iwgn7l2z.CampusApplicationReview?>()) {
      return (data != null
              ? _iwgn7l2z.CampusApplicationReview.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i84qe6g5.CampusApplication?>()) {
      return (data != null ? _i84qe6g5.CampusApplication.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iz7cqiiz.CampusCohortMembership?>()) {
      return (data != null
              ? _iz7cqiiz.CampusCohortMembership.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iu4vottr.CampusCohort?>()) {
      return (data != null ? _iu4vottr.CampusCohort.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i2lpxeo5.CampusGuardian?>()) {
      return (data != null ? _i2lpxeo5.CampusGuardian.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_id663sq3.CampusOfferCondition?>()) {
      return (data != null
              ? _id663sq3.CampusOfferCondition.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_icm8cu4v.CampusOffer?>()) {
      return (data != null ? _icm8cu4v.CampusOffer.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i4ls3qtz.CampusStudentAddress?>()) {
      return (data != null
              ? _i4ls3qtz.CampusStudentAddress.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_irvnuni5.CampusStudentContact?>()) {
      return (data != null
              ? _irvnuni5.CampusStudentContact.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iwai6mlf.CampusStudentDocument?>()) {
      return (data != null
              ? _iwai6mlf.CampusStudentDocument.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i16zyk3v.CampusStudentGuardian?>()) {
      return (data != null
              ? _i16zyk3v.CampusStudentGuardian.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iz31h8i4.CampusStudentHold?>()) {
      return (data != null ? _iz31h8i4.CampusStudentHold.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_idvhf8qa.CampusStudentNote?>()) {
      return (data != null ? _idvhf8qa.CampusStudentNote.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i6c5z7zh.CampusStudentStatusEvent?>()) {
      return (data != null
              ? _i6c5z7zh.CampusStudentStatusEvent.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ixciykx6.CampusStudent?>()) {
      return (data != null ? _ixciykx6.CampusStudent.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_izef6fak.CampusAppeal?>()) {
      return (data != null ? _izef6fak.CampusAppeal.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ipsxsf4b.CampusAssessmentComponent?>()) {
      return (data != null
              ? _ipsxsf4b.CampusAssessmentComponent.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_if8a84ek.CampusAssessmentMarker?>()) {
      return (data != null
              ? _if8a84ek.CampusAssessmentMarker.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iuohle5e.CampusAssessmentSubmission?>()) {
      return (data != null
              ? _iuohle5e.CampusAssessmentSubmission.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iy95bowl.CampusAssessment?>()) {
      return (data != null ? _iy95bowl.CampusAssessment.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i968i8hm.CampusExamAccommodation?>()) {
      return (data != null
              ? _i968i8hm.CampusExamAccommodation.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iqsus0ia.CampusExamRegistration?>()) {
      return (data != null
              ? _iqsus0ia.CampusExamRegistration.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iq0v8pha.CampusExamSeat?>()) {
      return (data != null ? _iq0v8pha.CampusExamSeat.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_igek713o.CampusExamSession?>()) {
      return (data != null ? _igek713o.CampusExamSession.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iej23kcn.CampusExam?>()) {
      return (data != null ? _iej23kcn.CampusExam.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i2oqkkd6.CampusGradeChange?>()) {
      return (data != null ? _i2oqkkd6.CampusGradeChange.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i12uv7b6.CampusGradeScaleBand?>()) {
      return (data != null
              ? _i12uv7b6.CampusGradeScaleBand.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ielxdmeu.CampusGradeScale?>()) {
      return (data != null ? _ielxdmeu.CampusGradeScale.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ips0lupm.CampusGrade?>()) {
      return (data != null ? _ips0lupm.CampusGrade.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iv6t9wps.CampusSubmissionFile?>()) {
      return (data != null
              ? _iv6t9wps.CampusSubmissionFile.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_idxtqeho.CampusAcademicYear?>()) {
      return (data != null ? _idxtqeho.CampusAcademicYear.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ijg49dtu.CampusBuilding?>()) {
      return (data != null ? _ijg49dtu.CampusBuilding.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ii5cv0xg.CampusCampus?>()) {
      return (data != null ? _ii5cv0xg.CampusCampus.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ieaagiip.CampusDepartment?>()) {
      return (data != null ? _ieaagiip.CampusDepartment.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iw9evvci.CampusFaculty?>()) {
      return (data != null ? _iw9evvci.CampusFaculty.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i5697to7.CampusRoom?>()) {
      return (data != null ? _i5697to7.CampusRoom.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iny6aho6.CampusTerm?>()) {
      return (data != null ? _iny6aho6.CampusTerm.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i7ljm6m0.CampusAttendanceRecord?>()) {
      return (data != null
              ? _i7ljm6m0.CampusAttendanceRecord.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5rv3lv9.CampusAttendanceSession?>()) {
      return (data != null
              ? _i5rv3lv9.CampusAttendanceSession.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iftc8tcu.CampusCompletion?>()) {
      return (data != null ? _iftc8tcu.CampusCompletion.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ixqnp4lw.CampusCreditTransfer?>()) {
      return (data != null
              ? _ixqnp4lw.CampusCreditTransfer.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iij70sau.CampusEnrolmentRequest?>()) {
      return (data != null
              ? _iij70sau.CampusEnrolmentRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ikbz98ec.CampusEnrolment?>()) {
      return (data != null ? _ikbz98ec.CampusEnrolment.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i6lqa8un.CampusStudyPlanCourse?>()) {
      return (data != null
              ? _i6lqa8un.CampusStudyPlanCourse.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5anj6ne.CampusStudyPlan?>()) {
      return (data != null ? _i5anj6ne.CampusStudyPlan.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_imquh55n.CampusWaitlistEntry?>()) {
      return (data != null
              ? _imquh55n.CampusWaitlistEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i6xgcgm2.CampusWithdrawal?>()) {
      return (data != null ? _i6xgcgm2.CampusWithdrawal.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_isewgl0f.CampusFeeScheduleLine?>()) {
      return (data != null
              ? _isewgl0f.CampusFeeScheduleLine.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i6ur2gi2.CampusFeeSchedule?>()) {
      return (data != null ? _i6ur2gi2.CampusFeeSchedule.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ivd0ctvz.CampusFeeType?>()) {
      return (data != null ? _ivd0ctvz.CampusFeeType.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iy3qqd34.CampusFinancialAidApplication?>()) {
      return (data != null
              ? _iy3qqd34.CampusFinancialAidApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i6aphuzg.CampusFinancialAidDecision?>()) {
      return (data != null
              ? _i6aphuzg.CampusFinancialAidDecision.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i785d3eu.CampusInvoiceLine?>()) {
      return (data != null ? _i785d3eu.CampusInvoiceLine.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ih7yrsa3.CampusInvoice?>()) {
      return (data != null ? _ih7yrsa3.CampusInvoice.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ip72wm5q.CampusPaymentAllocation?>()) {
      return (data != null
              ? _ip72wm5q.CampusPaymentAllocation.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_igjjsnon.CampusPayment?>()) {
      return (data != null ? _igjjsnon.CampusPayment.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ih0zxat5.CampusRefund?>()) {
      return (data != null ? _ih0zxat5.CampusRefund.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i2d8zb54.CampusScholarshipAward?>()) {
      return (data != null
              ? _i2d8zb54.CampusScholarshipAward.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i12o4a5n.CampusScholarship?>()) {
      return (data != null ? _i12o4a5n.CampusScholarship.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_imm1bvl9.CampusSponsorContribution?>()) {
      return (data != null
              ? _imm1bvl9.CampusSponsorContribution.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iufogsm9.CampusSponsor?>()) {
      return (data != null ? _iufogsm9.CampusSponsor.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i5w6z1o1.CampusSponsorship?>()) {
      return (data != null ? _i5w6z1o1.CampusSponsorship.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_id1yl7ms.CampusHousingAllocation?>()) {
      return (data != null
              ? _id1yl7ms.CampusHousingAllocation.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_inj6rnis.CampusHousingApplication?>()) {
      return (data != null
              ? _inj6rnis.CampusHousingApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i9sv4sdm.CampusHousingCharge?>()) {
      return (data != null
              ? _i9sv4sdm.CampusHousingCharge.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_is5welzq.CampusHousingContract?>()) {
      return (data != null
              ? _is5welzq.CampusHousingContract.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ieupa5nm.CampusHousingGuest?>()) {
      return (data != null ? _ieupa5nm.CampusHousingGuest.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i33gygjf.CampusHousingInspection?>()) {
      return (data != null
              ? _i33gygjf.CampusHousingInspection.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ip7dqx68.CampusHousingMaintenanceRequest?>()) {
      return (data != null
              ? _ip7dqx68.CampusHousingMaintenanceRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i1chn6z5.CampusHousingPreference?>()) {
      return (data != null
              ? _i1chn6z5.CampusHousingPreference.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ijjla5z9.CampusResidenceBed?>()) {
      return (data != null ? _ijjla5z9.CampusResidenceBed.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ioguw2d9.CampusResidenceFloor?>()) {
      return (data != null
              ? _ioguw2d9.CampusResidenceFloor.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i4wllryj.CampusResidenceRoom?>()) {
      return (data != null
              ? _i4wllryj.CampusResidenceRoom.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ilwtmbox.CampusResidence?>()) {
      return (data != null ? _ilwtmbox.CampusResidence.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_im17xq9s.CampusAuthor?>()) {
      return (data != null ? _im17xq9s.CampusAuthor.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_ieum417b.CampusBookAuthor?>()) {
      return (data != null ? _ieum417b.CampusBookAuthor.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i8iyxmm6.CampusBookCopy?>()) {
      return (data != null ? _i8iyxmm6.CampusBookCopy.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_idwj8oog.CampusBookEdition?>()) {
      return (data != null ? _idwj8oog.CampusBookEdition.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i91fxs7d.CampusBook?>()) {
      return (data != null ? _i91fxs7d.CampusBook.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_imao42n2.CampusFine?>()) {
      return (data != null ? _imao42n2.CampusFine.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i7d3ow2m.CampusLibraryBranch?>()) {
      return (data != null
              ? _i7d3ow2m.CampusLibraryBranch.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ife2jm2t.CampusLibraryVisit?>()) {
      return (data != null ? _ife2jm2t.CampusLibraryVisit.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_iz85k6nw.CampusLoanRenewal?>()) {
      return (data != null ? _iz85k6nw.CampusLoanRenewal.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ivrsnad5.CampusLoan?>()) {
      return (data != null ? _ivrsnad5.CampusLoan.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i7uvxqby.CampusPublisher?>()) {
      return (data != null ? _i7uvxqby.CampusPublisher.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_i8fl0bcz.CampusReadingListEntry?>()) {
      return (data != null
              ? _i8fl0bcz.CampusReadingListEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iuf8fw82.CampusReadingList?>()) {
      return (data != null ? _iuf8fw82.CampusReadingList.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_izrbvszp.CampusReservation?>()) {
      return (data != null ? _izrbvszp.CampusReservation.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ilkwpsep.CampusEthicsApplication?>()) {
      return (data != null
              ? _ilkwpsep.CampusEthicsApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i23unika.CampusEthicsReview?>()) {
      return (data != null ? _i23unika.CampusEthicsReview.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_irnr71yk.CampusGrantBudget?>()) {
      return (data != null ? _irnr71yk.CampusGrantBudget.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_io3zc5dl.CampusGrantExpense?>()) {
      return (data != null ? _io3zc5dl.CampusGrantExpense.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_irh7kw2j.CampusGrant?>()) {
      return (data != null ? _irh7kw2j.CampusGrant.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_i6qyipky.CampusProjectMilestone?>()) {
      return (data != null
              ? _i6qyipky.CampusProjectMilestone.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i2rtf719.CampusPublicationAuthor?>()) {
      return (data != null
              ? _i2rtf719.CampusPublicationAuthor.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5u1ue6j.CampusPublication?>()) {
      return (data != null ? _i5u1ue6j.CampusPublication.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ik725i35.CampusResearchDataset?>()) {
      return (data != null
              ? _ik725i35.CampusResearchDataset.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_i5h5n425.CampusResearchMembership?>()) {
      return (data != null
              ? _i5h5n425.CampusResearchMembership.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_it8rg4yy.CampusResearchProject?>()) {
      return (data != null
              ? _it8rg4yy.CampusResearchProject.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_iqdes7hr.SchemaAccessException?>()) {
      return (data != null
              ? _iqdes7hr.SchemaAccessException.fromJson(data)
              : null)
          as T;
    }
    if (t == _isc.getType<_ip7yl2xa.SchemaColumn?>()) {
      return (data != null ? _ip7yl2xa.SchemaColumn.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_irxuw07j.SchemaEnum?>()) {
      return (data != null ? _irxuw07j.SchemaEnum.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iarzs90a.SchemaForeignKey?>()) {
      return (data != null ? _iarzs90a.SchemaForeignKey.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_is38wmwx.SchemaGraph?>()) {
      return (data != null ? _is38wmwx.SchemaGraph.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_id0qwmzg.SchemaIndex?>()) {
      return (data != null ? _id0qwmzg.SchemaIndex.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iyw9pr81.SchemaModule?>()) {
      return (data != null ? _iyw9pr81.SchemaModule.fromJson(data) : null) as T;
    }
    if (t == _isc.getType<_iaxhcc5o.SchemaSnapshot?>()) {
      return (data != null ? _iaxhcc5o.SchemaSnapshot.fromJson(data) : null)
          as T;
    }
    if (t == _isc.getType<_ixxyfkud.SchemaTable?>()) {
      return (data != null ? _ixxyfkud.SchemaTable.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<_iyw9pr81.SchemaModule>) {
      return (data as List)
              .map((e) => deserialize<_iyw9pr81.SchemaModule>(e))
              .toList()
          as T;
    }
    if (t == List<_ixxyfkud.SchemaTable>) {
      return (data as List)
              .map((e) => deserialize<_ixxyfkud.SchemaTable>(e))
              .toList()
          as T;
    }
    if (t == List<_irxuw07j.SchemaEnum>) {
      return (data as List)
              .map((e) => deserialize<_irxuw07j.SchemaEnum>(e))
              .toList()
          as T;
    }
    if (t == Map<String, String>) {
      return (data as Map).map(
            (k, v) => MapEntry(deserialize<String>(k), deserialize<String>(v)),
          )
          as T;
    }
    if (t == _isc.getType<Map<String, String>?>()) {
      return (data != null
              ? (data as Map).map(
                  (k, v) =>
                      MapEntry(deserialize<String>(k), deserialize<String>(v)),
                )
              : null)
          as T;
    }
    if (t == List<_ip7yl2xa.SchemaColumn>) {
      return (data as List)
              .map((e) => deserialize<_ip7yl2xa.SchemaColumn>(e))
              .toList()
          as T;
    }
    if (t == List<_iarzs90a.SchemaForeignKey>) {
      return (data as List)
              .map((e) => deserialize<_iarzs90a.SchemaForeignKey>(e))
              .toList()
          as T;
    }
    if (t == List<_id0qwmzg.SchemaIndex>) {
      return (data as List)
              .map((e) => deserialize<_id0qwmzg.SchemaIndex>(e))
              .toList()
          as T;
    }
    try {
      return _iaic.Protocol().deserialize<T>(data, t);
    } on _isc.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _iacc.Protocol().deserialize<T>(data, t);
    } on _isc.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _icbi7gwo.CampusCourseCategory => 'CampusCourseCategory',
      _izhnn43s.CampusCourseEquivalence => 'CampusCourseEquivalence',
      _i60iovqj.CampusCourseMaterial => 'CampusCourseMaterial',
      _ifd85uwc.CampusCourseOutcome => 'CampusCourseOutcome',
      _ihnnsiks.CampusCoursePrerequisite => 'CampusCoursePrerequisite',
      _iporzlvp.CampusCourseSection => 'CampusCourseSection',
      _iik9idpd.CampusCourse => 'CampusCourse',
      _i6p3cs2n.CampusLecturerDepartment => 'CampusLecturerDepartment',
      _ixrb3pvm.CampusLecturer => 'CampusLecturer',
      _i90s5rli.CampusOfficeHour => 'CampusOfficeHour',
      _idvibfro.CampusProgrammeCourse => 'CampusProgrammeCourse',
      _ikq440cu.CampusProgrammeVersion => 'CampusProgrammeVersion',
      _i49ncx41.CampusProgramme => 'CampusProgramme',
      _iuk3rrc1.CampusQualification => 'CampusQualification',
      _igrg8f15.CampusRoomBooking => 'CampusRoomBooking',
      _i4dxex9j.CampusSectionCapacityOverride =>
        'CampusSectionCapacityOverride',
      _i60vl9yy.CampusSectionInstructor => 'CampusSectionInstructor',
      _i1ujp85c.CampusSectionMeeting => 'CampusSectionMeeting',
      _i5vbc563.CampusTimetableEntry => 'CampusTimetableEntry',
      _iztuz2v2.CampusTimetable => 'CampusTimetable',
      _ioijgh15.CampusAcceptance => 'CampusAcceptance',
      _iszjqqz2.CampusApplicationChoice => 'CampusApplicationChoice',
      _i3p9hmqv.CampusApplicationDocument => 'CampusApplicationDocument',
      _iwgn7l2z.CampusApplicationReview => 'CampusApplicationReview',
      _i84qe6g5.CampusApplication => 'CampusApplication',
      _iz7cqiiz.CampusCohortMembership => 'CampusCohortMembership',
      _iu4vottr.CampusCohort => 'CampusCohort',
      _i2lpxeo5.CampusGuardian => 'CampusGuardian',
      _id663sq3.CampusOfferCondition => 'CampusOfferCondition',
      _icm8cu4v.CampusOffer => 'CampusOffer',
      _i4ls3qtz.CampusStudentAddress => 'CampusStudentAddress',
      _irvnuni5.CampusStudentContact => 'CampusStudentContact',
      _iwai6mlf.CampusStudentDocument => 'CampusStudentDocument',
      _i16zyk3v.CampusStudentGuardian => 'CampusStudentGuardian',
      _iz31h8i4.CampusStudentHold => 'CampusStudentHold',
      _idvhf8qa.CampusStudentNote => 'CampusStudentNote',
      _i6c5z7zh.CampusStudentStatusEvent => 'CampusStudentStatusEvent',
      _ixciykx6.CampusStudent => 'CampusStudent',
      _izef6fak.CampusAppeal => 'CampusAppeal',
      _ipsxsf4b.CampusAssessmentComponent => 'CampusAssessmentComponent',
      _if8a84ek.CampusAssessmentMarker => 'CampusAssessmentMarker',
      _iuohle5e.CampusAssessmentSubmission => 'CampusAssessmentSubmission',
      _iy95bowl.CampusAssessment => 'CampusAssessment',
      _i968i8hm.CampusExamAccommodation => 'CampusExamAccommodation',
      _iqsus0ia.CampusExamRegistration => 'CampusExamRegistration',
      _iq0v8pha.CampusExamSeat => 'CampusExamSeat',
      _igek713o.CampusExamSession => 'CampusExamSession',
      _iej23kcn.CampusExam => 'CampusExam',
      _i2oqkkd6.CampusGradeChange => 'CampusGradeChange',
      _i12uv7b6.CampusGradeScaleBand => 'CampusGradeScaleBand',
      _ielxdmeu.CampusGradeScale => 'CampusGradeScale',
      _ips0lupm.CampusGrade => 'CampusGrade',
      _iv6t9wps.CampusSubmissionFile => 'CampusSubmissionFile',
      _idxtqeho.CampusAcademicYear => 'CampusAcademicYear',
      _ijg49dtu.CampusBuilding => 'CampusBuilding',
      _ii5cv0xg.CampusCampus => 'CampusCampus',
      _ieaagiip.CampusDepartment => 'CampusDepartment',
      _iw9evvci.CampusFaculty => 'CampusFaculty',
      _i5697to7.CampusRoom => 'CampusRoom',
      _iny6aho6.CampusTerm => 'CampusTerm',
      _i7ljm6m0.CampusAttendanceRecord => 'CampusAttendanceRecord',
      _i5rv3lv9.CampusAttendanceSession => 'CampusAttendanceSession',
      _iftc8tcu.CampusCompletion => 'CampusCompletion',
      _ixqnp4lw.CampusCreditTransfer => 'CampusCreditTransfer',
      _iij70sau.CampusEnrolmentRequest => 'CampusEnrolmentRequest',
      _ikbz98ec.CampusEnrolment => 'CampusEnrolment',
      _i6lqa8un.CampusStudyPlanCourse => 'CampusStudyPlanCourse',
      _i5anj6ne.CampusStudyPlan => 'CampusStudyPlan',
      _imquh55n.CampusWaitlistEntry => 'CampusWaitlistEntry',
      _i6xgcgm2.CampusWithdrawal => 'CampusWithdrawal',
      _isewgl0f.CampusFeeScheduleLine => 'CampusFeeScheduleLine',
      _i6ur2gi2.CampusFeeSchedule => 'CampusFeeSchedule',
      _ivd0ctvz.CampusFeeType => 'CampusFeeType',
      _iy3qqd34.CampusFinancialAidApplication =>
        'CampusFinancialAidApplication',
      _i6aphuzg.CampusFinancialAidDecision => 'CampusFinancialAidDecision',
      _i785d3eu.CampusInvoiceLine => 'CampusInvoiceLine',
      _ih7yrsa3.CampusInvoice => 'CampusInvoice',
      _ip72wm5q.CampusPaymentAllocation => 'CampusPaymentAllocation',
      _igjjsnon.CampusPayment => 'CampusPayment',
      _ih0zxat5.CampusRefund => 'CampusRefund',
      _i2d8zb54.CampusScholarshipAward => 'CampusScholarshipAward',
      _i12o4a5n.CampusScholarship => 'CampusScholarship',
      _imm1bvl9.CampusSponsorContribution => 'CampusSponsorContribution',
      _iufogsm9.CampusSponsor => 'CampusSponsor',
      _i5w6z1o1.CampusSponsorship => 'CampusSponsorship',
      _id1yl7ms.CampusHousingAllocation => 'CampusHousingAllocation',
      _inj6rnis.CampusHousingApplication => 'CampusHousingApplication',
      _i9sv4sdm.CampusHousingCharge => 'CampusHousingCharge',
      _is5welzq.CampusHousingContract => 'CampusHousingContract',
      _ieupa5nm.CampusHousingGuest => 'CampusHousingGuest',
      _i33gygjf.CampusHousingInspection => 'CampusHousingInspection',
      _ip7dqx68.CampusHousingMaintenanceRequest =>
        'CampusHousingMaintenanceRequest',
      _i1chn6z5.CampusHousingPreference => 'CampusHousingPreference',
      _ijjla5z9.CampusResidenceBed => 'CampusResidenceBed',
      _ioguw2d9.CampusResidenceFloor => 'CampusResidenceFloor',
      _i4wllryj.CampusResidenceRoom => 'CampusResidenceRoom',
      _ilwtmbox.CampusResidence => 'CampusResidence',
      _im17xq9s.CampusAuthor => 'CampusAuthor',
      _ieum417b.CampusBookAuthor => 'CampusBookAuthor',
      _i8iyxmm6.CampusBookCopy => 'CampusBookCopy',
      _idwj8oog.CampusBookEdition => 'CampusBookEdition',
      _i91fxs7d.CampusBook => 'CampusBook',
      _imao42n2.CampusFine => 'CampusFine',
      _i7d3ow2m.CampusLibraryBranch => 'CampusLibraryBranch',
      _ife2jm2t.CampusLibraryVisit => 'CampusLibraryVisit',
      _iz85k6nw.CampusLoanRenewal => 'CampusLoanRenewal',
      _ivrsnad5.CampusLoan => 'CampusLoan',
      _i7uvxqby.CampusPublisher => 'CampusPublisher',
      _i8fl0bcz.CampusReadingListEntry => 'CampusReadingListEntry',
      _iuf8fw82.CampusReadingList => 'CampusReadingList',
      _izrbvszp.CampusReservation => 'CampusReservation',
      _ilkwpsep.CampusEthicsApplication => 'CampusEthicsApplication',
      _i23unika.CampusEthicsReview => 'CampusEthicsReview',
      _irnr71yk.CampusGrantBudget => 'CampusGrantBudget',
      _io3zc5dl.CampusGrantExpense => 'CampusGrantExpense',
      _irh7kw2j.CampusGrant => 'CampusGrant',
      _i6qyipky.CampusProjectMilestone => 'CampusProjectMilestone',
      _i2rtf719.CampusPublicationAuthor => 'CampusPublicationAuthor',
      _i5u1ue6j.CampusPublication => 'CampusPublication',
      _ik725i35.CampusResearchDataset => 'CampusResearchDataset',
      _i5h5n425.CampusResearchMembership => 'CampusResearchMembership',
      _it8rg4yy.CampusResearchProject => 'CampusResearchProject',
      _iqdes7hr.SchemaAccessException => 'SchemaAccessException',
      _ip7yl2xa.SchemaColumn => 'SchemaColumn',
      _irxuw07j.SchemaEnum => 'SchemaEnum',
      _iarzs90a.SchemaForeignKey => 'SchemaForeignKey',
      _is38wmwx.SchemaGraph => 'SchemaGraph',
      _id0qwmzg.SchemaIndex => 'SchemaIndex',
      _iyw9pr81.SchemaModule => 'SchemaModule',
      _iaxhcc5o.SchemaSnapshot => 'SchemaSnapshot',
      _ixxyfkud.SchemaTable => 'SchemaTable',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'serverpod_lens.',
        '',
      );
    }

    switch (data) {
      case _icbi7gwo.CampusCourseCategory():
        return 'CampusCourseCategory';
      case _izhnn43s.CampusCourseEquivalence():
        return 'CampusCourseEquivalence';
      case _i60iovqj.CampusCourseMaterial():
        return 'CampusCourseMaterial';
      case _ifd85uwc.CampusCourseOutcome():
        return 'CampusCourseOutcome';
      case _ihnnsiks.CampusCoursePrerequisite():
        return 'CampusCoursePrerequisite';
      case _iporzlvp.CampusCourseSection():
        return 'CampusCourseSection';
      case _iik9idpd.CampusCourse():
        return 'CampusCourse';
      case _i6p3cs2n.CampusLecturerDepartment():
        return 'CampusLecturerDepartment';
      case _ixrb3pvm.CampusLecturer():
        return 'CampusLecturer';
      case _i90s5rli.CampusOfficeHour():
        return 'CampusOfficeHour';
      case _idvibfro.CampusProgrammeCourse():
        return 'CampusProgrammeCourse';
      case _ikq440cu.CampusProgrammeVersion():
        return 'CampusProgrammeVersion';
      case _i49ncx41.CampusProgramme():
        return 'CampusProgramme';
      case _iuk3rrc1.CampusQualification():
        return 'CampusQualification';
      case _igrg8f15.CampusRoomBooking():
        return 'CampusRoomBooking';
      case _i4dxex9j.CampusSectionCapacityOverride():
        return 'CampusSectionCapacityOverride';
      case _i60vl9yy.CampusSectionInstructor():
        return 'CampusSectionInstructor';
      case _i1ujp85c.CampusSectionMeeting():
        return 'CampusSectionMeeting';
      case _i5vbc563.CampusTimetableEntry():
        return 'CampusTimetableEntry';
      case _iztuz2v2.CampusTimetable():
        return 'CampusTimetable';
      case _ioijgh15.CampusAcceptance():
        return 'CampusAcceptance';
      case _iszjqqz2.CampusApplicationChoice():
        return 'CampusApplicationChoice';
      case _i3p9hmqv.CampusApplicationDocument():
        return 'CampusApplicationDocument';
      case _iwgn7l2z.CampusApplicationReview():
        return 'CampusApplicationReview';
      case _i84qe6g5.CampusApplication():
        return 'CampusApplication';
      case _iz7cqiiz.CampusCohortMembership():
        return 'CampusCohortMembership';
      case _iu4vottr.CampusCohort():
        return 'CampusCohort';
      case _i2lpxeo5.CampusGuardian():
        return 'CampusGuardian';
      case _id663sq3.CampusOfferCondition():
        return 'CampusOfferCondition';
      case _icm8cu4v.CampusOffer():
        return 'CampusOffer';
      case _i4ls3qtz.CampusStudentAddress():
        return 'CampusStudentAddress';
      case _irvnuni5.CampusStudentContact():
        return 'CampusStudentContact';
      case _iwai6mlf.CampusStudentDocument():
        return 'CampusStudentDocument';
      case _i16zyk3v.CampusStudentGuardian():
        return 'CampusStudentGuardian';
      case _iz31h8i4.CampusStudentHold():
        return 'CampusStudentHold';
      case _idvhf8qa.CampusStudentNote():
        return 'CampusStudentNote';
      case _i6c5z7zh.CampusStudentStatusEvent():
        return 'CampusStudentStatusEvent';
      case _ixciykx6.CampusStudent():
        return 'CampusStudent';
      case _izef6fak.CampusAppeal():
        return 'CampusAppeal';
      case _ipsxsf4b.CampusAssessmentComponent():
        return 'CampusAssessmentComponent';
      case _if8a84ek.CampusAssessmentMarker():
        return 'CampusAssessmentMarker';
      case _iuohle5e.CampusAssessmentSubmission():
        return 'CampusAssessmentSubmission';
      case _iy95bowl.CampusAssessment():
        return 'CampusAssessment';
      case _i968i8hm.CampusExamAccommodation():
        return 'CampusExamAccommodation';
      case _iqsus0ia.CampusExamRegistration():
        return 'CampusExamRegistration';
      case _iq0v8pha.CampusExamSeat():
        return 'CampusExamSeat';
      case _igek713o.CampusExamSession():
        return 'CampusExamSession';
      case _iej23kcn.CampusExam():
        return 'CampusExam';
      case _i2oqkkd6.CampusGradeChange():
        return 'CampusGradeChange';
      case _i12uv7b6.CampusGradeScaleBand():
        return 'CampusGradeScaleBand';
      case _ielxdmeu.CampusGradeScale():
        return 'CampusGradeScale';
      case _ips0lupm.CampusGrade():
        return 'CampusGrade';
      case _iv6t9wps.CampusSubmissionFile():
        return 'CampusSubmissionFile';
      case _idxtqeho.CampusAcademicYear():
        return 'CampusAcademicYear';
      case _ijg49dtu.CampusBuilding():
        return 'CampusBuilding';
      case _ii5cv0xg.CampusCampus():
        return 'CampusCampus';
      case _ieaagiip.CampusDepartment():
        return 'CampusDepartment';
      case _iw9evvci.CampusFaculty():
        return 'CampusFaculty';
      case _i5697to7.CampusRoom():
        return 'CampusRoom';
      case _iny6aho6.CampusTerm():
        return 'CampusTerm';
      case _i7ljm6m0.CampusAttendanceRecord():
        return 'CampusAttendanceRecord';
      case _i5rv3lv9.CampusAttendanceSession():
        return 'CampusAttendanceSession';
      case _iftc8tcu.CampusCompletion():
        return 'CampusCompletion';
      case _ixqnp4lw.CampusCreditTransfer():
        return 'CampusCreditTransfer';
      case _iij70sau.CampusEnrolmentRequest():
        return 'CampusEnrolmentRequest';
      case _ikbz98ec.CampusEnrolment():
        return 'CampusEnrolment';
      case _i6lqa8un.CampusStudyPlanCourse():
        return 'CampusStudyPlanCourse';
      case _i5anj6ne.CampusStudyPlan():
        return 'CampusStudyPlan';
      case _imquh55n.CampusWaitlistEntry():
        return 'CampusWaitlistEntry';
      case _i6xgcgm2.CampusWithdrawal():
        return 'CampusWithdrawal';
      case _isewgl0f.CampusFeeScheduleLine():
        return 'CampusFeeScheduleLine';
      case _i6ur2gi2.CampusFeeSchedule():
        return 'CampusFeeSchedule';
      case _ivd0ctvz.CampusFeeType():
        return 'CampusFeeType';
      case _iy3qqd34.CampusFinancialAidApplication():
        return 'CampusFinancialAidApplication';
      case _i6aphuzg.CampusFinancialAidDecision():
        return 'CampusFinancialAidDecision';
      case _i785d3eu.CampusInvoiceLine():
        return 'CampusInvoiceLine';
      case _ih7yrsa3.CampusInvoice():
        return 'CampusInvoice';
      case _ip72wm5q.CampusPaymentAllocation():
        return 'CampusPaymentAllocation';
      case _igjjsnon.CampusPayment():
        return 'CampusPayment';
      case _ih0zxat5.CampusRefund():
        return 'CampusRefund';
      case _i2d8zb54.CampusScholarshipAward():
        return 'CampusScholarshipAward';
      case _i12o4a5n.CampusScholarship():
        return 'CampusScholarship';
      case _imm1bvl9.CampusSponsorContribution():
        return 'CampusSponsorContribution';
      case _iufogsm9.CampusSponsor():
        return 'CampusSponsor';
      case _i5w6z1o1.CampusSponsorship():
        return 'CampusSponsorship';
      case _id1yl7ms.CampusHousingAllocation():
        return 'CampusHousingAllocation';
      case _inj6rnis.CampusHousingApplication():
        return 'CampusHousingApplication';
      case _i9sv4sdm.CampusHousingCharge():
        return 'CampusHousingCharge';
      case _is5welzq.CampusHousingContract():
        return 'CampusHousingContract';
      case _ieupa5nm.CampusHousingGuest():
        return 'CampusHousingGuest';
      case _i33gygjf.CampusHousingInspection():
        return 'CampusHousingInspection';
      case _ip7dqx68.CampusHousingMaintenanceRequest():
        return 'CampusHousingMaintenanceRequest';
      case _i1chn6z5.CampusHousingPreference():
        return 'CampusHousingPreference';
      case _ijjla5z9.CampusResidenceBed():
        return 'CampusResidenceBed';
      case _ioguw2d9.CampusResidenceFloor():
        return 'CampusResidenceFloor';
      case _i4wllryj.CampusResidenceRoom():
        return 'CampusResidenceRoom';
      case _ilwtmbox.CampusResidence():
        return 'CampusResidence';
      case _im17xq9s.CampusAuthor():
        return 'CampusAuthor';
      case _ieum417b.CampusBookAuthor():
        return 'CampusBookAuthor';
      case _i8iyxmm6.CampusBookCopy():
        return 'CampusBookCopy';
      case _idwj8oog.CampusBookEdition():
        return 'CampusBookEdition';
      case _i91fxs7d.CampusBook():
        return 'CampusBook';
      case _imao42n2.CampusFine():
        return 'CampusFine';
      case _i7d3ow2m.CampusLibraryBranch():
        return 'CampusLibraryBranch';
      case _ife2jm2t.CampusLibraryVisit():
        return 'CampusLibraryVisit';
      case _iz85k6nw.CampusLoanRenewal():
        return 'CampusLoanRenewal';
      case _ivrsnad5.CampusLoan():
        return 'CampusLoan';
      case _i7uvxqby.CampusPublisher():
        return 'CampusPublisher';
      case _i8fl0bcz.CampusReadingListEntry():
        return 'CampusReadingListEntry';
      case _iuf8fw82.CampusReadingList():
        return 'CampusReadingList';
      case _izrbvszp.CampusReservation():
        return 'CampusReservation';
      case _ilkwpsep.CampusEthicsApplication():
        return 'CampusEthicsApplication';
      case _i23unika.CampusEthicsReview():
        return 'CampusEthicsReview';
      case _irnr71yk.CampusGrantBudget():
        return 'CampusGrantBudget';
      case _io3zc5dl.CampusGrantExpense():
        return 'CampusGrantExpense';
      case _irh7kw2j.CampusGrant():
        return 'CampusGrant';
      case _i6qyipky.CampusProjectMilestone():
        return 'CampusProjectMilestone';
      case _i2rtf719.CampusPublicationAuthor():
        return 'CampusPublicationAuthor';
      case _i5u1ue6j.CampusPublication():
        return 'CampusPublication';
      case _ik725i35.CampusResearchDataset():
        return 'CampusResearchDataset';
      case _i5h5n425.CampusResearchMembership():
        return 'CampusResearchMembership';
      case _it8rg4yy.CampusResearchProject():
        return 'CampusResearchProject';
      case _iqdes7hr.SchemaAccessException():
        return 'SchemaAccessException';
      case _ip7yl2xa.SchemaColumn():
        return 'SchemaColumn';
      case _irxuw07j.SchemaEnum():
        return 'SchemaEnum';
      case _iarzs90a.SchemaForeignKey():
        return 'SchemaForeignKey';
      case _is38wmwx.SchemaGraph():
        return 'SchemaGraph';
      case _id0qwmzg.SchemaIndex():
        return 'SchemaIndex';
      case _iyw9pr81.SchemaModule():
        return 'SchemaModule';
      case _iaxhcc5o.SchemaSnapshot():
        return 'SchemaSnapshot';
      case _ixxyfkud.SchemaTable():
        return 'SchemaTable';
    }
    className = _iaic.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_idp.$className';
    }
    className = _iacc.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_core.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'CampusCourseCategory') {
      return deserialize<_icbi7gwo.CampusCourseCategory>(data['data']);
    }
    if (dataClassName == 'CampusCourseEquivalence') {
      return deserialize<_izhnn43s.CampusCourseEquivalence>(data['data']);
    }
    if (dataClassName == 'CampusCourseMaterial') {
      return deserialize<_i60iovqj.CampusCourseMaterial>(data['data']);
    }
    if (dataClassName == 'CampusCourseOutcome') {
      return deserialize<_ifd85uwc.CampusCourseOutcome>(data['data']);
    }
    if (dataClassName == 'CampusCoursePrerequisite') {
      return deserialize<_ihnnsiks.CampusCoursePrerequisite>(data['data']);
    }
    if (dataClassName == 'CampusCourseSection') {
      return deserialize<_iporzlvp.CampusCourseSection>(data['data']);
    }
    if (dataClassName == 'CampusCourse') {
      return deserialize<_iik9idpd.CampusCourse>(data['data']);
    }
    if (dataClassName == 'CampusLecturerDepartment') {
      return deserialize<_i6p3cs2n.CampusLecturerDepartment>(data['data']);
    }
    if (dataClassName == 'CampusLecturer') {
      return deserialize<_ixrb3pvm.CampusLecturer>(data['data']);
    }
    if (dataClassName == 'CampusOfficeHour') {
      return deserialize<_i90s5rli.CampusOfficeHour>(data['data']);
    }
    if (dataClassName == 'CampusProgrammeCourse') {
      return deserialize<_idvibfro.CampusProgrammeCourse>(data['data']);
    }
    if (dataClassName == 'CampusProgrammeVersion') {
      return deserialize<_ikq440cu.CampusProgrammeVersion>(data['data']);
    }
    if (dataClassName == 'CampusProgramme') {
      return deserialize<_i49ncx41.CampusProgramme>(data['data']);
    }
    if (dataClassName == 'CampusQualification') {
      return deserialize<_iuk3rrc1.CampusQualification>(data['data']);
    }
    if (dataClassName == 'CampusRoomBooking') {
      return deserialize<_igrg8f15.CampusRoomBooking>(data['data']);
    }
    if (dataClassName == 'CampusSectionCapacityOverride') {
      return deserialize<_i4dxex9j.CampusSectionCapacityOverride>(data['data']);
    }
    if (dataClassName == 'CampusSectionInstructor') {
      return deserialize<_i60vl9yy.CampusSectionInstructor>(data['data']);
    }
    if (dataClassName == 'CampusSectionMeeting') {
      return deserialize<_i1ujp85c.CampusSectionMeeting>(data['data']);
    }
    if (dataClassName == 'CampusTimetableEntry') {
      return deserialize<_i5vbc563.CampusTimetableEntry>(data['data']);
    }
    if (dataClassName == 'CampusTimetable') {
      return deserialize<_iztuz2v2.CampusTimetable>(data['data']);
    }
    if (dataClassName == 'CampusAcceptance') {
      return deserialize<_ioijgh15.CampusAcceptance>(data['data']);
    }
    if (dataClassName == 'CampusApplicationChoice') {
      return deserialize<_iszjqqz2.CampusApplicationChoice>(data['data']);
    }
    if (dataClassName == 'CampusApplicationDocument') {
      return deserialize<_i3p9hmqv.CampusApplicationDocument>(data['data']);
    }
    if (dataClassName == 'CampusApplicationReview') {
      return deserialize<_iwgn7l2z.CampusApplicationReview>(data['data']);
    }
    if (dataClassName == 'CampusApplication') {
      return deserialize<_i84qe6g5.CampusApplication>(data['data']);
    }
    if (dataClassName == 'CampusCohortMembership') {
      return deserialize<_iz7cqiiz.CampusCohortMembership>(data['data']);
    }
    if (dataClassName == 'CampusCohort') {
      return deserialize<_iu4vottr.CampusCohort>(data['data']);
    }
    if (dataClassName == 'CampusGuardian') {
      return deserialize<_i2lpxeo5.CampusGuardian>(data['data']);
    }
    if (dataClassName == 'CampusOfferCondition') {
      return deserialize<_id663sq3.CampusOfferCondition>(data['data']);
    }
    if (dataClassName == 'CampusOffer') {
      return deserialize<_icm8cu4v.CampusOffer>(data['data']);
    }
    if (dataClassName == 'CampusStudentAddress') {
      return deserialize<_i4ls3qtz.CampusStudentAddress>(data['data']);
    }
    if (dataClassName == 'CampusStudentContact') {
      return deserialize<_irvnuni5.CampusStudentContact>(data['data']);
    }
    if (dataClassName == 'CampusStudentDocument') {
      return deserialize<_iwai6mlf.CampusStudentDocument>(data['data']);
    }
    if (dataClassName == 'CampusStudentGuardian') {
      return deserialize<_i16zyk3v.CampusStudentGuardian>(data['data']);
    }
    if (dataClassName == 'CampusStudentHold') {
      return deserialize<_iz31h8i4.CampusStudentHold>(data['data']);
    }
    if (dataClassName == 'CampusStudentNote') {
      return deserialize<_idvhf8qa.CampusStudentNote>(data['data']);
    }
    if (dataClassName == 'CampusStudentStatusEvent') {
      return deserialize<_i6c5z7zh.CampusStudentStatusEvent>(data['data']);
    }
    if (dataClassName == 'CampusStudent') {
      return deserialize<_ixciykx6.CampusStudent>(data['data']);
    }
    if (dataClassName == 'CampusAppeal') {
      return deserialize<_izef6fak.CampusAppeal>(data['data']);
    }
    if (dataClassName == 'CampusAssessmentComponent') {
      return deserialize<_ipsxsf4b.CampusAssessmentComponent>(data['data']);
    }
    if (dataClassName == 'CampusAssessmentMarker') {
      return deserialize<_if8a84ek.CampusAssessmentMarker>(data['data']);
    }
    if (dataClassName == 'CampusAssessmentSubmission') {
      return deserialize<_iuohle5e.CampusAssessmentSubmission>(data['data']);
    }
    if (dataClassName == 'CampusAssessment') {
      return deserialize<_iy95bowl.CampusAssessment>(data['data']);
    }
    if (dataClassName == 'CampusExamAccommodation') {
      return deserialize<_i968i8hm.CampusExamAccommodation>(data['data']);
    }
    if (dataClassName == 'CampusExamRegistration') {
      return deserialize<_iqsus0ia.CampusExamRegistration>(data['data']);
    }
    if (dataClassName == 'CampusExamSeat') {
      return deserialize<_iq0v8pha.CampusExamSeat>(data['data']);
    }
    if (dataClassName == 'CampusExamSession') {
      return deserialize<_igek713o.CampusExamSession>(data['data']);
    }
    if (dataClassName == 'CampusExam') {
      return deserialize<_iej23kcn.CampusExam>(data['data']);
    }
    if (dataClassName == 'CampusGradeChange') {
      return deserialize<_i2oqkkd6.CampusGradeChange>(data['data']);
    }
    if (dataClassName == 'CampusGradeScaleBand') {
      return deserialize<_i12uv7b6.CampusGradeScaleBand>(data['data']);
    }
    if (dataClassName == 'CampusGradeScale') {
      return deserialize<_ielxdmeu.CampusGradeScale>(data['data']);
    }
    if (dataClassName == 'CampusGrade') {
      return deserialize<_ips0lupm.CampusGrade>(data['data']);
    }
    if (dataClassName == 'CampusSubmissionFile') {
      return deserialize<_iv6t9wps.CampusSubmissionFile>(data['data']);
    }
    if (dataClassName == 'CampusAcademicYear') {
      return deserialize<_idxtqeho.CampusAcademicYear>(data['data']);
    }
    if (dataClassName == 'CampusBuilding') {
      return deserialize<_ijg49dtu.CampusBuilding>(data['data']);
    }
    if (dataClassName == 'CampusCampus') {
      return deserialize<_ii5cv0xg.CampusCampus>(data['data']);
    }
    if (dataClassName == 'CampusDepartment') {
      return deserialize<_ieaagiip.CampusDepartment>(data['data']);
    }
    if (dataClassName == 'CampusFaculty') {
      return deserialize<_iw9evvci.CampusFaculty>(data['data']);
    }
    if (dataClassName == 'CampusRoom') {
      return deserialize<_i5697to7.CampusRoom>(data['data']);
    }
    if (dataClassName == 'CampusTerm') {
      return deserialize<_iny6aho6.CampusTerm>(data['data']);
    }
    if (dataClassName == 'CampusAttendanceRecord') {
      return deserialize<_i7ljm6m0.CampusAttendanceRecord>(data['data']);
    }
    if (dataClassName == 'CampusAttendanceSession') {
      return deserialize<_i5rv3lv9.CampusAttendanceSession>(data['data']);
    }
    if (dataClassName == 'CampusCompletion') {
      return deserialize<_iftc8tcu.CampusCompletion>(data['data']);
    }
    if (dataClassName == 'CampusCreditTransfer') {
      return deserialize<_ixqnp4lw.CampusCreditTransfer>(data['data']);
    }
    if (dataClassName == 'CampusEnrolmentRequest') {
      return deserialize<_iij70sau.CampusEnrolmentRequest>(data['data']);
    }
    if (dataClassName == 'CampusEnrolment') {
      return deserialize<_ikbz98ec.CampusEnrolment>(data['data']);
    }
    if (dataClassName == 'CampusStudyPlanCourse') {
      return deserialize<_i6lqa8un.CampusStudyPlanCourse>(data['data']);
    }
    if (dataClassName == 'CampusStudyPlan') {
      return deserialize<_i5anj6ne.CampusStudyPlan>(data['data']);
    }
    if (dataClassName == 'CampusWaitlistEntry') {
      return deserialize<_imquh55n.CampusWaitlistEntry>(data['data']);
    }
    if (dataClassName == 'CampusWithdrawal') {
      return deserialize<_i6xgcgm2.CampusWithdrawal>(data['data']);
    }
    if (dataClassName == 'CampusFeeScheduleLine') {
      return deserialize<_isewgl0f.CampusFeeScheduleLine>(data['data']);
    }
    if (dataClassName == 'CampusFeeSchedule') {
      return deserialize<_i6ur2gi2.CampusFeeSchedule>(data['data']);
    }
    if (dataClassName == 'CampusFeeType') {
      return deserialize<_ivd0ctvz.CampusFeeType>(data['data']);
    }
    if (dataClassName == 'CampusFinancialAidApplication') {
      return deserialize<_iy3qqd34.CampusFinancialAidApplication>(data['data']);
    }
    if (dataClassName == 'CampusFinancialAidDecision') {
      return deserialize<_i6aphuzg.CampusFinancialAidDecision>(data['data']);
    }
    if (dataClassName == 'CampusInvoiceLine') {
      return deserialize<_i785d3eu.CampusInvoiceLine>(data['data']);
    }
    if (dataClassName == 'CampusInvoice') {
      return deserialize<_ih7yrsa3.CampusInvoice>(data['data']);
    }
    if (dataClassName == 'CampusPaymentAllocation') {
      return deserialize<_ip72wm5q.CampusPaymentAllocation>(data['data']);
    }
    if (dataClassName == 'CampusPayment') {
      return deserialize<_igjjsnon.CampusPayment>(data['data']);
    }
    if (dataClassName == 'CampusRefund') {
      return deserialize<_ih0zxat5.CampusRefund>(data['data']);
    }
    if (dataClassName == 'CampusScholarshipAward') {
      return deserialize<_i2d8zb54.CampusScholarshipAward>(data['data']);
    }
    if (dataClassName == 'CampusScholarship') {
      return deserialize<_i12o4a5n.CampusScholarship>(data['data']);
    }
    if (dataClassName == 'CampusSponsorContribution') {
      return deserialize<_imm1bvl9.CampusSponsorContribution>(data['data']);
    }
    if (dataClassName == 'CampusSponsor') {
      return deserialize<_iufogsm9.CampusSponsor>(data['data']);
    }
    if (dataClassName == 'CampusSponsorship') {
      return deserialize<_i5w6z1o1.CampusSponsorship>(data['data']);
    }
    if (dataClassName == 'CampusHousingAllocation') {
      return deserialize<_id1yl7ms.CampusHousingAllocation>(data['data']);
    }
    if (dataClassName == 'CampusHousingApplication') {
      return deserialize<_inj6rnis.CampusHousingApplication>(data['data']);
    }
    if (dataClassName == 'CampusHousingCharge') {
      return deserialize<_i9sv4sdm.CampusHousingCharge>(data['data']);
    }
    if (dataClassName == 'CampusHousingContract') {
      return deserialize<_is5welzq.CampusHousingContract>(data['data']);
    }
    if (dataClassName == 'CampusHousingGuest') {
      return deserialize<_ieupa5nm.CampusHousingGuest>(data['data']);
    }
    if (dataClassName == 'CampusHousingInspection') {
      return deserialize<_i33gygjf.CampusHousingInspection>(data['data']);
    }
    if (dataClassName == 'CampusHousingMaintenanceRequest') {
      return deserialize<_ip7dqx68.CampusHousingMaintenanceRequest>(
        data['data'],
      );
    }
    if (dataClassName == 'CampusHousingPreference') {
      return deserialize<_i1chn6z5.CampusHousingPreference>(data['data']);
    }
    if (dataClassName == 'CampusResidenceBed') {
      return deserialize<_ijjla5z9.CampusResidenceBed>(data['data']);
    }
    if (dataClassName == 'CampusResidenceFloor') {
      return deserialize<_ioguw2d9.CampusResidenceFloor>(data['data']);
    }
    if (dataClassName == 'CampusResidenceRoom') {
      return deserialize<_i4wllryj.CampusResidenceRoom>(data['data']);
    }
    if (dataClassName == 'CampusResidence') {
      return deserialize<_ilwtmbox.CampusResidence>(data['data']);
    }
    if (dataClassName == 'CampusAuthor') {
      return deserialize<_im17xq9s.CampusAuthor>(data['data']);
    }
    if (dataClassName == 'CampusBookAuthor') {
      return deserialize<_ieum417b.CampusBookAuthor>(data['data']);
    }
    if (dataClassName == 'CampusBookCopy') {
      return deserialize<_i8iyxmm6.CampusBookCopy>(data['data']);
    }
    if (dataClassName == 'CampusBookEdition') {
      return deserialize<_idwj8oog.CampusBookEdition>(data['data']);
    }
    if (dataClassName == 'CampusBook') {
      return deserialize<_i91fxs7d.CampusBook>(data['data']);
    }
    if (dataClassName == 'CampusFine') {
      return deserialize<_imao42n2.CampusFine>(data['data']);
    }
    if (dataClassName == 'CampusLibraryBranch') {
      return deserialize<_i7d3ow2m.CampusLibraryBranch>(data['data']);
    }
    if (dataClassName == 'CampusLibraryVisit') {
      return deserialize<_ife2jm2t.CampusLibraryVisit>(data['data']);
    }
    if (dataClassName == 'CampusLoanRenewal') {
      return deserialize<_iz85k6nw.CampusLoanRenewal>(data['data']);
    }
    if (dataClassName == 'CampusLoan') {
      return deserialize<_ivrsnad5.CampusLoan>(data['data']);
    }
    if (dataClassName == 'CampusPublisher') {
      return deserialize<_i7uvxqby.CampusPublisher>(data['data']);
    }
    if (dataClassName == 'CampusReadingListEntry') {
      return deserialize<_i8fl0bcz.CampusReadingListEntry>(data['data']);
    }
    if (dataClassName == 'CampusReadingList') {
      return deserialize<_iuf8fw82.CampusReadingList>(data['data']);
    }
    if (dataClassName == 'CampusReservation') {
      return deserialize<_izrbvszp.CampusReservation>(data['data']);
    }
    if (dataClassName == 'CampusEthicsApplication') {
      return deserialize<_ilkwpsep.CampusEthicsApplication>(data['data']);
    }
    if (dataClassName == 'CampusEthicsReview') {
      return deserialize<_i23unika.CampusEthicsReview>(data['data']);
    }
    if (dataClassName == 'CampusGrantBudget') {
      return deserialize<_irnr71yk.CampusGrantBudget>(data['data']);
    }
    if (dataClassName == 'CampusGrantExpense') {
      return deserialize<_io3zc5dl.CampusGrantExpense>(data['data']);
    }
    if (dataClassName == 'CampusGrant') {
      return deserialize<_irh7kw2j.CampusGrant>(data['data']);
    }
    if (dataClassName == 'CampusProjectMilestone') {
      return deserialize<_i6qyipky.CampusProjectMilestone>(data['data']);
    }
    if (dataClassName == 'CampusPublicationAuthor') {
      return deserialize<_i2rtf719.CampusPublicationAuthor>(data['data']);
    }
    if (dataClassName == 'CampusPublication') {
      return deserialize<_i5u1ue6j.CampusPublication>(data['data']);
    }
    if (dataClassName == 'CampusResearchDataset') {
      return deserialize<_ik725i35.CampusResearchDataset>(data['data']);
    }
    if (dataClassName == 'CampusResearchMembership') {
      return deserialize<_i5h5n425.CampusResearchMembership>(data['data']);
    }
    if (dataClassName == 'CampusResearchProject') {
      return deserialize<_it8rg4yy.CampusResearchProject>(data['data']);
    }
    if (dataClassName == 'SchemaAccessException') {
      return deserialize<_iqdes7hr.SchemaAccessException>(data['data']);
    }
    if (dataClassName == 'SchemaColumn') {
      return deserialize<_ip7yl2xa.SchemaColumn>(data['data']);
    }
    if (dataClassName == 'SchemaEnum') {
      return deserialize<_irxuw07j.SchemaEnum>(data['data']);
    }
    if (dataClassName == 'SchemaForeignKey') {
      return deserialize<_iarzs90a.SchemaForeignKey>(data['data']);
    }
    if (dataClassName == 'SchemaGraph') {
      return deserialize<_is38wmwx.SchemaGraph>(data['data']);
    }
    if (dataClassName == 'SchemaIndex') {
      return deserialize<_id0qwmzg.SchemaIndex>(data['data']);
    }
    if (dataClassName == 'SchemaModule') {
      return deserialize<_iyw9pr81.SchemaModule>(data['data']);
    }
    if (dataClassName == 'SchemaSnapshot') {
      return deserialize<_iaxhcc5o.SchemaSnapshot>(data['data']);
    }
    if (dataClassName == 'SchemaTable') {
      return deserialize<_ixxyfkud.SchemaTable>(data['data']);
    }
    if (dataClassName.startsWith('serverpod_auth_idp.')) {
      data['className'] = dataClassName.substring(19);
      return _iaic.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _iacc.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _iaic.Protocol().registerHostProtocol('serverpod_lens', this);
    _iacc.Protocol().registerHostProtocol('serverpod_lens', this);
  }

  @override
  String getModuleName() => 'serverpod_lens';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _iaic.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _iacc.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
