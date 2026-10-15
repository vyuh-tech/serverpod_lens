BEGIN;

--
-- Function: gen_random_uuid_v7()
-- Source: https://gist.github.com/kjmph/5bd772b2c2df145aa645b837da7eca74
-- License: MIT (copyright notice included on the generator source code).
--
create or replace function gen_random_uuid_v7()
returns uuid
as $$
begin
  -- use random v4 uuid as starting point (which has the same variant we need)
  -- then overlay timestamp
  -- then set version 7 by flipping the 2 and 1 bit in the version 4 string
  return encode(
    set_bit(
      set_bit(
        overlay(uuid_send(gen_random_uuid())
                placing substring(int8send(floor(extract(epoch from clock_timestamp()) * 1000)::bigint) from 3)
                from 1 for 6
        ),
        52, 1
      ),
      53, 1
    ),
    'hex')::uuid;
end
$$
language plpgsql
volatile;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_academic_years" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "label" text NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_academic_years_u0" ON "campus_academic_years" USING btree ("label");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_acceptances" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "offerId" uuid NOT NULL,
    "acceptedAt" timestamp without time zone NOT NULL,
    "depositPaymentId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_acceptances_u0" ON "campus_acceptances" USING btree ("offerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_appeals" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "gradeId" uuid NOT NULL,
    "reason" text NOT NULL,
    "status" text NOT NULL,
    "reviewedById" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_application_choices" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "programmeId" uuid NOT NULL,
    "preference" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_application_choices_u0" ON "campus_application_choices" USING btree ("applicationId", "preference");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_application_documents" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "required" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_application_documents_u0" ON "campus_application_documents" USING btree ("applicationId", "documentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_application_reviews" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "score" double precision,
    "recommendation" text NOT NULL,
    "reviewedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_applications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "reference" text NOT NULL,
    "submittedAt" timestamp without time zone,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_applications_u0" ON "campus_applications" USING btree ("reference");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_assessment_components" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "assessmentId" uuid NOT NULL,
    "title" text NOT NULL,
    "maximumScore" double precision NOT NULL,
    "sequence" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_assessment_markers" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "assessmentId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "moderation" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_assessment_markers_u0" ON "campus_assessment_markers" USING btree ("assessmentId", "lecturerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_assessment_submissions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "assessmentId" uuid NOT NULL,
    "enrolmentId" uuid NOT NULL,
    "submittedAt" timestamp without time zone,
    "attempt" bigint NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_assessment_submissions_u0" ON "campus_assessment_submissions" USING btree ("assessmentId", "enrolmentId", "attempt");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_assessments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sectionId" uuid NOT NULL,
    "title" text NOT NULL,
    "dueAt" timestamp without time zone NOT NULL,
    "maximumScore" double precision NOT NULL,
    "weightPercent" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_attendance_records" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sessionId" uuid NOT NULL,
    "enrolmentId" uuid NOT NULL,
    "status" text NOT NULL,
    "checkedInAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_attendance_records_u0" ON "campus_attendance_records" USING btree ("sessionId", "enrolmentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_attendance_sessions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sectionId" uuid NOT NULL,
    "meetingId" uuid,
    "heldAt" timestamp without time zone NOT NULL,
    "topic" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_authors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "biography" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_book_authors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "bookId" uuid NOT NULL,
    "authorId" uuid NOT NULL,
    "sequence" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_book_authors_u0" ON "campus_book_authors" USING btree ("bookId", "authorId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_book_copies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "editionId" uuid NOT NULL,
    "branchId" uuid NOT NULL,
    "barcode" text NOT NULL,
    "shelf" text NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_book_copies_u0" ON "campus_book_copies" USING btree ("barcode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_book_editions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "bookId" uuid NOT NULL,
    "publisherId" uuid NOT NULL,
    "isbn" text NOT NULL,
    "publishedYear" bigint NOT NULL,
    "edition" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_book_editions_u0" ON "campus_book_editions" USING btree ("isbn");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_books" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" text NOT NULL,
    "subject" text NOT NULL,
    "language" text NOT NULL,
    "tags" json NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_buildings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "campusId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "latitude" double precision,
    "longitude" double precision,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_buildings_u0" ON "campus_buildings" USING btree ("campusId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_campuses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "city" text NOT NULL,
    "countryCode" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_campuses_u0" ON "campus_campuses" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_cohort_memberships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "cohortId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "joinedAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_cohort_memberships_u0" ON "campus_cohort_memberships" USING btree ("cohortId", "studentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_cohorts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "programmeId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "name" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_completions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "programmeVersionId" uuid NOT NULL,
    "completedAt" timestamp without time zone NOT NULL,
    "awardedCredits" bigint NOT NULL,
    "classification" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "parentId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_course_categories_u0" ON "campus_course_categories" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_equivalences" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "equivalentCourseId" uuid NOT NULL,
    "approvedAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_course_equivalences_u0" ON "campus_course_equivalences" USING btree ("courseId", "equivalentCourseId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_materials" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "title" text NOT NULL,
    "resourceUrl" text NOT NULL,
    "required" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_outcomes" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "code" text NOT NULL,
    "description" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_course_outcomes_u0" ON "campus_course_outcomes" USING btree ("courseId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_prerequisites" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "prerequisiteId" uuid NOT NULL,
    "minimumGrade" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_course_prerequisites_u0" ON "campus_course_prerequisites" USING btree ("courseId", "prerequisiteId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_course_sections" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "termId" uuid NOT NULL,
    "code" text NOT NULL,
    "capacity" bigint NOT NULL,
    "deliveryMode" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_course_sections_u0" ON "campus_course_sections" USING btree ("courseId", "termId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_courses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "departmentId" uuid NOT NULL,
    "categoryId" uuid,
    "code" text NOT NULL,
    "title" text NOT NULL,
    "credits" bigint NOT NULL,
    "description" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_courses_u0" ON "campus_courses" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_credit_transfers" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "courseId" uuid NOT NULL,
    "institution" text NOT NULL,
    "awardedCredits" bigint NOT NULL,
    "approvedById" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_departments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "facultyId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "parentId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_departments_u0" ON "campus_departments" USING btree ("facultyId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_enrolment_requests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "sectionId" uuid NOT NULL,
    "requestedAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_enrolments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "sectionId" uuid NOT NULL,
    "enrolledAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_enrolments_u0" ON "campus_enrolments" USING btree ("studentId", "sectionId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_ethics_applications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "submittedById" uuid NOT NULL,
    "submittedAt" timestamp without time zone NOT NULL,
    "summary" text NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_ethics_reviews" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "reviewerId" uuid NOT NULL,
    "decision" text NOT NULL,
    "reviewedAt" timestamp without time zone,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_exam_accommodations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "registrationId" uuid NOT NULL,
    "extraMinutes" bigint NOT NULL,
    "requirements" json NOT NULL,
    "approvedById" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_exam_registrations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "examSessionId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "seatId" uuid,
    "attended" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_exam_registrations_u0" ON "campus_exam_registrations" USING btree ("examSessionId", "studentId");
CREATE UNIQUE INDEX "campus_exam_registrations_u1" ON "campus_exam_registrations" USING btree ("seatId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_exam_seats" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "examSessionId" uuid NOT NULL,
    "label" text NOT NULL,
    "accessible" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_exam_seats_u0" ON "campus_exam_seats" USING btree ("examSessionId", "label");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_exam_sessions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "examId" uuid NOT NULL,
    "termId" uuid NOT NULL,
    "roomId" uuid NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "capacity" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_exams" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "title" text NOT NULL,
    "durationMinutes" bigint NOT NULL,
    "maximumScore" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_faculties" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "campusId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "deanId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_faculties_u0" ON "campus_faculties" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_fee_schedule_lines" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "scheduleId" uuid NOT NULL,
    "feeTypeId" uuid NOT NULL,
    "amountMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_fee_schedule_lines_u0" ON "campus_fee_schedule_lines" USING btree ("scheduleId", "feeTypeId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_fee_schedules" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "programmeId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "currency" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_fee_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "refundable" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_fee_types_u0" ON "campus_fee_types" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_financial_aid_applications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "requestedMinor" bigint NOT NULL,
    "reason" text NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_financial_aid_decisions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "awardedMinor" bigint NOT NULL,
    "decidedAt" timestamp without time zone NOT NULL,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_financial_aid_decisions_u0" ON "campus_financial_aid_decisions" USING btree ("applicationId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_fines" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "loanId" uuid NOT NULL,
    "amountMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "invoiceLineId" uuid,
    "waived" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grade_changes" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "gradeId" uuid NOT NULL,
    "changedById" uuid NOT NULL,
    "previousScore" double precision NOT NULL,
    "nextScore" double precision NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grade_scale_bands" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "gradeScaleId" uuid NOT NULL,
    "label" text NOT NULL,
    "minimumScore" double precision NOT NULL,
    "maximumScore" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_grade_scale_bands_u0" ON "campus_grade_scale_bands" USING btree ("gradeScaleId", "label");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grade_scales" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "passScore" double precision NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_grade_scales_u0" ON "campus_grade_scales" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grades" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "submissionId" uuid NOT NULL,
    "markerId" uuid NOT NULL,
    "gradeScaleId" uuid,
    "score" double precision NOT NULL,
    "feedback" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_grades_u0" ON "campus_grades" USING btree ("submissionId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grant_budgets" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "grantId" uuid NOT NULL,
    "category" text NOT NULL,
    "allocatedMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_grant_budgets_u0" ON "campus_grant_budgets" USING btree ("grantId", "category");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grant_expenses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "budgetId" uuid NOT NULL,
    "invoiceId" uuid,
    "description" text NOT NULL,
    "amountMinor" bigint NOT NULL,
    "spentAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_grants" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "sponsorId" uuid NOT NULL,
    "reference" text NOT NULL,
    "awardedMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "awardedAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_grants_u0" ON "campus_grants" USING btree ("reference");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_guardians" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "email" text,
    "phone" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_allocations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "housingApplicationId" uuid NOT NULL,
    "bedId" uuid NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_applications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "termId" uuid NOT NULL,
    "submittedAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "accessibilityNeeds" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_charges" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "contractId" uuid NOT NULL,
    "feeTypeId" uuid NOT NULL,
    "invoiceLineId" uuid,
    "amountMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_contracts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "allocationId" uuid NOT NULL,
    "reference" text NOT NULL,
    "signedAt" timestamp without time zone,
    "rentMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_housing_contracts_u0" ON "campus_housing_contracts" USING btree ("reference");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_guests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "contractId" uuid NOT NULL,
    "name" text NOT NULL,
    "arrivesAt" timestamp without time zone NOT NULL,
    "leavesAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_inspections" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "contractId" uuid NOT NULL,
    "inspectedAt" timestamp without time zone NOT NULL,
    "condition" text NOT NULL,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_maintenance_requests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "residenceRoomId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "description" text NOT NULL,
    "priority" text NOT NULL,
    "resolvedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_housing_preferences" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "housingApplicationId" uuid NOT NULL,
    "residenceId" uuid NOT NULL,
    "rank" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_housing_preferences_u0" ON "campus_housing_preferences" USING btree ("housingApplicationId", "rank");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_invoice_lines" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "invoiceId" uuid NOT NULL,
    "feeTypeId" uuid NOT NULL,
    "description" text NOT NULL,
    "quantity" bigint NOT NULL,
    "unitAmountMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_invoices" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "termId" uuid,
    "number" text NOT NULL,
    "currency" text NOT NULL,
    "issuedAt" timestamp without time zone NOT NULL,
    "dueAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_invoices_u0" ON "campus_invoices" USING btree ("number");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_lecturer_departments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "lecturerId" uuid NOT NULL,
    "departmentId" uuid NOT NULL,
    "allocationPercent" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_lecturer_departments_u0" ON "campus_lecturer_departments" USING btree ("lecturerId", "departmentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_lecturers" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "departmentId" uuid NOT NULL,
    "staffNumber" text NOT NULL,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "supervisorId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_lecturers_u0" ON "campus_lecturers" USING btree ("staffNumber");
CREATE UNIQUE INDEX "campus_lecturers_u1" ON "campus_lecturers" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_library_branches" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "campusId" uuid NOT NULL,
    "name" text NOT NULL,
    "openingHours" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_library_visits" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "branchId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "enteredAt" timestamp without time zone NOT NULL,
    "exitedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_loan_renewals" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "loanId" uuid NOT NULL,
    "previousDueAt" timestamp without time zone NOT NULL,
    "nextDueAt" timestamp without time zone NOT NULL,
    "reason" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_loans" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "copyId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "borrowedAt" timestamp without time zone NOT NULL,
    "dueAt" timestamp without time zone NOT NULL,
    "returnedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_offer_conditions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "offerId" uuid NOT NULL,
    "description" text NOT NULL,
    "satisfied" boolean NOT NULL,
    "satisfiedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_offers" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "applicationId" uuid NOT NULL,
    "programmeVersionId" uuid NOT NULL,
    "offeredAt" timestamp without time zone NOT NULL,
    "expiresAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_office_hours" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "lecturerId" uuid NOT NULL,
    "roomId" uuid,
    "weekday" bigint NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_payment_allocations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "paymentId" uuid NOT NULL,
    "invoiceId" uuid NOT NULL,
    "amountMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_payment_allocations_u0" ON "campus_payment_allocations" USING btree ("paymentId", "invoiceId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_payments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "reference" text NOT NULL,
    "amountMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "receivedAt" timestamp without time zone NOT NULL,
    "method" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_payments_u0" ON "campus_payments" USING btree ("reference");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_programme_courses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "programmeVersionId" uuid NOT NULL,
    "courseId" uuid NOT NULL,
    "required" boolean NOT NULL,
    "recommendedTerm" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_programme_courses_u0" ON "campus_programme_courses" USING btree ("programmeVersionId", "courseId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_programme_versions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "programmeId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "version" bigint NOT NULL,
    "published" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_programme_versions_u0" ON "campus_programme_versions" USING btree ("programmeId", "version");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_programmes" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "departmentId" uuid NOT NULL,
    "qualificationId" uuid NOT NULL,
    "code" text NOT NULL,
    "title" text NOT NULL,
    "durationTerms" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_programmes_u0" ON "campus_programmes" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_project_milestones" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "title" text NOT NULL,
    "dueAt" timestamp without time zone NOT NULL,
    "completedAt" timestamp without time zone,
    "parentId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_publication_authors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "publicationId" uuid NOT NULL,
    "lecturerId" uuid,
    "studentId" uuid,
    "sequence" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_publications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "title" text NOT NULL,
    "doi" text,
    "publishedAt" timestamp without time zone,
    "venue" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_publications_u0" ON "campus_publications" USING btree ("doi");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_publishers" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "countryCode" text,
    "website" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_qualifications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "title" text NOT NULL,
    "level" bigint NOT NULL,
    "requiredCredits" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_qualifications_u0" ON "campus_qualifications" USING btree ("code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_reading_list_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "readingListId" uuid NOT NULL,
    "bookId" uuid NOT NULL,
    "required" boolean NOT NULL,
    "notes" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_reading_list_entries_u0" ON "campus_reading_list_entries" USING btree ("readingListId", "bookId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_reading_lists" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "courseId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "title" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_refunds" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "paymentId" uuid NOT NULL,
    "invoiceId" uuid,
    "amountMinor" bigint NOT NULL,
    "reason" text NOT NULL,
    "processedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_research_datasets" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "title" text NOT NULL,
    "resourceUrl" text NOT NULL,
    "licence" text NOT NULL,
    "publicAccess" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_research_memberships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "projectId" uuid NOT NULL,
    "studentId" uuid,
    "lecturerId" uuid,
    "role" text NOT NULL,
    "joinedAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_research_projects" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "departmentId" uuid NOT NULL,
    "principalInvestigatorId" uuid NOT NULL,
    "title" text NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_reservations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "bookId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "pickupBranchId" uuid NOT NULL,
    "expiresAt" timestamp without time zone NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_residence_beds" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "residenceRoomId" uuid NOT NULL,
    "label" text NOT NULL,
    "available" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_residence_beds_u0" ON "campus_residence_beds" USING btree ("residenceRoomId", "label");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_residence_floors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "residenceId" uuid NOT NULL,
    "level" bigint NOT NULL,
    "description" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_residence_floors_u0" ON "campus_residence_floors" USING btree ("residenceId", "level");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_residence_rooms" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "floorId" uuid NOT NULL,
    "roomId" uuid,
    "number" text NOT NULL,
    "roomType" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_residence_rooms_u0" ON "campus_residence_rooms" USING btree ("floorId", "number");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_residences" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "campusId" uuid NOT NULL,
    "name" text NOT NULL,
    "address" text NOT NULL,
    "accessible" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_room_bookings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "roomId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "purpose" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_rooms" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "buildingId" uuid NOT NULL,
    "code" text NOT NULL,
    "capacity" bigint NOT NULL,
    "accessible" boolean NOT NULL,
    "facilities" json NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_rooms_u0" ON "campus_rooms" USING btree ("buildingId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_scholarship_awards" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "scholarshipId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "amountMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_scholarship_awards_u0" ON "campus_scholarship_awards" USING btree ("scholarshipId", "studentId", "academicYearId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_scholarships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "departmentId" uuid,
    "sponsorId" uuid,
    "annualBudgetMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_section_capacity_overrides" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sectionId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "extraPlaces" bigint NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_section_instructors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sectionId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "lead" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_section_instructors_u0" ON "campus_section_instructors" USING btree ("sectionId", "lecturerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_section_meetings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sectionId" uuid NOT NULL,
    "roomId" uuid NOT NULL,
    "weekday" bigint NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_sponsor_contributions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sponsorshipId" uuid NOT NULL,
    "paymentId" uuid NOT NULL,
    "amountMinor" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_sponsors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "contactEmail" text NOT NULL,
    "organisation" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_sponsorships" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "sponsorId" uuid NOT NULL,
    "studentId" uuid NOT NULL,
    "academicYearId" uuid NOT NULL,
    "commitmentMinor" bigint NOT NULL,
    "currency" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_addresses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "kind" text NOT NULL,
    "line1" text NOT NULL,
    "city" text NOT NULL,
    "postalCode" text NOT NULL,
    "countryCode" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_contacts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "kind" text NOT NULL,
    "value" text NOT NULL,
    "preferred" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_documents" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "title" text NOT NULL,
    "documentType" text NOT NULL,
    "fileUrl" text NOT NULL,
    "verified" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_guardians" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "guardianId" uuid NOT NULL,
    "relationship" text NOT NULL,
    "emergencyContact" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_student_guardians_u0" ON "campus_student_guardians" USING btree ("studentId", "guardianId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_holds" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "reason" text NOT NULL,
    "blocksEnrolment" boolean NOT NULL,
    "releasedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_notes" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "lecturerId" uuid NOT NULL,
    "category" text NOT NULL,
    "note" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_student_status_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "previousStatus" text,
    "nextStatus" text NOT NULL,
    "effectiveAt" timestamp without time zone NOT NULL,
    "reason" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_students" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "programmeId" uuid,
    "studentNumber" text NOT NULL,
    "name" text NOT NULL,
    "email" text NOT NULL,
    "dateOfBirth" timestamp without time zone NOT NULL,
    "active" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_students_u0" ON "campus_students" USING btree ("studentNumber");
CREATE UNIQUE INDEX "campus_students_u1" ON "campus_students" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_study_plan_courses" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studyPlanId" uuid NOT NULL,
    "courseId" uuid NOT NULL,
    "plannedTermId" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_study_plan_courses_u0" ON "campus_study_plan_courses" USING btree ("studyPlanId", "courseId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_study_plans" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "programmeVersionId" uuid NOT NULL,
    "approvedById" uuid,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_submission_files" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "submissionId" uuid NOT NULL,
    "fileName" text NOT NULL,
    "fileUrl" text NOT NULL,
    "sizeBytes" bigint NOT NULL,
    "checksum" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_terms" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "academicYearId" uuid NOT NULL,
    "code" text NOT NULL,
    "startsAt" timestamp without time zone NOT NULL,
    "endsAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_terms_u0" ON "campus_terms" USING btree ("academicYearId", "code");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_timetable_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "timetableId" uuid NOT NULL,
    "meetingId" uuid NOT NULL,
    "sequence" bigint NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_timetable_entries_u0" ON "campus_timetable_entries" USING btree ("timetableId", "meetingId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_timetables" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "termId" uuid NOT NULL,
    "programmeId" uuid NOT NULL,
    "title" text NOT NULL,
    "published" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_waitlist_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "studentId" uuid NOT NULL,
    "sectionId" uuid NOT NULL,
    "position" bigint NOT NULL,
    "offeredAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_waitlist_entries_u0" ON "campus_waitlist_entries" USING btree ("studentId", "sectionId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "campus_withdrawals" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "enrolmentId" uuid NOT NULL,
    "requestedAt" timestamp without time zone NOT NULL,
    "reason" text NOT NULL,
    "approvedById" uuid,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE UNIQUE INDEX "campus_withdrawals_u0" ON "campus_withdrawals" USING btree ("enrolmentId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "addedTime" timestamp without time zone NOT NULL,
    "expiration" timestamp without time zone,
    "byteData" bytea NOT NULL,
    "verified" boolean NOT NULL,
    "contentType" text,
    "cacheControl" text,
    "contentDisposition" text,
    "contentEncoding" text,
    "customMetadata" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_path_idx" ON "serverpod_cloud_storage" USING btree ("storageId", "path");
CREATE INDEX "serverpod_cloud_storage_expiration" ON "serverpod_cloud_storage" USING btree ("expiration");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage_direct_download" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL,
    "downloadFileName" text,
    "contentType" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_download_auth_key" ON "serverpod_cloud_storage_direct_download" USING btree ("authKey");
CREATE INDEX "serverpod_cloud_storage_direct_download_expiration" ON "serverpod_cloud_storage_direct_download" USING btree ("expiration");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_cloud_storage_direct_upload" (
    "id" bigserial PRIMARY KEY,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL,
    "authKey" text NOT NULL,
    "maxFileSize" bigint NOT NULL DEFAULT 10485760,
    "contentLength" bigint,
    "preventOverwrite" boolean NOT NULL DEFAULT false,
    "contentType" text,
    "cacheControl" text,
    "contentDisposition" text,
    "contentEncoding" text,
    "customMetadata" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_cloud_storage_direct_upload_storage_path" ON "serverpod_cloud_storage_direct_upload" USING btree ("storageId", "path");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_future_call" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "serializedObject" text,
    "serverId" text NOT NULL,
    "identifier" text,
    "scheduling" json
);

-- Indexes
CREATE INDEX "serverpod_future_call_time_idx" ON "serverpod_future_call" USING btree ("time");
CREATE INDEX "serverpod_future_call_serverId_idx" ON "serverpod_future_call" USING btree ("serverId");
CREATE INDEX "serverpod_future_call_identifier_idx" ON "serverpod_future_call" USING btree ("identifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_future_call_claim" (
    "id" bigserial PRIMARY KEY,
    "futureCallId" bigint,
    "lastHeartbeatTime" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "future_call_unique_idx" ON "serverpod_future_call_claim" USING btree ("futureCallId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_connection_info" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "active" bigint NOT NULL,
    "closing" bigint NOT NULL,
    "idle" bigint NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_connection_info_timestamp_idx" ON "serverpod_health_connection_info" USING btree ("timestamp", "serverId", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_health_metric" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "serverId" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "isHealthy" boolean NOT NULL,
    "value" double precision NOT NULL,
    "granularity" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_health_metric_timestamp_idx" ON "serverpod_health_metric" USING btree ("timestamp", "serverId", "name", "granularity");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "reference" text,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "logLevel" bigint NOT NULL,
    "message" text NOT NULL,
    "error" text,
    "stackTrace" text,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_log_sessionLogId_idx" ON "serverpod_log" USING btree ("sessionLogId", "order");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_message_log" (
    "id" bigserial PRIMARY KEY,
    "sessionLogId" bigint NOT NULL,
    "serverId" text NOT NULL,
    "messageId" bigint NOT NULL,
    "endpoint" text NOT NULL,
    "messageName" text NOT NULL,
    "duration" double precision NOT NULL,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_message_log_sessionLogId_idx" ON "serverpod_message_log" USING btree ("sessionLogId", "order");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_method" (
    "id" bigserial PRIMARY KEY,
    "endpoint" text NOT NULL,
    "method" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_method_endpoint_method_idx" ON "serverpod_method" USING btree ("endpoint", "method");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_migrations" (
    "id" bigserial PRIMARY KEY,
    "module" text NOT NULL,
    "version" text NOT NULL,
    "timestamp" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_migrations_ids" ON "serverpod_migrations" USING btree ("module");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_query_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "sessionLogId" bigint NOT NULL,
    "messageId" bigint,
    "query" text NOT NULL,
    "duration" double precision NOT NULL,
    "numRows" bigint,
    "error" text,
    "stackTrace" text,
    "slow" boolean NOT NULL,
    "order" bigint NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_query_log_sessionLogId_idx" ON "serverpod_query_log" USING btree ("sessionLogId", "order");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_readwrite_test" (
    "id" bigserial PRIMARY KEY,
    "number" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_runtime_settings" (
    "id" bigserial PRIMARY KEY,
    "logSettings" json NOT NULL,
    "logSettingsOverrides" json NOT NULL,
    "logServiceCalls" boolean NOT NULL,
    "logMalformedCalls" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_session_log" (
    "id" bigserial PRIMARY KEY,
    "serverId" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "module" text,
    "endpoint" text,
    "method" text,
    "duration" double precision,
    "numQueries" bigint,
    "slow" boolean,
    "error" text,
    "stackTrace" text,
    "authenticatedUserId" bigint,
    "userId" text,
    "isOpen" boolean,
    "touched" timestamp without time zone NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_session_log_serverid_idx" ON "serverpod_session_log" USING btree ("serverId");
CREATE INDEX "serverpod_session_log_time_idx" ON "serverpod_session_log" USING btree ("time");
CREATE INDEX "serverpod_session_log_touched_idx" ON "serverpod_session_log" USING btree ("touched");
CREATE INDEX "serverpod_session_log_isopen_idx" ON "serverpod_session_log" USING btree ("isOpen");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_anonymous_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_apple_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "userIdentifier" text NOT NULL,
    "refreshToken" text NOT NULL,
    "refreshTokenRequestedWithBundleIdentifier" boolean NOT NULL,
    "lastRefreshedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "authUserId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "email" text,
    "isEmailVerified" boolean,
    "isPrivateEmail" boolean,
    "firstName" text,
    "lastName" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_apple_account_identifier" ON "serverpod_auth_idp_apple_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_email_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "email" text NOT NULL,
    "passwordHash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_idp_email_account_email" ON "serverpod_auth_idp_email_account" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_email_account_password_reset_request" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "emailAccountId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "challengeId" uuid NOT NULL,
    "setPasswordChallengeId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_email_account_request" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" text NOT NULL,
    "challengeId" uuid NOT NULL,
    "createAccountChallengeId" uuid
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_idp_email_account_request_email" ON "serverpod_auth_idp_email_account_request" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_facebook_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "userIdentifier" text NOT NULL,
    "email" text,
    "fullName" text,
    "firstName" text,
    "lastName" text
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_facebook_account_user_identifier" ON "serverpod_auth_idp_facebook_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_firebase_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "created" timestamp without time zone NOT NULL,
    "email" text,
    "phone" text,
    "userIdentifier" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_firebase_account_user_identifier" ON "serverpod_auth_idp_firebase_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_github_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "userIdentifier" text NOT NULL,
    "email" text,
    "created" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_github_account_user_identifier" ON "serverpod_auth_idp_github_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_google_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "created" timestamp without time zone NOT NULL,
    "email" text NOT NULL,
    "userIdentifier" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_google_account_user_identifier" ON "serverpod_auth_idp_google_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_microsoft_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "userIdentifier" text NOT NULL,
    "email" text,
    "created" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_microsoft_account_user_identifier" ON "serverpod_auth_idp_microsoft_account" USING btree ("userIdentifier");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_passkey_account" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "keyId" bytea NOT NULL,
    "keyIdBase64" text NOT NULL,
    "clientDataJSON" bytea NOT NULL,
    "attestationObject" bytea NOT NULL,
    "originalChallenge" bytea NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_idp_passkey_account_key_id_base64" ON "serverpod_auth_idp_passkey_account" USING btree ("keyIdBase64");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_passkey_challenge" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "createdAt" timestamp without time zone NOT NULL,
    "challenge" bytea NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_rate_limited_request_attempt" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "domain" text NOT NULL,
    "source" text NOT NULL,
    "key" text NOT NULL,
    "ipAddress" text,
    "attemptedAt" timestamp without time zone NOT NULL,
    "extraData" json
);

-- Indexes
CREATE INDEX "serverpod_auth_idp_rate_limited_request_attempt_composite" ON "serverpod_auth_idp_rate_limited_request_attempt" USING btree ("domain", "source", "key", "attemptedAt");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_idp_secret_challenge" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "challengeCodeHash" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_core_jwt_refresh_token" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "scopeNames" json NOT NULL,
    "extraClaims" text,
    "method" text NOT NULL,
    "fixedSecret" bytea NOT NULL,
    "rotatingSecretHash" text NOT NULL,
    "lastUpdatedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE INDEX "serverpod_auth_core_jwt_refresh_token_last_updated_at" ON "serverpod_auth_core_jwt_refresh_token" USING btree ("lastUpdatedAt");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_core_profile" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "userName" text,
    "fullName" text,
    "email" text,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "imageId" uuid
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_auth_profile_user_profile_email_auth_user_id" ON "serverpod_auth_core_profile" USING btree ("authUserId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_core_profile_image" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "userProfileId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "storageId" text NOT NULL,
    "path" text NOT NULL,
    "url" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_core_session" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "authUserId" uuid NOT NULL,
    "scopeNames" json NOT NULL,
    "createdAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "lastUsedAt" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "expiresAt" timestamp without time zone,
    "expireAfterUnusedFor" bigint,
    "sessionKeyHash" bytea NOT NULL,
    "sessionKeySalt" bytea NOT NULL,
    "method" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_auth_core_user" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid_v7(),
    "createdAt" timestamp without time zone NOT NULL,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_acceptances"
    ADD CONSTRAINT "campus_acceptances_fk_0"
    FOREIGN KEY("offerId")
    REFERENCES "campus_offers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_acceptances"
    ADD CONSTRAINT "campus_acceptances_fk_1"
    FOREIGN KEY("depositPaymentId")
    REFERENCES "campus_payments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_appeals"
    ADD CONSTRAINT "campus_appeals_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_appeals"
    ADD CONSTRAINT "campus_appeals_fk_1"
    FOREIGN KEY("gradeId")
    REFERENCES "campus_grades"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_appeals"
    ADD CONSTRAINT "campus_appeals_fk_2"
    FOREIGN KEY("reviewedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_application_choices"
    ADD CONSTRAINT "campus_application_choices_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_application_choices"
    ADD CONSTRAINT "campus_application_choices_fk_1"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_application_documents"
    ADD CONSTRAINT "campus_application_documents_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_application_documents"
    ADD CONSTRAINT "campus_application_documents_fk_1"
    FOREIGN KEY("documentId")
    REFERENCES "campus_student_documents"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_application_reviews"
    ADD CONSTRAINT "campus_application_reviews_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_application_reviews"
    ADD CONSTRAINT "campus_application_reviews_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_applications"
    ADD CONSTRAINT "campus_applications_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_applications"
    ADD CONSTRAINT "campus_applications_fk_1"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_assessment_components"
    ADD CONSTRAINT "campus_assessment_components_fk_0"
    FOREIGN KEY("assessmentId")
    REFERENCES "campus_assessments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_assessment_markers"
    ADD CONSTRAINT "campus_assessment_markers_fk_0"
    FOREIGN KEY("assessmentId")
    REFERENCES "campus_assessments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_assessment_markers"
    ADD CONSTRAINT "campus_assessment_markers_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_assessment_submissions"
    ADD CONSTRAINT "campus_assessment_submissions_fk_0"
    FOREIGN KEY("assessmentId")
    REFERENCES "campus_assessments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_assessment_submissions"
    ADD CONSTRAINT "campus_assessment_submissions_fk_1"
    FOREIGN KEY("enrolmentId")
    REFERENCES "campus_enrolments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_assessments"
    ADD CONSTRAINT "campus_assessments_fk_0"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_attendance_records"
    ADD CONSTRAINT "campus_attendance_records_fk_0"
    FOREIGN KEY("sessionId")
    REFERENCES "campus_attendance_sessions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_attendance_records"
    ADD CONSTRAINT "campus_attendance_records_fk_1"
    FOREIGN KEY("enrolmentId")
    REFERENCES "campus_enrolments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_attendance_sessions"
    ADD CONSTRAINT "campus_attendance_sessions_fk_0"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_attendance_sessions"
    ADD CONSTRAINT "campus_attendance_sessions_fk_1"
    FOREIGN KEY("meetingId")
    REFERENCES "campus_section_meetings"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_book_authors"
    ADD CONSTRAINT "campus_book_authors_fk_0"
    FOREIGN KEY("bookId")
    REFERENCES "campus_books"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_book_authors"
    ADD CONSTRAINT "campus_book_authors_fk_1"
    FOREIGN KEY("authorId")
    REFERENCES "campus_authors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_book_copies"
    ADD CONSTRAINT "campus_book_copies_fk_0"
    FOREIGN KEY("editionId")
    REFERENCES "campus_book_editions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_book_copies"
    ADD CONSTRAINT "campus_book_copies_fk_1"
    FOREIGN KEY("branchId")
    REFERENCES "campus_library_branches"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_book_editions"
    ADD CONSTRAINT "campus_book_editions_fk_0"
    FOREIGN KEY("bookId")
    REFERENCES "campus_books"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_book_editions"
    ADD CONSTRAINT "campus_book_editions_fk_1"
    FOREIGN KEY("publisherId")
    REFERENCES "campus_publishers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_buildings"
    ADD CONSTRAINT "campus_buildings_fk_0"
    FOREIGN KEY("campusId")
    REFERENCES "campus_campuses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_cohort_memberships"
    ADD CONSTRAINT "campus_cohort_memberships_fk_0"
    FOREIGN KEY("cohortId")
    REFERENCES "campus_cohorts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_cohort_memberships"
    ADD CONSTRAINT "campus_cohort_memberships_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_cohorts"
    ADD CONSTRAINT "campus_cohorts_fk_0"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_cohorts"
    ADD CONSTRAINT "campus_cohorts_fk_1"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_completions"
    ADD CONSTRAINT "campus_completions_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_completions"
    ADD CONSTRAINT "campus_completions_fk_1"
    FOREIGN KEY("programmeVersionId")
    REFERENCES "campus_programme_versions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_categories"
    ADD CONSTRAINT "campus_course_categories_fk_0"
    FOREIGN KEY("parentId")
    REFERENCES "campus_course_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_equivalences"
    ADD CONSTRAINT "campus_course_equivalences_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_course_equivalences"
    ADD CONSTRAINT "campus_course_equivalences_fk_1"
    FOREIGN KEY("equivalentCourseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_materials"
    ADD CONSTRAINT "campus_course_materials_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_outcomes"
    ADD CONSTRAINT "campus_course_outcomes_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_prerequisites"
    ADD CONSTRAINT "campus_course_prerequisites_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_course_prerequisites"
    ADD CONSTRAINT "campus_course_prerequisites_fk_1"
    FOREIGN KEY("prerequisiteId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_course_sections"
    ADD CONSTRAINT "campus_course_sections_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_course_sections"
    ADD CONSTRAINT "campus_course_sections_fk_1"
    FOREIGN KEY("termId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_courses"
    ADD CONSTRAINT "campus_courses_fk_0"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_courses"
    ADD CONSTRAINT "campus_courses_fk_1"
    FOREIGN KEY("categoryId")
    REFERENCES "campus_course_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_credit_transfers"
    ADD CONSTRAINT "campus_credit_transfers_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_credit_transfers"
    ADD CONSTRAINT "campus_credit_transfers_fk_1"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_credit_transfers"
    ADD CONSTRAINT "campus_credit_transfers_fk_2"
    FOREIGN KEY("approvedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_departments"
    ADD CONSTRAINT "campus_departments_fk_0"
    FOREIGN KEY("facultyId")
    REFERENCES "campus_faculties"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_departments"
    ADD CONSTRAINT "campus_departments_fk_1"
    FOREIGN KEY("parentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_enrolment_requests"
    ADD CONSTRAINT "campus_enrolment_requests_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_enrolment_requests"
    ADD CONSTRAINT "campus_enrolment_requests_fk_1"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_enrolments"
    ADD CONSTRAINT "campus_enrolments_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_enrolments"
    ADD CONSTRAINT "campus_enrolments_fk_1"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_ethics_applications"
    ADD CONSTRAINT "campus_ethics_applications_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_ethics_applications"
    ADD CONSTRAINT "campus_ethics_applications_fk_1"
    FOREIGN KEY("submittedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_ethics_reviews"
    ADD CONSTRAINT "campus_ethics_reviews_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_ethics_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_ethics_reviews"
    ADD CONSTRAINT "campus_ethics_reviews_fk_1"
    FOREIGN KEY("reviewerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_exam_accommodations"
    ADD CONSTRAINT "campus_exam_accommodations_fk_0"
    FOREIGN KEY("registrationId")
    REFERENCES "campus_exam_registrations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_exam_accommodations"
    ADD CONSTRAINT "campus_exam_accommodations_fk_1"
    FOREIGN KEY("approvedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_exam_registrations"
    ADD CONSTRAINT "campus_exam_registrations_fk_0"
    FOREIGN KEY("examSessionId")
    REFERENCES "campus_exam_sessions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_exam_registrations"
    ADD CONSTRAINT "campus_exam_registrations_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_exam_registrations"
    ADD CONSTRAINT "campus_exam_registrations_fk_2"
    FOREIGN KEY("seatId")
    REFERENCES "campus_exam_seats"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_exam_seats"
    ADD CONSTRAINT "campus_exam_seats_fk_0"
    FOREIGN KEY("examSessionId")
    REFERENCES "campus_exam_sessions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_exam_sessions"
    ADD CONSTRAINT "campus_exam_sessions_fk_0"
    FOREIGN KEY("examId")
    REFERENCES "campus_exams"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_exam_sessions"
    ADD CONSTRAINT "campus_exam_sessions_fk_1"
    FOREIGN KEY("termId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_exam_sessions"
    ADD CONSTRAINT "campus_exam_sessions_fk_2"
    FOREIGN KEY("roomId")
    REFERENCES "campus_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_exams"
    ADD CONSTRAINT "campus_exams_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_faculties"
    ADD CONSTRAINT "campus_faculties_fk_0"
    FOREIGN KEY("campusId")
    REFERENCES "campus_campuses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_faculties"
    ADD CONSTRAINT "campus_faculties_fk_1"
    FOREIGN KEY("deanId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_fee_schedule_lines"
    ADD CONSTRAINT "campus_fee_schedule_lines_fk_0"
    FOREIGN KEY("scheduleId")
    REFERENCES "campus_fee_schedules"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_fee_schedule_lines"
    ADD CONSTRAINT "campus_fee_schedule_lines_fk_1"
    FOREIGN KEY("feeTypeId")
    REFERENCES "campus_fee_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_fee_schedules"
    ADD CONSTRAINT "campus_fee_schedules_fk_0"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_fee_schedules"
    ADD CONSTRAINT "campus_fee_schedules_fk_1"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_financial_aid_applications"
    ADD CONSTRAINT "campus_financial_aid_applications_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_financial_aid_applications"
    ADD CONSTRAINT "campus_financial_aid_applications_fk_1"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_financial_aid_decisions"
    ADD CONSTRAINT "campus_financial_aid_decisions_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_financial_aid_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_fines"
    ADD CONSTRAINT "campus_fines_fk_0"
    FOREIGN KEY("loanId")
    REFERENCES "campus_loans"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_fines"
    ADD CONSTRAINT "campus_fines_fk_1"
    FOREIGN KEY("invoiceLineId")
    REFERENCES "campus_invoice_lines"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grade_changes"
    ADD CONSTRAINT "campus_grade_changes_fk_0"
    FOREIGN KEY("gradeId")
    REFERENCES "campus_grades"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_grade_changes"
    ADD CONSTRAINT "campus_grade_changes_fk_1"
    FOREIGN KEY("changedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grade_scale_bands"
    ADD CONSTRAINT "campus_grade_scale_bands_fk_0"
    FOREIGN KEY("gradeScaleId")
    REFERENCES "campus_grade_scales"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grades"
    ADD CONSTRAINT "campus_grades_fk_0"
    FOREIGN KEY("submissionId")
    REFERENCES "campus_assessment_submissions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_grades"
    ADD CONSTRAINT "campus_grades_fk_1"
    FOREIGN KEY("markerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_grades"
    ADD CONSTRAINT "campus_grades_fk_2"
    FOREIGN KEY("gradeScaleId")
    REFERENCES "campus_grade_scales"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grant_budgets"
    ADD CONSTRAINT "campus_grant_budgets_fk_0"
    FOREIGN KEY("grantId")
    REFERENCES "campus_grants"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grant_expenses"
    ADD CONSTRAINT "campus_grant_expenses_fk_0"
    FOREIGN KEY("budgetId")
    REFERENCES "campus_grant_budgets"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_grant_expenses"
    ADD CONSTRAINT "campus_grant_expenses_fk_1"
    FOREIGN KEY("invoiceId")
    REFERENCES "campus_invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_grants"
    ADD CONSTRAINT "campus_grants_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_grants"
    ADD CONSTRAINT "campus_grants_fk_1"
    FOREIGN KEY("sponsorId")
    REFERENCES "campus_sponsors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_allocations"
    ADD CONSTRAINT "campus_housing_allocations_fk_0"
    FOREIGN KEY("housingApplicationId")
    REFERENCES "campus_housing_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_allocations"
    ADD CONSTRAINT "campus_housing_allocations_fk_1"
    FOREIGN KEY("bedId")
    REFERENCES "campus_residence_beds"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_applications"
    ADD CONSTRAINT "campus_housing_applications_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_applications"
    ADD CONSTRAINT "campus_housing_applications_fk_1"
    FOREIGN KEY("termId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_charges"
    ADD CONSTRAINT "campus_housing_charges_fk_0"
    FOREIGN KEY("contractId")
    REFERENCES "campus_housing_contracts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_charges"
    ADD CONSTRAINT "campus_housing_charges_fk_1"
    FOREIGN KEY("feeTypeId")
    REFERENCES "campus_fee_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_charges"
    ADD CONSTRAINT "campus_housing_charges_fk_2"
    FOREIGN KEY("invoiceLineId")
    REFERENCES "campus_invoice_lines"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_contracts"
    ADD CONSTRAINT "campus_housing_contracts_fk_0"
    FOREIGN KEY("allocationId")
    REFERENCES "campus_housing_allocations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_guests"
    ADD CONSTRAINT "campus_housing_guests_fk_0"
    FOREIGN KEY("contractId")
    REFERENCES "campus_housing_contracts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_inspections"
    ADD CONSTRAINT "campus_housing_inspections_fk_0"
    FOREIGN KEY("contractId")
    REFERENCES "campus_housing_contracts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_maintenance_requests"
    ADD CONSTRAINT "campus_housing_maintenance_requests_fk_0"
    FOREIGN KEY("residenceRoomId")
    REFERENCES "campus_residence_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_maintenance_requests"
    ADD CONSTRAINT "campus_housing_maintenance_requests_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_housing_preferences"
    ADD CONSTRAINT "campus_housing_preferences_fk_0"
    FOREIGN KEY("housingApplicationId")
    REFERENCES "campus_housing_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_housing_preferences"
    ADD CONSTRAINT "campus_housing_preferences_fk_1"
    FOREIGN KEY("residenceId")
    REFERENCES "campus_residences"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_invoice_lines"
    ADD CONSTRAINT "campus_invoice_lines_fk_0"
    FOREIGN KEY("invoiceId")
    REFERENCES "campus_invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_invoice_lines"
    ADD CONSTRAINT "campus_invoice_lines_fk_1"
    FOREIGN KEY("feeTypeId")
    REFERENCES "campus_fee_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_invoices"
    ADD CONSTRAINT "campus_invoices_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_invoices"
    ADD CONSTRAINT "campus_invoices_fk_1"
    FOREIGN KEY("termId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_lecturer_departments"
    ADD CONSTRAINT "campus_lecturer_departments_fk_0"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_lecturer_departments"
    ADD CONSTRAINT "campus_lecturer_departments_fk_1"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_lecturers"
    ADD CONSTRAINT "campus_lecturers_fk_0"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_lecturers"
    ADD CONSTRAINT "campus_lecturers_fk_1"
    FOREIGN KEY("supervisorId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_library_branches"
    ADD CONSTRAINT "campus_library_branches_fk_0"
    FOREIGN KEY("campusId")
    REFERENCES "campus_campuses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_library_visits"
    ADD CONSTRAINT "campus_library_visits_fk_0"
    FOREIGN KEY("branchId")
    REFERENCES "campus_library_branches"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_library_visits"
    ADD CONSTRAINT "campus_library_visits_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_loan_renewals"
    ADD CONSTRAINT "campus_loan_renewals_fk_0"
    FOREIGN KEY("loanId")
    REFERENCES "campus_loans"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_loans"
    ADD CONSTRAINT "campus_loans_fk_0"
    FOREIGN KEY("copyId")
    REFERENCES "campus_book_copies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_loans"
    ADD CONSTRAINT "campus_loans_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_offer_conditions"
    ADD CONSTRAINT "campus_offer_conditions_fk_0"
    FOREIGN KEY("offerId")
    REFERENCES "campus_offers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_offers"
    ADD CONSTRAINT "campus_offers_fk_0"
    FOREIGN KEY("applicationId")
    REFERENCES "campus_applications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_offers"
    ADD CONSTRAINT "campus_offers_fk_1"
    FOREIGN KEY("programmeVersionId")
    REFERENCES "campus_programme_versions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_office_hours"
    ADD CONSTRAINT "campus_office_hours_fk_0"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_office_hours"
    ADD CONSTRAINT "campus_office_hours_fk_1"
    FOREIGN KEY("roomId")
    REFERENCES "campus_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_payment_allocations"
    ADD CONSTRAINT "campus_payment_allocations_fk_0"
    FOREIGN KEY("paymentId")
    REFERENCES "campus_payments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_payment_allocations"
    ADD CONSTRAINT "campus_payment_allocations_fk_1"
    FOREIGN KEY("invoiceId")
    REFERENCES "campus_invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_payments"
    ADD CONSTRAINT "campus_payments_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_programme_courses"
    ADD CONSTRAINT "campus_programme_courses_fk_0"
    FOREIGN KEY("programmeVersionId")
    REFERENCES "campus_programme_versions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_programme_courses"
    ADD CONSTRAINT "campus_programme_courses_fk_1"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_programme_versions"
    ADD CONSTRAINT "campus_programme_versions_fk_0"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_programme_versions"
    ADD CONSTRAINT "campus_programme_versions_fk_1"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_programmes"
    ADD CONSTRAINT "campus_programmes_fk_0"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_programmes"
    ADD CONSTRAINT "campus_programmes_fk_1"
    FOREIGN KEY("qualificationId")
    REFERENCES "campus_qualifications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_project_milestones"
    ADD CONSTRAINT "campus_project_milestones_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_project_milestones"
    ADD CONSTRAINT "campus_project_milestones_fk_1"
    FOREIGN KEY("parentId")
    REFERENCES "campus_project_milestones"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_publication_authors"
    ADD CONSTRAINT "campus_publication_authors_fk_0"
    FOREIGN KEY("publicationId")
    REFERENCES "campus_publications"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_publication_authors"
    ADD CONSTRAINT "campus_publication_authors_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_publication_authors"
    ADD CONSTRAINT "campus_publication_authors_fk_2"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_publications"
    ADD CONSTRAINT "campus_publications_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_reading_list_entries"
    ADD CONSTRAINT "campus_reading_list_entries_fk_0"
    FOREIGN KEY("readingListId")
    REFERENCES "campus_reading_lists"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_reading_list_entries"
    ADD CONSTRAINT "campus_reading_list_entries_fk_1"
    FOREIGN KEY("bookId")
    REFERENCES "campus_books"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_reading_lists"
    ADD CONSTRAINT "campus_reading_lists_fk_0"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_reading_lists"
    ADD CONSTRAINT "campus_reading_lists_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_refunds"
    ADD CONSTRAINT "campus_refunds_fk_0"
    FOREIGN KEY("paymentId")
    REFERENCES "campus_payments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_refunds"
    ADD CONSTRAINT "campus_refunds_fk_1"
    FOREIGN KEY("invoiceId")
    REFERENCES "campus_invoices"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_research_datasets"
    ADD CONSTRAINT "campus_research_datasets_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_research_memberships"
    ADD CONSTRAINT "campus_research_memberships_fk_0"
    FOREIGN KEY("projectId")
    REFERENCES "campus_research_projects"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_research_memberships"
    ADD CONSTRAINT "campus_research_memberships_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_research_memberships"
    ADD CONSTRAINT "campus_research_memberships_fk_2"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_research_projects"
    ADD CONSTRAINT "campus_research_projects_fk_0"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_research_projects"
    ADD CONSTRAINT "campus_research_projects_fk_1"
    FOREIGN KEY("principalInvestigatorId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_reservations"
    ADD CONSTRAINT "campus_reservations_fk_0"
    FOREIGN KEY("bookId")
    REFERENCES "campus_books"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_reservations"
    ADD CONSTRAINT "campus_reservations_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_reservations"
    ADD CONSTRAINT "campus_reservations_fk_2"
    FOREIGN KEY("pickupBranchId")
    REFERENCES "campus_library_branches"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_residence_beds"
    ADD CONSTRAINT "campus_residence_beds_fk_0"
    FOREIGN KEY("residenceRoomId")
    REFERENCES "campus_residence_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_residence_floors"
    ADD CONSTRAINT "campus_residence_floors_fk_0"
    FOREIGN KEY("residenceId")
    REFERENCES "campus_residences"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_residence_rooms"
    ADD CONSTRAINT "campus_residence_rooms_fk_0"
    FOREIGN KEY("floorId")
    REFERENCES "campus_residence_floors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_residence_rooms"
    ADD CONSTRAINT "campus_residence_rooms_fk_1"
    FOREIGN KEY("roomId")
    REFERENCES "campus_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_residences"
    ADD CONSTRAINT "campus_residences_fk_0"
    FOREIGN KEY("campusId")
    REFERENCES "campus_campuses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_room_bookings"
    ADD CONSTRAINT "campus_room_bookings_fk_0"
    FOREIGN KEY("roomId")
    REFERENCES "campus_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_room_bookings"
    ADD CONSTRAINT "campus_room_bookings_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_rooms"
    ADD CONSTRAINT "campus_rooms_fk_0"
    FOREIGN KEY("buildingId")
    REFERENCES "campus_buildings"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_scholarship_awards"
    ADD CONSTRAINT "campus_scholarship_awards_fk_0"
    FOREIGN KEY("scholarshipId")
    REFERENCES "campus_scholarships"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_scholarship_awards"
    ADD CONSTRAINT "campus_scholarship_awards_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_scholarship_awards"
    ADD CONSTRAINT "campus_scholarship_awards_fk_2"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_scholarships"
    ADD CONSTRAINT "campus_scholarships_fk_0"
    FOREIGN KEY("departmentId")
    REFERENCES "campus_departments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_scholarships"
    ADD CONSTRAINT "campus_scholarships_fk_1"
    FOREIGN KEY("sponsorId")
    REFERENCES "campus_sponsors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_section_capacity_overrides"
    ADD CONSTRAINT "campus_section_capacity_overrides_fk_0"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_section_capacity_overrides"
    ADD CONSTRAINT "campus_section_capacity_overrides_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_section_instructors"
    ADD CONSTRAINT "campus_section_instructors_fk_0"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_section_instructors"
    ADD CONSTRAINT "campus_section_instructors_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_section_meetings"
    ADD CONSTRAINT "campus_section_meetings_fk_0"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_section_meetings"
    ADD CONSTRAINT "campus_section_meetings_fk_1"
    FOREIGN KEY("roomId")
    REFERENCES "campus_rooms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_sponsor_contributions"
    ADD CONSTRAINT "campus_sponsor_contributions_fk_0"
    FOREIGN KEY("sponsorshipId")
    REFERENCES "campus_sponsorships"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_sponsor_contributions"
    ADD CONSTRAINT "campus_sponsor_contributions_fk_1"
    FOREIGN KEY("paymentId")
    REFERENCES "campus_payments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_sponsorships"
    ADD CONSTRAINT "campus_sponsorships_fk_0"
    FOREIGN KEY("sponsorId")
    REFERENCES "campus_sponsors"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_sponsorships"
    ADD CONSTRAINT "campus_sponsorships_fk_1"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_sponsorships"
    ADD CONSTRAINT "campus_sponsorships_fk_2"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_addresses"
    ADD CONSTRAINT "campus_student_addresses_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_contacts"
    ADD CONSTRAINT "campus_student_contacts_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_documents"
    ADD CONSTRAINT "campus_student_documents_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_guardians"
    ADD CONSTRAINT "campus_student_guardians_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_student_guardians"
    ADD CONSTRAINT "campus_student_guardians_fk_1"
    FOREIGN KEY("guardianId")
    REFERENCES "campus_guardians"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_holds"
    ADD CONSTRAINT "campus_student_holds_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_notes"
    ADD CONSTRAINT "campus_student_notes_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_student_notes"
    ADD CONSTRAINT "campus_student_notes_fk_1"
    FOREIGN KEY("lecturerId")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_student_status_events"
    ADD CONSTRAINT "campus_student_status_events_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_students"
    ADD CONSTRAINT "campus_students_fk_0"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_study_plan_courses"
    ADD CONSTRAINT "campus_study_plan_courses_fk_0"
    FOREIGN KEY("studyPlanId")
    REFERENCES "campus_study_plans"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_study_plan_courses"
    ADD CONSTRAINT "campus_study_plan_courses_fk_1"
    FOREIGN KEY("courseId")
    REFERENCES "campus_courses"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_study_plan_courses"
    ADD CONSTRAINT "campus_study_plan_courses_fk_2"
    FOREIGN KEY("plannedTermId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_study_plans"
    ADD CONSTRAINT "campus_study_plans_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_study_plans"
    ADD CONSTRAINT "campus_study_plans_fk_1"
    FOREIGN KEY("programmeVersionId")
    REFERENCES "campus_programme_versions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_study_plans"
    ADD CONSTRAINT "campus_study_plans_fk_2"
    FOREIGN KEY("approvedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_submission_files"
    ADD CONSTRAINT "campus_submission_files_fk_0"
    FOREIGN KEY("submissionId")
    REFERENCES "campus_assessment_submissions"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_terms"
    ADD CONSTRAINT "campus_terms_fk_0"
    FOREIGN KEY("academicYearId")
    REFERENCES "campus_academic_years"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_timetable_entries"
    ADD CONSTRAINT "campus_timetable_entries_fk_0"
    FOREIGN KEY("timetableId")
    REFERENCES "campus_timetables"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_timetable_entries"
    ADD CONSTRAINT "campus_timetable_entries_fk_1"
    FOREIGN KEY("meetingId")
    REFERENCES "campus_section_meetings"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_timetables"
    ADD CONSTRAINT "campus_timetables_fk_0"
    FOREIGN KEY("termId")
    REFERENCES "campus_terms"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_timetables"
    ADD CONSTRAINT "campus_timetables_fk_1"
    FOREIGN KEY("programmeId")
    REFERENCES "campus_programmes"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_waitlist_entries"
    ADD CONSTRAINT "campus_waitlist_entries_fk_0"
    FOREIGN KEY("studentId")
    REFERENCES "campus_students"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_waitlist_entries"
    ADD CONSTRAINT "campus_waitlist_entries_fk_1"
    FOREIGN KEY("sectionId")
    REFERENCES "campus_course_sections"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "campus_withdrawals"
    ADD CONSTRAINT "campus_withdrawals_fk_0"
    FOREIGN KEY("enrolmentId")
    REFERENCES "campus_enrolments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "campus_withdrawals"
    ADD CONSTRAINT "campus_withdrawals_fk_1"
    FOREIGN KEY("approvedById")
    REFERENCES "campus_lecturers"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_future_call_claim"
    ADD CONSTRAINT "serverpod_future_call_claim_fk_0"
    FOREIGN KEY("futureCallId")
    REFERENCES "serverpod_future_call"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_log"
    ADD CONSTRAINT "serverpod_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_message_log"
    ADD CONSTRAINT "serverpod_message_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_query_log"
    ADD CONSTRAINT "serverpod_query_log_fk_0"
    FOREIGN KEY("sessionLogId")
    REFERENCES "serverpod_session_log"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_anonymous_account"
    ADD CONSTRAINT "serverpod_auth_idp_anonymous_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_apple_account"
    ADD CONSTRAINT "serverpod_auth_idp_apple_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_email_account"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_email_account_password_reset_request"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_password_reset_request_fk_0"
    FOREIGN KEY("emailAccountId")
    REFERENCES "serverpod_auth_idp_email_account"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "serverpod_auth_idp_email_account_password_reset_request"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_password_reset_request_fk_1"
    FOREIGN KEY("challengeId")
    REFERENCES "serverpod_auth_idp_secret_challenge"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "serverpod_auth_idp_email_account_password_reset_request"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_password_reset_request_fk_2"
    FOREIGN KEY("setPasswordChallengeId")
    REFERENCES "serverpod_auth_idp_secret_challenge"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_email_account_request"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_request_fk_0"
    FOREIGN KEY("challengeId")
    REFERENCES "serverpod_auth_idp_secret_challenge"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "serverpod_auth_idp_email_account_request"
    ADD CONSTRAINT "serverpod_auth_idp_email_account_request_fk_1"
    FOREIGN KEY("createAccountChallengeId")
    REFERENCES "serverpod_auth_idp_secret_challenge"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_facebook_account"
    ADD CONSTRAINT "serverpod_auth_idp_facebook_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_firebase_account"
    ADD CONSTRAINT "serverpod_auth_idp_firebase_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_github_account"
    ADD CONSTRAINT "serverpod_auth_idp_github_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_google_account"
    ADD CONSTRAINT "serverpod_auth_idp_google_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_microsoft_account"
    ADD CONSTRAINT "serverpod_auth_idp_microsoft_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_idp_passkey_account"
    ADD CONSTRAINT "serverpod_auth_idp_passkey_account_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_core_jwt_refresh_token"
    ADD CONSTRAINT "serverpod_auth_core_jwt_refresh_token_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_core_profile"
    ADD CONSTRAINT "serverpod_auth_core_profile_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "serverpod_auth_core_profile"
    ADD CONSTRAINT "serverpod_auth_core_profile_fk_1"
    FOREIGN KEY("imageId")
    REFERENCES "serverpod_auth_core_profile_image"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
    DEFERRABLE INITIALLY DEFERRED;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_core_profile_image"
    ADD CONSTRAINT "serverpod_auth_core_profile_image_fk_0"
    FOREIGN KEY("userProfileId")
    REFERENCES "serverpod_auth_core_profile"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "serverpod_auth_core_session"
    ADD CONSTRAINT "serverpod_auth_core_session_fk_0"
    FOREIGN KEY("authUserId")
    REFERENCES "serverpod_auth_core_user"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR serverpod_lens
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_lens', '20261015054218409-campus', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261015054218409-campus', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20260824182259319', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260824182259319', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_idp
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_idp', '20260924105404509', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260924105404509', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth_core
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth_core', '20260924105232991', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260924105232991', "timestamp" = now();


COMMIT;
