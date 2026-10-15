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
import 'package:serverpod/protocol.dart' as _isp;
import 'package:serverpod/serverpod.dart' as _is;
import 'package:serverpod_auth_core_server/serverpod_auth_core_server.dart'
    as _iacs;
import 'package:serverpod_auth_idp_server/serverpod_auth_idp_server.dart'
    as _iais;
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

class Protocol extends _is.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static List<_isp.TableDefinition> get targetTableDefinitions => [
    _isp.TableDefinition(
      name: 'campus_academic_years',
      dartName: 'CampusAcademicYear',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_academic_years_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'label',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_acceptances',
      dartName: 'CampusAcceptance',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'offerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'acceptedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'depositPaymentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_acceptances_fk_0',
          columns: ['offerId'],
          referenceTable: 'campus_offers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_acceptances_fk_1',
          columns: ['depositPaymentId'],
          referenceTable: 'campus_payments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_acceptances_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'offerId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_appeals',
      dartName: 'CampusAppeal',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'gradeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reviewedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_appeals_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_appeals_fk_1',
          columns: ['gradeId'],
          referenceTable: 'campus_grades',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_appeals_fk_2',
          columns: ['reviewedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_application_choices',
      dartName: 'CampusApplicationChoice',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'preference',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_choices_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_choices_fk_1',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_application_choices_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'applicationId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'preference',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_application_documents',
      dartName: 'CampusApplicationDocument',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'documentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'required',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_documents_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_documents_fk_1',
          columns: ['documentId'],
          referenceTable: 'campus_student_documents',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_application_documents_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'applicationId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'documentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_application_reviews',
      dartName: 'CampusApplicationReview',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'score',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'recommendation',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reviewedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_reviews_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_application_reviews_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_applications',
      dartName: 'CampusApplication',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reference',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_applications_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_applications_fk_1',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_applications_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reference',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_assessment_components',
      dartName: 'CampusAssessmentComponent',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'assessmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'maximumScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'sequence',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessment_components_fk_0',
          columns: ['assessmentId'],
          referenceTable: 'campus_assessments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_assessment_markers',
      dartName: 'CampusAssessmentMarker',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'assessmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'moderation',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessment_markers_fk_0',
          columns: ['assessmentId'],
          referenceTable: 'campus_assessments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessment_markers_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_assessment_markers_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'assessmentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'lecturerId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_assessment_submissions',
      dartName: 'CampusAssessmentSubmission',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'assessmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'enrolmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'attempt',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessment_submissions_fk_0',
          columns: ['assessmentId'],
          referenceTable: 'campus_assessments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessment_submissions_fk_1',
          columns: ['enrolmentId'],
          referenceTable: 'campus_enrolments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_assessment_submissions_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'assessmentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'enrolmentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'attempt',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_assessments',
      dartName: 'CampusAssessment',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'maximumScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'weightPercent',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_assessments_fk_0',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_attendance_records',
      dartName: 'CampusAttendanceRecord',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sessionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'enrolmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'checkedInAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_attendance_records_fk_0',
          columns: ['sessionId'],
          referenceTable: 'campus_attendance_sessions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_attendance_records_fk_1',
          columns: ['enrolmentId'],
          referenceTable: 'campus_enrolments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_attendance_records_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'sessionId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'enrolmentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_attendance_sessions',
      dartName: 'CampusAttendanceSession',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'meetingId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'heldAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'topic',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_attendance_sessions_fk_0',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_attendance_sessions_fk_1',
          columns: ['meetingId'],
          referenceTable: 'campus_section_meetings',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_authors',
      dartName: 'CampusAuthor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'biography',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_book_authors',
      dartName: 'CampusBookAuthor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'bookId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'authorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sequence',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_authors_fk_0',
          columns: ['bookId'],
          referenceTable: 'campus_books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_authors_fk_1',
          columns: ['authorId'],
          referenceTable: 'campus_authors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_book_authors_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'bookId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'authorId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_book_copies',
      dartName: 'CampusBookCopy',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'editionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'branchId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'barcode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'shelf',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_copies_fk_0',
          columns: ['editionId'],
          referenceTable: 'campus_book_editions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_copies_fk_1',
          columns: ['branchId'],
          referenceTable: 'campus_library_branches',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_book_copies_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'barcode',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_book_editions',
      dartName: 'CampusBookEdition',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'bookId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'publisherId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isbn',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'publishedYear',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'edition',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_editions_fk_0',
          columns: ['bookId'],
          referenceTable: 'campus_books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_book_editions_fk_1',
          columns: ['publisherId'],
          referenceTable: 'campus_publishers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_book_editions_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'isbn',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_books',
      dartName: 'CampusBook',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'subject',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'language',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'tags',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_buildings',
      dartName: 'CampusBuilding',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'campusId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'latitude',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'longitude',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_buildings_fk_0',
          columns: ['campusId'],
          referenceTable: 'campus_campuses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_buildings_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'campusId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_campuses',
      dartName: 'CampusCampus',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'city',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'countryCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_campuses_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_cohort_memberships',
      dartName: 'CampusCohortMembership',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'cohortId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'joinedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_cohort_memberships_fk_0',
          columns: ['cohortId'],
          referenceTable: 'campus_cohorts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_cohort_memberships_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_cohort_memberships_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'cohortId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_cohorts',
      dartName: 'CampusCohort',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_cohorts_fk_0',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_cohorts_fk_1',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_completions',
      dartName: 'CampusCompletion',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'programmeVersionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'awardedCredits',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'classification',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_completions_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_completions_fk_1',
          columns: ['programmeVersionId'],
          referenceTable: 'campus_programme_versions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_categories',
      dartName: 'CampusCourseCategory',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'parentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_categories_fk_0',
          columns: ['parentId'],
          referenceTable: 'campus_course_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_course_categories_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'name',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_equivalences',
      dartName: 'CampusCourseEquivalence',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'equivalentCourseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'approvedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_equivalences_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_equivalences_fk_1',
          columns: ['equivalentCourseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_course_equivalences_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'equivalentCourseId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_materials',
      dartName: 'CampusCourseMaterial',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceUrl',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'required',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_materials_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_outcomes',
      dartName: 'CampusCourseOutcome',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_outcomes_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_course_outcomes_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_prerequisites',
      dartName: 'CampusCoursePrerequisite',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'prerequisiteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'minimumGrade',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_prerequisites_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_prerequisites_fk_1',
          columns: ['prerequisiteId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_course_prerequisites_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'prerequisiteId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_course_sections',
      dartName: 'CampusCourseSection',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'termId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'capacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'deliveryMode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_sections_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_course_sections_fk_1',
          columns: ['termId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_course_sections_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'termId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_courses',
      dartName: 'CampusCourse',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'categoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'credits',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_courses_fk_0',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_courses_fk_1',
          columns: ['categoryId'],
          referenceTable: 'campus_course_categories',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_courses_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_credit_transfers',
      dartName: 'CampusCreditTransfer',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'institution',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'awardedCredits',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'approvedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_credit_transfers_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_credit_transfers_fk_1',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_credit_transfers_fk_2',
          columns: ['approvedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_departments',
      dartName: 'CampusDepartment',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'facultyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'parentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_departments_fk_0',
          columns: ['facultyId'],
          referenceTable: 'campus_faculties',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_departments_fk_1',
          columns: ['parentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_departments_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'facultyId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_enrolment_requests',
      dartName: 'CampusEnrolmentRequest',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_enrolment_requests_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_enrolment_requests_fk_1',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_enrolments',
      dartName: 'CampusEnrolment',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'enrolledAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_enrolments_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_enrolments_fk_1',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_enrolments_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'sectionId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_ethics_applications',
      dartName: 'CampusEthicsApplication',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'submittedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'summary',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_ethics_applications_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_ethics_applications_fk_1',
          columns: ['submittedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_ethics_reviews',
      dartName: 'CampusEthicsReview',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reviewerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'decision',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reviewedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_ethics_reviews_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_ethics_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_ethics_reviews_fk_1',
          columns: ['reviewerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_exam_accommodations',
      dartName: 'CampusExamAccommodation',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'registrationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'extraMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'requirements',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'approvedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_accommodations_fk_0',
          columns: ['registrationId'],
          referenceTable: 'campus_exam_registrations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_accommodations_fk_1',
          columns: ['approvedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_exam_registrations',
      dartName: 'CampusExamRegistration',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'examSessionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'seatId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'attended',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_registrations_fk_0',
          columns: ['examSessionId'],
          referenceTable: 'campus_exam_sessions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_registrations_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_registrations_fk_2',
          columns: ['seatId'],
          referenceTable: 'campus_exam_seats',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_exam_registrations_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'examSessionId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'campus_exam_registrations_u1',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'seatId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_exam_seats',
      dartName: 'CampusExamSeat',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'examSessionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'accessible',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_seats_fk_0',
          columns: ['examSessionId'],
          referenceTable: 'campus_exam_sessions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_exam_seats_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'examSessionId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'label',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_exam_sessions',
      dartName: 'CampusExamSession',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'examId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'termId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'capacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_sessions_fk_0',
          columns: ['examId'],
          referenceTable: 'campus_exams',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_sessions_fk_1',
          columns: ['termId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exam_sessions_fk_2',
          columns: ['roomId'],
          referenceTable: 'campus_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_exams',
      dartName: 'CampusExam',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'durationMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'maximumScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_exams_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_faculties',
      dartName: 'CampusFaculty',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'campusId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'deanId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_faculties_fk_0',
          columns: ['campusId'],
          referenceTable: 'campus_campuses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_faculties_fk_1',
          columns: ['deanId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_faculties_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_fee_schedule_lines',
      dartName: 'CampusFeeScheduleLine',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'scheduleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'feeTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fee_schedule_lines_fk_0',
          columns: ['scheduleId'],
          referenceTable: 'campus_fee_schedules',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fee_schedule_lines_fk_1',
          columns: ['feeTypeId'],
          referenceTable: 'campus_fee_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_fee_schedule_lines_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'scheduleId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'feeTypeId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_fee_schedules',
      dartName: 'CampusFeeSchedule',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fee_schedules_fk_0',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fee_schedules_fk_1',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_fee_types',
      dartName: 'CampusFeeType',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'refundable',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_fee_types_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_financial_aid_applications',
      dartName: 'CampusFinancialAidApplication',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_financial_aid_applications_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_financial_aid_applications_fk_1',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_financial_aid_decisions',
      dartName: 'CampusFinancialAidDecision',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'awardedMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'decidedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_financial_aid_decisions_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_financial_aid_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_financial_aid_decisions_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'applicationId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_fines',
      dartName: 'CampusFine',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'loanId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceLineId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'waived',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fines_fk_0',
          columns: ['loanId'],
          referenceTable: 'campus_loans',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_fines_fk_1',
          columns: ['invoiceLineId'],
          referenceTable: 'campus_invoice_lines',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grade_changes',
      dartName: 'CampusGradeChange',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'gradeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'changedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'previousScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'nextScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grade_changes_fk_0',
          columns: ['gradeId'],
          referenceTable: 'campus_grades',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grade_changes_fk_1',
          columns: ['changedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grade_scale_bands',
      dartName: 'CampusGradeScaleBand',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'gradeScaleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'minimumScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'maximumScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grade_scale_bands_fk_0',
          columns: ['gradeScaleId'],
          referenceTable: 'campus_grade_scales',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_grade_scale_bands_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'gradeScaleId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'label',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grade_scales',
      dartName: 'CampusGradeScale',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'passScore',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_grade_scales_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'name',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grades',
      dartName: 'CampusGrade',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'submissionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'markerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'gradeScaleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'score',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: false,
          dartType: 'double',
        ),
        _isp.ColumnDefinition(
          name: 'feedback',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grades_fk_0',
          columns: ['submissionId'],
          referenceTable: 'campus_assessment_submissions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grades_fk_1',
          columns: ['markerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grades_fk_2',
          columns: ['gradeScaleId'],
          referenceTable: 'campus_grade_scales',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_grades_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'submissionId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grant_budgets',
      dartName: 'CampusGrantBudget',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'grantId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'allocatedMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grant_budgets_fk_0',
          columns: ['grantId'],
          referenceTable: 'campus_grants',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_grant_budgets_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'grantId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'category',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grant_expenses',
      dartName: 'CampusGrantExpense',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'budgetId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'spentAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grant_expenses_fk_0',
          columns: ['budgetId'],
          referenceTable: 'campus_grant_budgets',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grant_expenses_fk_1',
          columns: ['invoiceId'],
          referenceTable: 'campus_invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_grants',
      dartName: 'CampusGrant',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sponsorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reference',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'awardedMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'awardedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grants_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_grants_fk_1',
          columns: ['sponsorId'],
          referenceTable: 'campus_sponsors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_grants_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reference',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_guardians',
      dartName: 'CampusGuardian',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'phone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_allocations',
      dartName: 'CampusHousingAllocation',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'housingApplicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'bedId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_allocations_fk_0',
          columns: ['housingApplicationId'],
          referenceTable: 'campus_housing_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_allocations_fk_1',
          columns: ['bedId'],
          referenceTable: 'campus_residence_beds',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_applications',
      dartName: 'CampusHousingApplication',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'termId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'accessibilityNeeds',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_applications_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_applications_fk_1',
          columns: ['termId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_charges',
      dartName: 'CampusHousingCharge',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'contractId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'feeTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceLineId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_charges_fk_0',
          columns: ['contractId'],
          referenceTable: 'campus_housing_contracts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_charges_fk_1',
          columns: ['feeTypeId'],
          referenceTable: 'campus_fee_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_charges_fk_2',
          columns: ['invoiceLineId'],
          referenceTable: 'campus_invoice_lines',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_contracts',
      dartName: 'CampusHousingContract',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'allocationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reference',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'signedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'rentMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_contracts_fk_0',
          columns: ['allocationId'],
          referenceTable: 'campus_housing_allocations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_housing_contracts_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reference',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_guests',
      dartName: 'CampusHousingGuest',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'contractId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'arrivesAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'leavesAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_guests_fk_0',
          columns: ['contractId'],
          referenceTable: 'campus_housing_contracts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_inspections',
      dartName: 'CampusHousingInspection',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'contractId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'inspectedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'condition',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_inspections_fk_0',
          columns: ['contractId'],
          referenceTable: 'campus_housing_contracts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_maintenance_requests',
      dartName: 'CampusHousingMaintenanceRequest',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'residenceRoomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resolvedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_maintenance_requests_fk_0',
          columns: ['residenceRoomId'],
          referenceTable: 'campus_residence_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_maintenance_requests_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_housing_preferences',
      dartName: 'CampusHousingPreference',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'housingApplicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'residenceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'rank',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_preferences_fk_0',
          columns: ['housingApplicationId'],
          referenceTable: 'campus_housing_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_housing_preferences_fk_1',
          columns: ['residenceId'],
          referenceTable: 'campus_residences',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_housing_preferences_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'housingApplicationId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'rank',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_invoice_lines',
      dartName: 'CampusInvoiceLine',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'feeTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'unitAmountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_invoice_lines_fk_0',
          columns: ['invoiceId'],
          referenceTable: 'campus_invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_invoice_lines_fk_1',
          columns: ['feeTypeId'],
          referenceTable: 'campus_fee_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_invoices',
      dartName: 'CampusInvoice',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'termId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'number',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'issuedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_invoices_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_invoices_fk_1',
          columns: ['termId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_invoices_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'number',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_lecturer_departments',
      dartName: 'CampusLecturerDepartment',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'allocationPercent',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_lecturer_departments_fk_0',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_lecturer_departments_fk_1',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_lecturer_departments_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'lecturerId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'departmentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_lecturers',
      dartName: 'CampusLecturer',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'staffNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'supervisorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_lecturers_fk_0',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_lecturers_fk_1',
          columns: ['supervisorId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_lecturers_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'staffNumber',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'campus_lecturers_u1',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_library_branches',
      dartName: 'CampusLibraryBranch',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'campusId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'openingHours',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_library_branches_fk_0',
          columns: ['campusId'],
          referenceTable: 'campus_campuses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_library_visits',
      dartName: 'CampusLibraryVisit',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'branchId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'enteredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'exitedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_library_visits_fk_0',
          columns: ['branchId'],
          referenceTable: 'campus_library_branches',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_library_visits_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_loan_renewals',
      dartName: 'CampusLoanRenewal',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'loanId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'previousDueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'nextDueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_loan_renewals_fk_0',
          columns: ['loanId'],
          referenceTable: 'campus_loans',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_loans',
      dartName: 'CampusLoan',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'copyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'borrowedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'returnedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_loans_fk_0',
          columns: ['copyId'],
          referenceTable: 'campus_book_copies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_loans_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_offer_conditions',
      dartName: 'CampusOfferCondition',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'offerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'satisfied',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'satisfiedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_offer_conditions_fk_0',
          columns: ['offerId'],
          referenceTable: 'campus_offers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_offers',
      dartName: 'CampusOffer',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'applicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'programmeVersionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'offeredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'expiresAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_offers_fk_0',
          columns: ['applicationId'],
          referenceTable: 'campus_applications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_offers_fk_1',
          columns: ['programmeVersionId'],
          referenceTable: 'campus_programme_versions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_office_hours',
      dartName: 'CampusOfficeHour',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'weekday',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_office_hours_fk_0',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_office_hours_fk_1',
          columns: ['roomId'],
          referenceTable: 'campus_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_payment_allocations',
      dartName: 'CampusPaymentAllocation',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'paymentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_payment_allocations_fk_0',
          columns: ['paymentId'],
          referenceTable: 'campus_payments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_payment_allocations_fk_1',
          columns: ['invoiceId'],
          referenceTable: 'campus_invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_payment_allocations_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'paymentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'invoiceId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_payments',
      dartName: 'CampusPayment',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reference',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'receivedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'method',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_payments_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_payments_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'reference',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_programme_courses',
      dartName: 'CampusProgrammeCourse',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'programmeVersionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'required',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'recommendedTerm',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programme_courses_fk_0',
          columns: ['programmeVersionId'],
          referenceTable: 'campus_programme_versions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programme_courses_fk_1',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_programme_courses_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'programmeVersionId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_programme_versions',
      dartName: 'CampusProgrammeVersion',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'version',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'published',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programme_versions_fk_0',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programme_versions_fk_1',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_programme_versions_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'programmeId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'version',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_programmes',
      dartName: 'CampusProgramme',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'qualificationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'durationTerms',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programmes_fk_0',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_programmes_fk_1',
          columns: ['qualificationId'],
          referenceTable: 'campus_qualifications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_programmes_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_project_milestones',
      dartName: 'CampusProjectMilestone',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'parentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_project_milestones_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_project_milestones_fk_1',
          columns: ['parentId'],
          referenceTable: 'campus_project_milestones',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_publication_authors',
      dartName: 'CampusPublicationAuthor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'publicationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'sequence',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_publication_authors_fk_0',
          columns: ['publicationId'],
          referenceTable: 'campus_publications',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_publication_authors_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_publication_authors_fk_2',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_publications',
      dartName: 'CampusPublication',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'doi',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'publishedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'venue',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_publications_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_publications_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'doi',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_publishers',
      dartName: 'CampusPublisher',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'countryCode',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'website',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_qualifications',
      dartName: 'CampusQualification',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'level',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'requiredCredits',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_qualifications_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_reading_list_entries',
      dartName: 'CampusReadingListEntry',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'readingListId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'bookId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'required',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reading_list_entries_fk_0',
          columns: ['readingListId'],
          referenceTable: 'campus_reading_lists',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reading_list_entries_fk_1',
          columns: ['bookId'],
          referenceTable: 'campus_books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_reading_list_entries_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'readingListId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'bookId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_reading_lists',
      dartName: 'CampusReadingList',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reading_lists_fk_0',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reading_lists_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_refunds',
      dartName: 'CampusRefund',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'paymentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'invoiceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'processedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_refunds_fk_0',
          columns: ['paymentId'],
          referenceTable: 'campus_payments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_refunds_fk_1',
          columns: ['invoiceId'],
          referenceTable: 'campus_invoices',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_research_datasets',
      dartName: 'CampusResearchDataset',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceUrl',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'licence',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'publicAccess',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_datasets_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_research_memberships',
      dartName: 'CampusResearchMembership',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'projectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'role',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'joinedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_memberships_fk_0',
          columns: ['projectId'],
          referenceTable: 'campus_research_projects',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_memberships_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_memberships_fk_2',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_research_projects',
      dartName: 'CampusResearchProject',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'principalInvestigatorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_projects_fk_0',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_research_projects_fk_1',
          columns: ['principalInvestigatorId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_reservations',
      dartName: 'CampusReservation',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'bookId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'pickupBranchId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'expiresAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reservations_fk_0',
          columns: ['bookId'],
          referenceTable: 'campus_books',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reservations_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_reservations_fk_2',
          columns: ['pickupBranchId'],
          referenceTable: 'campus_library_branches',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_residence_beds',
      dartName: 'CampusResidenceBed',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'residenceRoomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'available',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_residence_beds_fk_0',
          columns: ['residenceRoomId'],
          referenceTable: 'campus_residence_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_residence_beds_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'residenceRoomId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'label',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_residence_floors',
      dartName: 'CampusResidenceFloor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'residenceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'level',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_residence_floors_fk_0',
          columns: ['residenceId'],
          referenceTable: 'campus_residences',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_residence_floors_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'residenceId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'level',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_residence_rooms',
      dartName: 'CampusResidenceRoom',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'floorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'number',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'roomType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_residence_rooms_fk_0',
          columns: ['floorId'],
          referenceTable: 'campus_residence_floors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_residence_rooms_fk_1',
          columns: ['roomId'],
          referenceTable: 'campus_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_residence_rooms_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'floorId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'number',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_residences',
      dartName: 'CampusResidence',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'campusId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'address',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'accessible',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_residences_fk_0',
          columns: ['campusId'],
          referenceTable: 'campus_campuses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_room_bookings',
      dartName: 'CampusRoomBooking',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'roomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'purpose',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_room_bookings_fk_0',
          columns: ['roomId'],
          referenceTable: 'campus_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_room_bookings_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_rooms',
      dartName: 'CampusRoom',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'buildingId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'capacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'accessible',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'facilities',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_rooms_fk_0',
          columns: ['buildingId'],
          referenceTable: 'campus_buildings',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_rooms_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'buildingId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_scholarship_awards',
      dartName: 'CampusScholarshipAward',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'scholarshipId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_scholarship_awards_fk_0',
          columns: ['scholarshipId'],
          referenceTable: 'campus_scholarships',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_scholarship_awards_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_scholarship_awards_fk_2',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_scholarship_awards_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'scholarshipId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'academicYearId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_scholarships',
      dartName: 'CampusScholarship',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'departmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'sponsorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'annualBudgetMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_scholarships_fk_0',
          columns: ['departmentId'],
          referenceTable: 'campus_departments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_scholarships_fk_1',
          columns: ['sponsorId'],
          referenceTable: 'campus_sponsors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_section_capacity_overrides',
      dartName: 'CampusSectionCapacityOverride',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'extraPlaces',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_capacity_overrides_fk_0',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_capacity_overrides_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_section_instructors',
      dartName: 'CampusSectionInstructor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lead',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_instructors_fk_0',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_instructors_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_section_instructors_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'sectionId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'lecturerId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_section_meetings',
      dartName: 'CampusSectionMeeting',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roomId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'weekday',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_meetings_fk_0',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_section_meetings_fk_1',
          columns: ['roomId'],
          referenceTable: 'campus_rooms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_sponsor_contributions',
      dartName: 'CampusSponsorContribution',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sponsorshipId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'paymentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'amountMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_sponsor_contributions_fk_0',
          columns: ['sponsorshipId'],
          referenceTable: 'campus_sponsorships',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_sponsor_contributions_fk_1',
          columns: ['paymentId'],
          referenceTable: 'campus_payments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_sponsors',
      dartName: 'CampusSponsor',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'contactEmail',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'organisation',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_sponsorships',
      dartName: 'CampusSponsorship',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'sponsorId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'commitmentMinor',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'currency',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_sponsorships_fk_0',
          columns: ['sponsorId'],
          referenceTable: 'campus_sponsors',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_sponsorships_fk_1',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_sponsorships_fk_2',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_addresses',
      dartName: 'CampusStudentAddress',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'kind',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'line1',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'city',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'postalCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'countryCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_addresses_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_contacts',
      dartName: 'CampusStudentContact',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'kind',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'value',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'preferred',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_contacts_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_documents',
      dartName: 'CampusStudentDocument',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'documentType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'fileUrl',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'verified',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_documents_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_guardians',
      dartName: 'CampusStudentGuardian',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'guardianId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'relationship',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'emergencyContact',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_guardians_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_guardians_fk_1',
          columns: ['guardianId'],
          referenceTable: 'campus_guardians',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_student_guardians_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'guardianId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_holds',
      dartName: 'CampusStudentHold',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'blocksEnrolment',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'releasedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_holds_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_notes',
      dartName: 'CampusStudentNote',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lecturerId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'note',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_notes_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_notes_fk_1',
          columns: ['lecturerId'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_student_status_events',
      dartName: 'CampusStudentStatusEvent',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'previousStatus',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'nextStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_student_status_events_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_students',
      dartName: 'CampusStudent',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'studentNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dateOfBirth',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'active',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_students_fk_0',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_students_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentNumber',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
        _isp.IndexDefinition(
          indexName: 'campus_students_u1',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_study_plan_courses',
      dartName: 'CampusStudyPlanCourse',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studyPlanId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'courseId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'plannedTermId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plan_courses_fk_0',
          columns: ['studyPlanId'],
          referenceTable: 'campus_study_plans',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plan_courses_fk_1',
          columns: ['courseId'],
          referenceTable: 'campus_courses',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plan_courses_fk_2',
          columns: ['plannedTermId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_study_plan_courses_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studyPlanId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'courseId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_study_plans',
      dartName: 'CampusStudyPlan',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'programmeVersionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'approvedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plans_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plans_fk_1',
          columns: ['programmeVersionId'],
          referenceTable: 'campus_programme_versions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_study_plans_fk_2',
          columns: ['approvedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_submission_files',
      dartName: 'CampusSubmissionFile',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'submissionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'fileName',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'fileUrl',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sizeBytes',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'checksum',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_submission_files_fk_0',
          columns: ['submissionId'],
          referenceTable: 'campus_assessment_submissions',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_terms',
      dartName: 'CampusTerm',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'academicYearId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'startsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'endsAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_terms_fk_0',
          columns: ['academicYearId'],
          referenceTable: 'campus_academic_years',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_terms_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'academicYearId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'code',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_timetable_entries',
      dartName: 'CampusTimetableEntry',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'timetableId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'meetingId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sequence',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_timetable_entries_fk_0',
          columns: ['timetableId'],
          referenceTable: 'campus_timetables',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_timetable_entries_fk_1',
          columns: ['meetingId'],
          referenceTable: 'campus_section_meetings',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_timetable_entries_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'timetableId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'meetingId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_timetables',
      dartName: 'CampusTimetable',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'termId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'programmeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'published',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_timetables_fk_0',
          columns: ['termId'],
          referenceTable: 'campus_terms',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_timetables_fk_1',
          columns: ['programmeId'],
          referenceTable: 'campus_programmes',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_waitlist_entries',
      dartName: 'CampusWaitlistEntry',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'studentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'position',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'offeredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_waitlist_entries_fk_0',
          columns: ['studentId'],
          referenceTable: 'campus_students',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_waitlist_entries_fk_1',
          columns: ['sectionId'],
          referenceTable: 'campus_course_sections',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_waitlist_entries_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'studentId',
            ),
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'sectionId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'campus_withdrawals',
      dartName: 'CampusWithdrawal',
      schema: 'public',
      module: 'serverpod_lens',
      columns: [
        _isp.ColumnDefinition(
          name: 'id',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue?',
          columnDefault: 'random',
        ),
        _isp.ColumnDefinition(
          name: 'enrolmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'approvedById',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_withdrawals_fk_0',
          columns: ['enrolmentId'],
          referenceTable: 'campus_enrolments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'campus_withdrawals_fk_1',
          columns: ['approvedById'],
          referenceTable: 'campus_lecturers',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
      ],
      indexes: [
        _isp.IndexDefinition(
          indexName: 'campus_withdrawals_u0',
          tableSpace: null,
          elements: [
            _isp.IndexElementDefinition(
              type: _isp.IndexElementDefinitionType.column,
              definition: 'enrolmentId',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
    ..._iais.Protocol.targetTableDefinitions,
    ..._iacs.Protocol.targetTableDefinitions,
    ..._isp.Protocol.targetTableDefinitions,
  ];

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
      } on _is.DeserializationClassNameNotFoundException catch (_) {
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
    if (t == _is.getType<_icbi7gwo.CampusCourseCategory?>()) {
      return (data != null
              ? _icbi7gwo.CampusCourseCategory.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_izhnn43s.CampusCourseEquivalence?>()) {
      return (data != null
              ? _izhnn43s.CampusCourseEquivalence.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i60iovqj.CampusCourseMaterial?>()) {
      return (data != null
              ? _i60iovqj.CampusCourseMaterial.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ifd85uwc.CampusCourseOutcome?>()) {
      return (data != null
              ? _ifd85uwc.CampusCourseOutcome.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ihnnsiks.CampusCoursePrerequisite?>()) {
      return (data != null
              ? _ihnnsiks.CampusCoursePrerequisite.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iporzlvp.CampusCourseSection?>()) {
      return (data != null
              ? _iporzlvp.CampusCourseSection.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iik9idpd.CampusCourse?>()) {
      return (data != null ? _iik9idpd.CampusCourse.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i6p3cs2n.CampusLecturerDepartment?>()) {
      return (data != null
              ? _i6p3cs2n.CampusLecturerDepartment.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ixrb3pvm.CampusLecturer?>()) {
      return (data != null ? _ixrb3pvm.CampusLecturer.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i90s5rli.CampusOfficeHour?>()) {
      return (data != null ? _i90s5rli.CampusOfficeHour.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_idvibfro.CampusProgrammeCourse?>()) {
      return (data != null
              ? _idvibfro.CampusProgrammeCourse.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ikq440cu.CampusProgrammeVersion?>()) {
      return (data != null
              ? _ikq440cu.CampusProgrammeVersion.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i49ncx41.CampusProgramme?>()) {
      return (data != null ? _i49ncx41.CampusProgramme.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iuk3rrc1.CampusQualification?>()) {
      return (data != null
              ? _iuk3rrc1.CampusQualification.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_igrg8f15.CampusRoomBooking?>()) {
      return (data != null ? _igrg8f15.CampusRoomBooking.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i4dxex9j.CampusSectionCapacityOverride?>()) {
      return (data != null
              ? _i4dxex9j.CampusSectionCapacityOverride.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i60vl9yy.CampusSectionInstructor?>()) {
      return (data != null
              ? _i60vl9yy.CampusSectionInstructor.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i1ujp85c.CampusSectionMeeting?>()) {
      return (data != null
              ? _i1ujp85c.CampusSectionMeeting.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i5vbc563.CampusTimetableEntry?>()) {
      return (data != null
              ? _i5vbc563.CampusTimetableEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iztuz2v2.CampusTimetable?>()) {
      return (data != null ? _iztuz2v2.CampusTimetable.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ioijgh15.CampusAcceptance?>()) {
      return (data != null ? _ioijgh15.CampusAcceptance.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iszjqqz2.CampusApplicationChoice?>()) {
      return (data != null
              ? _iszjqqz2.CampusApplicationChoice.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i3p9hmqv.CampusApplicationDocument?>()) {
      return (data != null
              ? _i3p9hmqv.CampusApplicationDocument.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iwgn7l2z.CampusApplicationReview?>()) {
      return (data != null
              ? _iwgn7l2z.CampusApplicationReview.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i84qe6g5.CampusApplication?>()) {
      return (data != null ? _i84qe6g5.CampusApplication.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iz7cqiiz.CampusCohortMembership?>()) {
      return (data != null
              ? _iz7cqiiz.CampusCohortMembership.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iu4vottr.CampusCohort?>()) {
      return (data != null ? _iu4vottr.CampusCohort.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i2lpxeo5.CampusGuardian?>()) {
      return (data != null ? _i2lpxeo5.CampusGuardian.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_id663sq3.CampusOfferCondition?>()) {
      return (data != null
              ? _id663sq3.CampusOfferCondition.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_icm8cu4v.CampusOffer?>()) {
      return (data != null ? _icm8cu4v.CampusOffer.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i4ls3qtz.CampusStudentAddress?>()) {
      return (data != null
              ? _i4ls3qtz.CampusStudentAddress.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_irvnuni5.CampusStudentContact?>()) {
      return (data != null
              ? _irvnuni5.CampusStudentContact.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iwai6mlf.CampusStudentDocument?>()) {
      return (data != null
              ? _iwai6mlf.CampusStudentDocument.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i16zyk3v.CampusStudentGuardian?>()) {
      return (data != null
              ? _i16zyk3v.CampusStudentGuardian.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iz31h8i4.CampusStudentHold?>()) {
      return (data != null ? _iz31h8i4.CampusStudentHold.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_idvhf8qa.CampusStudentNote?>()) {
      return (data != null ? _idvhf8qa.CampusStudentNote.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i6c5z7zh.CampusStudentStatusEvent?>()) {
      return (data != null
              ? _i6c5z7zh.CampusStudentStatusEvent.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ixciykx6.CampusStudent?>()) {
      return (data != null ? _ixciykx6.CampusStudent.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_izef6fak.CampusAppeal?>()) {
      return (data != null ? _izef6fak.CampusAppeal.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ipsxsf4b.CampusAssessmentComponent?>()) {
      return (data != null
              ? _ipsxsf4b.CampusAssessmentComponent.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_if8a84ek.CampusAssessmentMarker?>()) {
      return (data != null
              ? _if8a84ek.CampusAssessmentMarker.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iuohle5e.CampusAssessmentSubmission?>()) {
      return (data != null
              ? _iuohle5e.CampusAssessmentSubmission.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iy95bowl.CampusAssessment?>()) {
      return (data != null ? _iy95bowl.CampusAssessment.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i968i8hm.CampusExamAccommodation?>()) {
      return (data != null
              ? _i968i8hm.CampusExamAccommodation.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iqsus0ia.CampusExamRegistration?>()) {
      return (data != null
              ? _iqsus0ia.CampusExamRegistration.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iq0v8pha.CampusExamSeat?>()) {
      return (data != null ? _iq0v8pha.CampusExamSeat.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_igek713o.CampusExamSession?>()) {
      return (data != null ? _igek713o.CampusExamSession.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iej23kcn.CampusExam?>()) {
      return (data != null ? _iej23kcn.CampusExam.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i2oqkkd6.CampusGradeChange?>()) {
      return (data != null ? _i2oqkkd6.CampusGradeChange.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i12uv7b6.CampusGradeScaleBand?>()) {
      return (data != null
              ? _i12uv7b6.CampusGradeScaleBand.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ielxdmeu.CampusGradeScale?>()) {
      return (data != null ? _ielxdmeu.CampusGradeScale.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ips0lupm.CampusGrade?>()) {
      return (data != null ? _ips0lupm.CampusGrade.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iv6t9wps.CampusSubmissionFile?>()) {
      return (data != null
              ? _iv6t9wps.CampusSubmissionFile.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_idxtqeho.CampusAcademicYear?>()) {
      return (data != null ? _idxtqeho.CampusAcademicYear.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ijg49dtu.CampusBuilding?>()) {
      return (data != null ? _ijg49dtu.CampusBuilding.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ii5cv0xg.CampusCampus?>()) {
      return (data != null ? _ii5cv0xg.CampusCampus.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ieaagiip.CampusDepartment?>()) {
      return (data != null ? _ieaagiip.CampusDepartment.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iw9evvci.CampusFaculty?>()) {
      return (data != null ? _iw9evvci.CampusFaculty.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i5697to7.CampusRoom?>()) {
      return (data != null ? _i5697to7.CampusRoom.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iny6aho6.CampusTerm?>()) {
      return (data != null ? _iny6aho6.CampusTerm.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i7ljm6m0.CampusAttendanceRecord?>()) {
      return (data != null
              ? _i7ljm6m0.CampusAttendanceRecord.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i5rv3lv9.CampusAttendanceSession?>()) {
      return (data != null
              ? _i5rv3lv9.CampusAttendanceSession.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iftc8tcu.CampusCompletion?>()) {
      return (data != null ? _iftc8tcu.CampusCompletion.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ixqnp4lw.CampusCreditTransfer?>()) {
      return (data != null
              ? _ixqnp4lw.CampusCreditTransfer.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iij70sau.CampusEnrolmentRequest?>()) {
      return (data != null
              ? _iij70sau.CampusEnrolmentRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ikbz98ec.CampusEnrolment?>()) {
      return (data != null ? _ikbz98ec.CampusEnrolment.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i6lqa8un.CampusStudyPlanCourse?>()) {
      return (data != null
              ? _i6lqa8un.CampusStudyPlanCourse.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i5anj6ne.CampusStudyPlan?>()) {
      return (data != null ? _i5anj6ne.CampusStudyPlan.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_imquh55n.CampusWaitlistEntry?>()) {
      return (data != null
              ? _imquh55n.CampusWaitlistEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6xgcgm2.CampusWithdrawal?>()) {
      return (data != null ? _i6xgcgm2.CampusWithdrawal.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_isewgl0f.CampusFeeScheduleLine?>()) {
      return (data != null
              ? _isewgl0f.CampusFeeScheduleLine.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6ur2gi2.CampusFeeSchedule?>()) {
      return (data != null ? _i6ur2gi2.CampusFeeSchedule.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivd0ctvz.CampusFeeType?>()) {
      return (data != null ? _ivd0ctvz.CampusFeeType.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iy3qqd34.CampusFinancialAidApplication?>()) {
      return (data != null
              ? _iy3qqd34.CampusFinancialAidApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6aphuzg.CampusFinancialAidDecision?>()) {
      return (data != null
              ? _i6aphuzg.CampusFinancialAidDecision.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i785d3eu.CampusInvoiceLine?>()) {
      return (data != null ? _i785d3eu.CampusInvoiceLine.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ih7yrsa3.CampusInvoice?>()) {
      return (data != null ? _ih7yrsa3.CampusInvoice.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ip72wm5q.CampusPaymentAllocation?>()) {
      return (data != null
              ? _ip72wm5q.CampusPaymentAllocation.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_igjjsnon.CampusPayment?>()) {
      return (data != null ? _igjjsnon.CampusPayment.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ih0zxat5.CampusRefund?>()) {
      return (data != null ? _ih0zxat5.CampusRefund.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i2d8zb54.CampusScholarshipAward?>()) {
      return (data != null
              ? _i2d8zb54.CampusScholarshipAward.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i12o4a5n.CampusScholarship?>()) {
      return (data != null ? _i12o4a5n.CampusScholarship.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_imm1bvl9.CampusSponsorContribution?>()) {
      return (data != null
              ? _imm1bvl9.CampusSponsorContribution.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iufogsm9.CampusSponsor?>()) {
      return (data != null ? _iufogsm9.CampusSponsor.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i5w6z1o1.CampusSponsorship?>()) {
      return (data != null ? _i5w6z1o1.CampusSponsorship.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_id1yl7ms.CampusHousingAllocation?>()) {
      return (data != null
              ? _id1yl7ms.CampusHousingAllocation.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_inj6rnis.CampusHousingApplication?>()) {
      return (data != null
              ? _inj6rnis.CampusHousingApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i9sv4sdm.CampusHousingCharge?>()) {
      return (data != null
              ? _i9sv4sdm.CampusHousingCharge.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_is5welzq.CampusHousingContract?>()) {
      return (data != null
              ? _is5welzq.CampusHousingContract.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ieupa5nm.CampusHousingGuest?>()) {
      return (data != null ? _ieupa5nm.CampusHousingGuest.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i33gygjf.CampusHousingInspection?>()) {
      return (data != null
              ? _i33gygjf.CampusHousingInspection.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ip7dqx68.CampusHousingMaintenanceRequest?>()) {
      return (data != null
              ? _ip7dqx68.CampusHousingMaintenanceRequest.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i1chn6z5.CampusHousingPreference?>()) {
      return (data != null
              ? _i1chn6z5.CampusHousingPreference.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ijjla5z9.CampusResidenceBed?>()) {
      return (data != null ? _ijjla5z9.CampusResidenceBed.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ioguw2d9.CampusResidenceFloor?>()) {
      return (data != null
              ? _ioguw2d9.CampusResidenceFloor.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i4wllryj.CampusResidenceRoom?>()) {
      return (data != null
              ? _i4wllryj.CampusResidenceRoom.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ilwtmbox.CampusResidence?>()) {
      return (data != null ? _ilwtmbox.CampusResidence.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_im17xq9s.CampusAuthor?>()) {
      return (data != null ? _im17xq9s.CampusAuthor.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ieum417b.CampusBookAuthor?>()) {
      return (data != null ? _ieum417b.CampusBookAuthor.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i8iyxmm6.CampusBookCopy?>()) {
      return (data != null ? _i8iyxmm6.CampusBookCopy.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_idwj8oog.CampusBookEdition?>()) {
      return (data != null ? _idwj8oog.CampusBookEdition.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i91fxs7d.CampusBook?>()) {
      return (data != null ? _i91fxs7d.CampusBook.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_imao42n2.CampusFine?>()) {
      return (data != null ? _imao42n2.CampusFine.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i7d3ow2m.CampusLibraryBranch?>()) {
      return (data != null
              ? _i7d3ow2m.CampusLibraryBranch.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ife2jm2t.CampusLibraryVisit?>()) {
      return (data != null ? _ife2jm2t.CampusLibraryVisit.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iz85k6nw.CampusLoanRenewal?>()) {
      return (data != null ? _iz85k6nw.CampusLoanRenewal.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivrsnad5.CampusLoan?>()) {
      return (data != null ? _ivrsnad5.CampusLoan.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i7uvxqby.CampusPublisher?>()) {
      return (data != null ? _i7uvxqby.CampusPublisher.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i8fl0bcz.CampusReadingListEntry?>()) {
      return (data != null
              ? _i8fl0bcz.CampusReadingListEntry.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iuf8fw82.CampusReadingList?>()) {
      return (data != null ? _iuf8fw82.CampusReadingList.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_izrbvszp.CampusReservation?>()) {
      return (data != null ? _izrbvszp.CampusReservation.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ilkwpsep.CampusEthicsApplication?>()) {
      return (data != null
              ? _ilkwpsep.CampusEthicsApplication.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i23unika.CampusEthicsReview?>()) {
      return (data != null ? _i23unika.CampusEthicsReview.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_irnr71yk.CampusGrantBudget?>()) {
      return (data != null ? _irnr71yk.CampusGrantBudget.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_io3zc5dl.CampusGrantExpense?>()) {
      return (data != null ? _io3zc5dl.CampusGrantExpense.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_irh7kw2j.CampusGrant?>()) {
      return (data != null ? _irh7kw2j.CampusGrant.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i6qyipky.CampusProjectMilestone?>()) {
      return (data != null
              ? _i6qyipky.CampusProjectMilestone.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i2rtf719.CampusPublicationAuthor?>()) {
      return (data != null
              ? _i2rtf719.CampusPublicationAuthor.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i5u1ue6j.CampusPublication?>()) {
      return (data != null ? _i5u1ue6j.CampusPublication.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ik725i35.CampusResearchDataset?>()) {
      return (data != null
              ? _ik725i35.CampusResearchDataset.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i5h5n425.CampusResearchMembership?>()) {
      return (data != null
              ? _i5h5n425.CampusResearchMembership.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_it8rg4yy.CampusResearchProject?>()) {
      return (data != null
              ? _it8rg4yy.CampusResearchProject.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iqdes7hr.SchemaAccessException?>()) {
      return (data != null
              ? _iqdes7hr.SchemaAccessException.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ip7yl2xa.SchemaColumn?>()) {
      return (data != null ? _ip7yl2xa.SchemaColumn.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_irxuw07j.SchemaEnum?>()) {
      return (data != null ? _irxuw07j.SchemaEnum.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iarzs90a.SchemaForeignKey?>()) {
      return (data != null ? _iarzs90a.SchemaForeignKey.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_is38wmwx.SchemaGraph?>()) {
      return (data != null ? _is38wmwx.SchemaGraph.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_id0qwmzg.SchemaIndex?>()) {
      return (data != null ? _id0qwmzg.SchemaIndex.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iyw9pr81.SchemaModule?>()) {
      return (data != null ? _iyw9pr81.SchemaModule.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iaxhcc5o.SchemaSnapshot?>()) {
      return (data != null ? _iaxhcc5o.SchemaSnapshot.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ixxyfkud.SchemaTable?>()) {
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
    if (t == _is.getType<Map<String, String>?>()) {
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
      return _iais.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _iacs.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
    try {
      return _isp.Protocol().deserialize<T>(data, t);
    } on _is.DeserializationTypeNotFoundException catch (_) {}
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
    className = _iais.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_idp.$className';
    }
    className = _iacs.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.')
          ? className
          : 'serverpod_auth_core.$className';
    }
    className = _isp.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod.$className';
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
      return _iais.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod_auth_core.')) {
      data['className'] = dataClassName.substring(20);
      return _iacs.Protocol().deserializeByClassName(data);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _isp.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  void _registerHostProtocols() {
    _iais.Protocol().registerHostProtocol('serverpod_lens', this);
    _iacs.Protocol().registerHostProtocol('serverpod_lens', this);
  }

  @override
  _is.Table? getTableForType(Type t) {
    {
      var table = _iais.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _iacs.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    {
      var table = _isp.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _icbi7gwo.CampusCourseCategory:
        return _icbi7gwo.CampusCourseCategory.t;
      case _izhnn43s.CampusCourseEquivalence:
        return _izhnn43s.CampusCourseEquivalence.t;
      case _i60iovqj.CampusCourseMaterial:
        return _i60iovqj.CampusCourseMaterial.t;
      case _ifd85uwc.CampusCourseOutcome:
        return _ifd85uwc.CampusCourseOutcome.t;
      case _ihnnsiks.CampusCoursePrerequisite:
        return _ihnnsiks.CampusCoursePrerequisite.t;
      case _iporzlvp.CampusCourseSection:
        return _iporzlvp.CampusCourseSection.t;
      case _iik9idpd.CampusCourse:
        return _iik9idpd.CampusCourse.t;
      case _i6p3cs2n.CampusLecturerDepartment:
        return _i6p3cs2n.CampusLecturerDepartment.t;
      case _ixrb3pvm.CampusLecturer:
        return _ixrb3pvm.CampusLecturer.t;
      case _i90s5rli.CampusOfficeHour:
        return _i90s5rli.CampusOfficeHour.t;
      case _idvibfro.CampusProgrammeCourse:
        return _idvibfro.CampusProgrammeCourse.t;
      case _ikq440cu.CampusProgrammeVersion:
        return _ikq440cu.CampusProgrammeVersion.t;
      case _i49ncx41.CampusProgramme:
        return _i49ncx41.CampusProgramme.t;
      case _iuk3rrc1.CampusQualification:
        return _iuk3rrc1.CampusQualification.t;
      case _igrg8f15.CampusRoomBooking:
        return _igrg8f15.CampusRoomBooking.t;
      case _i4dxex9j.CampusSectionCapacityOverride:
        return _i4dxex9j.CampusSectionCapacityOverride.t;
      case _i60vl9yy.CampusSectionInstructor:
        return _i60vl9yy.CampusSectionInstructor.t;
      case _i1ujp85c.CampusSectionMeeting:
        return _i1ujp85c.CampusSectionMeeting.t;
      case _i5vbc563.CampusTimetableEntry:
        return _i5vbc563.CampusTimetableEntry.t;
      case _iztuz2v2.CampusTimetable:
        return _iztuz2v2.CampusTimetable.t;
      case _ioijgh15.CampusAcceptance:
        return _ioijgh15.CampusAcceptance.t;
      case _iszjqqz2.CampusApplicationChoice:
        return _iszjqqz2.CampusApplicationChoice.t;
      case _i3p9hmqv.CampusApplicationDocument:
        return _i3p9hmqv.CampusApplicationDocument.t;
      case _iwgn7l2z.CampusApplicationReview:
        return _iwgn7l2z.CampusApplicationReview.t;
      case _i84qe6g5.CampusApplication:
        return _i84qe6g5.CampusApplication.t;
      case _iz7cqiiz.CampusCohortMembership:
        return _iz7cqiiz.CampusCohortMembership.t;
      case _iu4vottr.CampusCohort:
        return _iu4vottr.CampusCohort.t;
      case _i2lpxeo5.CampusGuardian:
        return _i2lpxeo5.CampusGuardian.t;
      case _id663sq3.CampusOfferCondition:
        return _id663sq3.CampusOfferCondition.t;
      case _icm8cu4v.CampusOffer:
        return _icm8cu4v.CampusOffer.t;
      case _i4ls3qtz.CampusStudentAddress:
        return _i4ls3qtz.CampusStudentAddress.t;
      case _irvnuni5.CampusStudentContact:
        return _irvnuni5.CampusStudentContact.t;
      case _iwai6mlf.CampusStudentDocument:
        return _iwai6mlf.CampusStudentDocument.t;
      case _i16zyk3v.CampusStudentGuardian:
        return _i16zyk3v.CampusStudentGuardian.t;
      case _iz31h8i4.CampusStudentHold:
        return _iz31h8i4.CampusStudentHold.t;
      case _idvhf8qa.CampusStudentNote:
        return _idvhf8qa.CampusStudentNote.t;
      case _i6c5z7zh.CampusStudentStatusEvent:
        return _i6c5z7zh.CampusStudentStatusEvent.t;
      case _ixciykx6.CampusStudent:
        return _ixciykx6.CampusStudent.t;
      case _izef6fak.CampusAppeal:
        return _izef6fak.CampusAppeal.t;
      case _ipsxsf4b.CampusAssessmentComponent:
        return _ipsxsf4b.CampusAssessmentComponent.t;
      case _if8a84ek.CampusAssessmentMarker:
        return _if8a84ek.CampusAssessmentMarker.t;
      case _iuohle5e.CampusAssessmentSubmission:
        return _iuohle5e.CampusAssessmentSubmission.t;
      case _iy95bowl.CampusAssessment:
        return _iy95bowl.CampusAssessment.t;
      case _i968i8hm.CampusExamAccommodation:
        return _i968i8hm.CampusExamAccommodation.t;
      case _iqsus0ia.CampusExamRegistration:
        return _iqsus0ia.CampusExamRegistration.t;
      case _iq0v8pha.CampusExamSeat:
        return _iq0v8pha.CampusExamSeat.t;
      case _igek713o.CampusExamSession:
        return _igek713o.CampusExamSession.t;
      case _iej23kcn.CampusExam:
        return _iej23kcn.CampusExam.t;
      case _i2oqkkd6.CampusGradeChange:
        return _i2oqkkd6.CampusGradeChange.t;
      case _i12uv7b6.CampusGradeScaleBand:
        return _i12uv7b6.CampusGradeScaleBand.t;
      case _ielxdmeu.CampusGradeScale:
        return _ielxdmeu.CampusGradeScale.t;
      case _ips0lupm.CampusGrade:
        return _ips0lupm.CampusGrade.t;
      case _iv6t9wps.CampusSubmissionFile:
        return _iv6t9wps.CampusSubmissionFile.t;
      case _idxtqeho.CampusAcademicYear:
        return _idxtqeho.CampusAcademicYear.t;
      case _ijg49dtu.CampusBuilding:
        return _ijg49dtu.CampusBuilding.t;
      case _ii5cv0xg.CampusCampus:
        return _ii5cv0xg.CampusCampus.t;
      case _ieaagiip.CampusDepartment:
        return _ieaagiip.CampusDepartment.t;
      case _iw9evvci.CampusFaculty:
        return _iw9evvci.CampusFaculty.t;
      case _i5697to7.CampusRoom:
        return _i5697to7.CampusRoom.t;
      case _iny6aho6.CampusTerm:
        return _iny6aho6.CampusTerm.t;
      case _i7ljm6m0.CampusAttendanceRecord:
        return _i7ljm6m0.CampusAttendanceRecord.t;
      case _i5rv3lv9.CampusAttendanceSession:
        return _i5rv3lv9.CampusAttendanceSession.t;
      case _iftc8tcu.CampusCompletion:
        return _iftc8tcu.CampusCompletion.t;
      case _ixqnp4lw.CampusCreditTransfer:
        return _ixqnp4lw.CampusCreditTransfer.t;
      case _iij70sau.CampusEnrolmentRequest:
        return _iij70sau.CampusEnrolmentRequest.t;
      case _ikbz98ec.CampusEnrolment:
        return _ikbz98ec.CampusEnrolment.t;
      case _i6lqa8un.CampusStudyPlanCourse:
        return _i6lqa8un.CampusStudyPlanCourse.t;
      case _i5anj6ne.CampusStudyPlan:
        return _i5anj6ne.CampusStudyPlan.t;
      case _imquh55n.CampusWaitlistEntry:
        return _imquh55n.CampusWaitlistEntry.t;
      case _i6xgcgm2.CampusWithdrawal:
        return _i6xgcgm2.CampusWithdrawal.t;
      case _isewgl0f.CampusFeeScheduleLine:
        return _isewgl0f.CampusFeeScheduleLine.t;
      case _i6ur2gi2.CampusFeeSchedule:
        return _i6ur2gi2.CampusFeeSchedule.t;
      case _ivd0ctvz.CampusFeeType:
        return _ivd0ctvz.CampusFeeType.t;
      case _iy3qqd34.CampusFinancialAidApplication:
        return _iy3qqd34.CampusFinancialAidApplication.t;
      case _i6aphuzg.CampusFinancialAidDecision:
        return _i6aphuzg.CampusFinancialAidDecision.t;
      case _i785d3eu.CampusInvoiceLine:
        return _i785d3eu.CampusInvoiceLine.t;
      case _ih7yrsa3.CampusInvoice:
        return _ih7yrsa3.CampusInvoice.t;
      case _ip72wm5q.CampusPaymentAllocation:
        return _ip72wm5q.CampusPaymentAllocation.t;
      case _igjjsnon.CampusPayment:
        return _igjjsnon.CampusPayment.t;
      case _ih0zxat5.CampusRefund:
        return _ih0zxat5.CampusRefund.t;
      case _i2d8zb54.CampusScholarshipAward:
        return _i2d8zb54.CampusScholarshipAward.t;
      case _i12o4a5n.CampusScholarship:
        return _i12o4a5n.CampusScholarship.t;
      case _imm1bvl9.CampusSponsorContribution:
        return _imm1bvl9.CampusSponsorContribution.t;
      case _iufogsm9.CampusSponsor:
        return _iufogsm9.CampusSponsor.t;
      case _i5w6z1o1.CampusSponsorship:
        return _i5w6z1o1.CampusSponsorship.t;
      case _id1yl7ms.CampusHousingAllocation:
        return _id1yl7ms.CampusHousingAllocation.t;
      case _inj6rnis.CampusHousingApplication:
        return _inj6rnis.CampusHousingApplication.t;
      case _i9sv4sdm.CampusHousingCharge:
        return _i9sv4sdm.CampusHousingCharge.t;
      case _is5welzq.CampusHousingContract:
        return _is5welzq.CampusHousingContract.t;
      case _ieupa5nm.CampusHousingGuest:
        return _ieupa5nm.CampusHousingGuest.t;
      case _i33gygjf.CampusHousingInspection:
        return _i33gygjf.CampusHousingInspection.t;
      case _ip7dqx68.CampusHousingMaintenanceRequest:
        return _ip7dqx68.CampusHousingMaintenanceRequest.t;
      case _i1chn6z5.CampusHousingPreference:
        return _i1chn6z5.CampusHousingPreference.t;
      case _ijjla5z9.CampusResidenceBed:
        return _ijjla5z9.CampusResidenceBed.t;
      case _ioguw2d9.CampusResidenceFloor:
        return _ioguw2d9.CampusResidenceFloor.t;
      case _i4wllryj.CampusResidenceRoom:
        return _i4wllryj.CampusResidenceRoom.t;
      case _ilwtmbox.CampusResidence:
        return _ilwtmbox.CampusResidence.t;
      case _im17xq9s.CampusAuthor:
        return _im17xq9s.CampusAuthor.t;
      case _ieum417b.CampusBookAuthor:
        return _ieum417b.CampusBookAuthor.t;
      case _i8iyxmm6.CampusBookCopy:
        return _i8iyxmm6.CampusBookCopy.t;
      case _idwj8oog.CampusBookEdition:
        return _idwj8oog.CampusBookEdition.t;
      case _i91fxs7d.CampusBook:
        return _i91fxs7d.CampusBook.t;
      case _imao42n2.CampusFine:
        return _imao42n2.CampusFine.t;
      case _i7d3ow2m.CampusLibraryBranch:
        return _i7d3ow2m.CampusLibraryBranch.t;
      case _ife2jm2t.CampusLibraryVisit:
        return _ife2jm2t.CampusLibraryVisit.t;
      case _iz85k6nw.CampusLoanRenewal:
        return _iz85k6nw.CampusLoanRenewal.t;
      case _ivrsnad5.CampusLoan:
        return _ivrsnad5.CampusLoan.t;
      case _i7uvxqby.CampusPublisher:
        return _i7uvxqby.CampusPublisher.t;
      case _i8fl0bcz.CampusReadingListEntry:
        return _i8fl0bcz.CampusReadingListEntry.t;
      case _iuf8fw82.CampusReadingList:
        return _iuf8fw82.CampusReadingList.t;
      case _izrbvszp.CampusReservation:
        return _izrbvszp.CampusReservation.t;
      case _ilkwpsep.CampusEthicsApplication:
        return _ilkwpsep.CampusEthicsApplication.t;
      case _i23unika.CampusEthicsReview:
        return _i23unika.CampusEthicsReview.t;
      case _irnr71yk.CampusGrantBudget:
        return _irnr71yk.CampusGrantBudget.t;
      case _io3zc5dl.CampusGrantExpense:
        return _io3zc5dl.CampusGrantExpense.t;
      case _irh7kw2j.CampusGrant:
        return _irh7kw2j.CampusGrant.t;
      case _i6qyipky.CampusProjectMilestone:
        return _i6qyipky.CampusProjectMilestone.t;
      case _i2rtf719.CampusPublicationAuthor:
        return _i2rtf719.CampusPublicationAuthor.t;
      case _i5u1ue6j.CampusPublication:
        return _i5u1ue6j.CampusPublication.t;
      case _ik725i35.CampusResearchDataset:
        return _ik725i35.CampusResearchDataset.t;
      case _i5h5n425.CampusResearchMembership:
        return _i5h5n425.CampusResearchMembership.t;
      case _it8rg4yy.CampusResearchProject:
        return _it8rg4yy.CampusResearchProject.t;
    }
    return null;
  }

  @override
  List<_isp.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

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
      return _iais.Protocol().mapRecordToJson(record);
    } catch (_) {}
    try {
      return _iacs.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
