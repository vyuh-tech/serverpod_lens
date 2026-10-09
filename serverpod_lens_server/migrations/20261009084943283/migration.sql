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
CREATE TABLE "elog_activities" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "activityType" text NOT NULL,
    "cleaningTypeId" uuid,
    "policyDomain" text NOT NULL,
    "resourceType" text NOT NULL,
    "resourceId" uuid,
    "operatingAreaId" uuid,
    "assignedToUserId" uuid,
    "assignedToGroupId" uuid,
    "assignedBy" uuid,
    "assignedAt" timestamp without time zone,
    "startedBy" uuid,
    "submittedBy" uuid,
    "completedBy" uuid,
    "resourceUsageId" uuid,
    "witnessId" uuid,
    "operatorSignature" text,
    "witnessSignature" text,
    "cancellationReason" text,
    "origin" text NOT NULL,
    "problemId" uuid,
    "scheduleRef" text,
    "pausedByProblemId" uuid,
    "scheduledAt" timestamp without time zone,
    "dueAt" timestamp without time zone,
    "startedAt" timestamp without time zone,
    "submittedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "activityConfigSnapshot" text NOT NULL,
    "metadata" text NOT NULL,
    "status" text NOT NULL,
    "priority" text NOT NULL,
    "workflowInstanceId" uuid,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "versionNumber" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_activity_artifacts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "activityId" uuid NOT NULL,
    "artifactType" text NOT NULL,
    "artifactTemplateId" uuid NOT NULL,
    "artifactUsageId" uuid NOT NULL,
    "status" text NOT NULL,
    "sortOrder" bigint NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_area_adjacency" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "areaId" uuid NOT NULL,
    "adjacentAreaId" uuid NOT NULL,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_area_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_area_equipment" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "areaId" uuid NOT NULL,
    "equipmentId" uuid NOT NULL,
    "isPrimary" boolean,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_area_user_groups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "areaId" uuid NOT NULL,
    "userGroupId" uuid NOT NULL,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_areas" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "parentAreaId" uuid,
    "capacity" bigint,
    "floorNumber" bigint,
    "roomNumber" text,
    "areaCategoryId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_batches" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "batchNumber" text NOT NULL,
    "productId" uuid NOT NULL,
    "batchSize" bigint NOT NULL,
    "batchSizeUnitId" uuid NOT NULL,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_business_associates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "associateType" json NOT NULL,
    "associateStatus" text NOT NULL,
    "contactPerson" text,
    "email" text,
    "phone" text,
    "address" text,
    "website" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_campaigns" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "productId" uuid NOT NULL,
    "batchLimit" bigint NOT NULL,
    "status" text NOT NULL,
    "startedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "notes" text,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "versionNumber" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_checklist_templates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "template" text,
    "printConfig" text NOT NULL,
    "checklistType" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_checklist_usage_instructions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "usageId" uuid NOT NULL,
    "instructionId" text NOT NULL,
    "sourceInstructionId" text,
    "occurrenceIndex" bigint,
    "occurrenceTotal" bigint,
    "availableAt" timestamp without time zone,
    "warningAt" timestamp without time zone,
    "dueAt" timestamp without time zone,
    "deviationReason" text,
    "setId" text NOT NULL,
    "instructionData" text NOT NULL,
    "setData" text,
    "response" text,
    "workflowInstanceId" uuid,
    "sequenceNumber" bigint NOT NULL,
    "status" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "claimedBy" uuid,
    "timerStartedAt" timestamp without time zone,
    "operatorSignature" text,
    "witnessSignature" text,
    "witnessUserId" uuid,
    "approvalSignatures" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_checklist_usage_sets" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "usageId" uuid NOT NULL,
    "setId" text NOT NULL,
    "setData" text NOT NULL,
    "governanceSnapshot" text,
    "status" text NOT NULL,
    "submittedAt" timestamp without time zone,
    "submittedBy" uuid,
    "completedAt" timestamp without time zone,
    "completedBy" uuid,
    "workflowInstanceId" uuid,
    "operatorSignature" text,
    "witnessSignature" text,
    "witnessUserId" uuid,
    "approvalSignatures" text NOT NULL,
    "rejectionReason" text,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_checklist_usages" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "checklistTemplateId" uuid NOT NULL,
    "checklistTemplateVersionNumber" bigint NOT NULL,
    "resourceType" text,
    "resourceId" uuid,
    "status" text NOT NULL,
    "totalInstructions" bigint,
    "completedInstructions" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_cleaning_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "category" text NOT NULL,
    "estimatedDurationMinutes" bigint,
    "holdTimeMinutes" bigint,
    "tierRank" bigint NOT NULL,
    "validityMinutes" bigint,
    "checklistTemplateId" uuid,
    "logTemplateId" uuid,
    "appliesToAreas" boolean,
    "appliesToEquipment" boolean,
    "instructions" text,
    "sopReference" text,
    "color" text,
    "icon" text,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_dashboard_configs" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "dashboardCategory" text NOT NULL,
    "config" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_equipment_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "type" text NOT NULL,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_equipment_parts" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "punchSetId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "partType" text NOT NULL,
    "serialNumber" text,
    "condition" text NOT NULL,
    "metadata" text NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_equipment_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "equipmentCategoryId" uuid,
    "config" text NOT NULL,
    "versionNumber" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_equipment_user_groups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "equipmentId" uuid NOT NULL,
    "userGroupId" uuid NOT NULL,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_equipments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "manufacturer" text,
    "modelNumber" text,
    "serialNumber" text,
    "purchaseDate" timestamp without time zone,
    "installationDate" timestamp without time zone,
    "warrantyExpiry" timestamp without time zone,
    "equipmentCategoryId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_event_reactor_state" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "pk" boolean NOT NULL,
    "lastProcessedEventNumber" text NOT NULL,
    "lastProcessedAt" timestamp without time zone,
    "totalEventsProcessed" text NOT NULL,
    "totalErrors" text NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "eventNumber" text NOT NULL,
    "streamType" text NOT NULL,
    "streamId" uuid NOT NULL,
    "eventType" text NOT NULL,
    "eventCategory" text NOT NULL,
    "eventAt" timestamp without time zone NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "performedBy" uuid,
    "correlationId" uuid,
    "causationId" uuid,
    "notes" text,
    "eventData" text NOT NULL,
    "metadata" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_external_integrations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "label" text NOT NULL,
    "description" text,
    "isActive" boolean NOT NULL,
    "configuration" text NOT NULL,
    "lastStatus" text,
    "lastHttpStatus" bigint,
    "lastError" text,
    "lastRequestPayload" text,
    "lastResponseBody" text,
    "lastAttemptedAt" timestamp without time zone,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_holiday_calendars" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "year" bigint,
    "country" text,
    "region" text,
    "timezone" text,
    "weekendDays" json,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_holiday_entries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "holidayCalendarId" uuid NOT NULL,
    "entryDate" timestamp without time zone NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "category" text,
    "isHalfDay" boolean,
    "halfDayPeriod" text,
    "isWorkingOverride" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_log_report_generations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "templateId" uuid NOT NULL,
    "templateName" text NOT NULL,
    "generatedBy" uuid NOT NULL,
    "generatedAt" timestamp without time zone NOT NULL,
    "reportFormat" text NOT NULL,
    "recordCount" bigint NOT NULL,
    "filters" text,
    "ipAddress" text,
    "userAgent" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_log_templates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "template" text,
    "logType" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_log_usages" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "logTemplateId" uuid NOT NULL,
    "title" text,
    "data" text NOT NULL,
    "status" text NOT NULL,
    "resourceType" text,
    "resourceId" uuid,
    "logTemplateVersionNumber" bigint,
    "lockedBy" uuid,
    "lockedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_notification_group_states" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "groupKey" text NOT NULL,
    "notificationId" uuid NOT NULL,
    "latestOccurrenceKey" text NOT NULL,
    "occurrenceCount" bigint NOT NULL,
    "firstOccurredAt" timestamp without time zone NOT NULL,
    "lastOccurredAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_notifications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "type" text NOT NULL,
    "title" text NOT NULL,
    "message" text,
    "resourceType" text,
    "resourceId" uuid,
    "workflowInstanceId" uuid,
    "workflowTaskId" uuid,
    "isRead" boolean,
    "readAt" timestamp without time zone,
    "groupKey" text,
    "latestOccurrenceKey" text,
    "occurrenceCount" bigint NOT NULL,
    "firstOccurredAt" timestamp without time zone,
    "lastOccurredAt" timestamp without time zone,
    "createdAt" timestamp without time zone,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_notifications_archive" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "companyId" uuid,
    "siteId" uuid,
    "type" text NOT NULL,
    "title" text NOT NULL,
    "message" text,
    "resourceType" text,
    "resourceId" uuid,
    "workflowInstanceId" uuid,
    "workflowTaskId" uuid,
    "isRead" boolean,
    "readAt" timestamp without time zone,
    "createdAt" timestamp without time zone,
    "metadata" text,
    "groupKey" text,
    "latestOccurrenceKey" text,
    "occurrenceCount" bigint NOT NULL,
    "firstOccurredAt" timestamp without time zone,
    "lastOccurredAt" timestamp without time zone,
    "archivedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_onboarding_status" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industry" text NOT NULL,
    "completedAt" timestamp without time zone NOT NULL,
    "completedBy" uuid,
    "provisioningSummary" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_operations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "displayOrder" bigint NOT NULL,
    "entityTypes" json
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_allocation_cursors" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "punchSetId" uuid NOT NULL,
    "lastOrdinal" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_allocation_lines" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "allocationId" uuid NOT NULL,
    "assemblyId" uuid NOT NULL,
    "ordinal" bigint NOT NULL,
    "status" text NOT NULL,
    "returnedOperationId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_allocations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "punchSetId" uuid NOT NULL,
    "requestedQuantity" bigint NOT NULL,
    "issuedTo" uuid,
    "issuedToGroupId" uuid,
    "equipmentId" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "policy" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_assemblies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "punchSetId" uuid NOT NULL,
    "ordinal" bigint NOT NULL,
    "label" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_assembly_members" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "assemblyId" uuid NOT NULL,
    "componentId" uuid NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_component_reservations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "componentId" uuid NOT NULL,
    "operationId" uuid NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_module_config" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "isActive" boolean NOT NULL,
    "temperatureUnit" text NOT NULL,
    "codeGenerationRule" text NOT NULL,
    "nextSequenceNumber" bigint NOT NULL,
    "codeCustomPattern" text,
    "codeSequenceIncrement" bigint NOT NULL,
    "tabletsBeforeInspectionMillions" text,
    "allowedEquipmentCategoryIds" json NOT NULL,
    "allowedAreaIds" json NOT NULL,
    "approverGroupIssuanceId" uuid,
    "approverGroupAcknowledgementId" uuid,
    "approverGroupCleaningReturnId" uuid,
    "approverGroupPolishingId" uuid,
    "approverGroupInspectionId" uuid,
    "approverGroupRejectionId" uuid,
    "approverGroupDefacingId" uuid,
    "lifecycleActionSubmissionRequirements" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_operations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "punchSetId" uuid NOT NULL,
    "triggerType" text NOT NULL,
    "triggerData" text NOT NULL,
    "sourceState" text NOT NULL,
    "behaviorConfig" text NOT NULL,
    "designSnapshot" text NOT NULL,
    "policy" text NOT NULL,
    "status" text NOT NULL,
    "signatureId" uuid,
    "witnessSignatureId" uuid,
    "submittedBy" uuid NOT NULL,
    "submittedAt" timestamp without time zone NOT NULL,
    "decidedBy" uuid,
    "decidedAt" timestamp without time zone,
    "workflowInstanceId" uuid,
    "companyId" uuid,
    "siteId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_pd_usage_ledger" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "operationId" uuid NOT NULL,
    "assemblyId" uuid NOT NULL,
    "componentId" uuid NOT NULL,
    "quantity" text NOT NULL,
    "unit" text NOT NULL,
    "attribution" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_area_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_areas" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "categoryCode" text NOT NULL,
    "description" text,
    "floorNumber" bigint,
    "roomNumber" bigint,
    "capacity" bigint,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_checklists" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "checklistType" text NOT NULL,
    "description" text,
    "template" text,
    "isDefaultEnabled" boolean NOT NULL,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_dashboards" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "roleCode" text NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "config" text NOT NULL,
    "isDefault" boolean NOT NULL,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_equipment" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "categoryCode" text NOT NULL,
    "manufacturer" text,
    "description" text,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_equipment_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "type" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_industries" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "iconName" text,
    "displayOrder" bigint NOT NULL,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_log_templates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "logType" text NOT NULL,
    "description" text,
    "template" text,
    "isDefaultEnabled" boolean NOT NULL,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_policies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "cleaningConfig" text,
    "calibrationConfig" text,
    "usageConfig" text,
    "maintenanceConfig" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_role_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "industryId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "level" bigint NOT NULL,
    "categoryCode" text NOT NULL,
    "description" text,
    "isDefaultEnabled" boolean NOT NULL,
    "displayOrder" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_preset_schedules" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "scheduleConfig" text NOT NULL,
    "effectiveFrom" timestamp without time zone,
    "effectiveUntil" timestamp without time zone,
    "toleranceMinutes" bigint,
    "escalationMinutes" bigint,
    "resourceType" text,
    "resourceIds" json,
    "isActive" boolean,
    "priority" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_problem_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "category" text NOT NULL,
    "subcategory" text,
    "defaultSeverity" text NOT NULL,
    "requiresImmediateAction" boolean NOT NULL,
    "detailsLogTemplateId" uuid,
    "appliesToAreas" boolean NOT NULL,
    "appliesToEquipment" boolean NOT NULL,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_problems" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "problemTypeId" uuid NOT NULL,
    "title" text NOT NULL,
    "description" text,
    "resourceType" text NOT NULL,
    "resourceId" uuid,
    "workflowStatus" text NOT NULL,
    "severity" text NOT NULL,
    "priority" text NOT NULL,
    "assignedToGroupId" uuid,
    "assignedTo" uuid,
    "resourceUsageId" uuid,
    "detailsLogUsageId" uuid,
    "activityId" uuid,
    "attachments" text,
    "linkedProblems" json,
    "createdResourceFlags" json,
    "handlingPolicySnapshot" text NOT NULL,
    "investigationRequired" boolean NOT NULL,
    "investigationCompletedAt" timestamp without time zone,
    "investigationCompletedBy" uuid,
    "reviewStatus" text NOT NULL,
    "reviewerGroupIds" json,
    "reviewWorkflowInstanceId" uuid,
    "remediationStatus" text NOT NULL,
    "remediationActivityIds" json,
    "remediationPlanSnapshot" text NOT NULL,
    "reportSignature" text,
    "resolutionSignature" text,
    "resolutionWitnessSignature" text,
    "resolutionWitnessUserId" uuid,
    "versionNumber" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_product_cleaning_requirements" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "fromProductId" uuid,
    "toProductId" uuid,
    "cleaningTypeId" uuid NOT NULL,
    "resourceType" text NOT NULL,
    "equipmentCategoryId" uuid,
    "priority" bigint,
    "notes" text,
    "regulatoryReference" text,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_products" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "brandName" text,
    "productType" text,
    "dosageForm" text,
    "hazardClassifications" json,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_punch_sets" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "manufacturer" text,
    "modelNumber" text,
    "serialNumber" text,
    "purchaseDate" timestamp without time zone,
    "installationDate" timestamp without time zone,
    "warrantyExpiry" timestamp without time zone,
    "productId" uuid,
    "supplierId" uuid,
    "manufacturingMonth" text,
    "drawingReference" text,
    "punchSpecification" text,
    "dieSpecification" text,
    "upperEmbossing" text,
    "lowerEmbossing" text,
    "tabletShape" text,
    "receivedOn" timestamp without time zone,
    "openingTabletsMillions" double precision,
    "lastIssuedStart" bigint,
    "lastIssuedEnd" bigint,
    "partsManifest" text,
    "registeredComponentCounts" text,
    "toolingTypeId" uuid,
    "inventoryMode" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_report_templates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "template" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_activity_daily_rollups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "resourceType" text NOT NULL,
    "resourceId" uuid NOT NULL,
    "activityType" text NOT NULL,
    "bucketDate" timestamp without time zone NOT NULL,
    "activityCount" text NOT NULL,
    "firstActivityAt" timestamp without time zone,
    "lastActivityAt" timestamp without time zone,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_flag_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "category" text NOT NULL,
    "icon" text,
    "color" text NOT NULL,
    "blocksUsage" boolean NOT NULL,
    "requiresClearance" boolean NOT NULL,
    "clearanceRoles" json,
    "autoClearAfterMinutes" bigint,
    "canBeCreatedByRoles" json,
    "clearanceLogTemplateId" uuid,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_flags" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "flagTypeId" uuid NOT NULL,
    "resourceType" text NOT NULL,
    "resourceId" uuid NOT NULL,
    "flagStatus" text NOT NULL,
    "problemId" uuid,
    "flaggedAt" timestamp without time zone NOT NULL,
    "flaggedBy" uuid NOT NULL,
    "reason" text,
    "clearanceRequestedAt" timestamp without time zone,
    "clearanceRequestedBy" uuid,
    "clearanceLogUsageId" uuid,
    "clearedAt" timestamp without time zone,
    "clearedBy" uuid,
    "clearanceNotes" text,
    "versionNumber" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_policies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "scopeLevel" text NOT NULL,
    "resourceType" text,
    "resourceCategoryId" uuid,
    "resourceId" uuid,
    "cleaningConfig" text,
    "calibrationConfig" text,
    "maintenanceConfig" text,
    "usageConfig" text,
    "problemConfig" text,
    "otherConfig" text,
    "inspectionConfig" text,
    "containmentConfig" text,
    "activityCompatibility" text,
    "priority" bigint,
    "isActive" boolean,
    "versionNumber" bigint,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_states" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "resourceType" text NOT NULL,
    "resourceId" uuid NOT NULL,
    "states" text NOT NULL,
    "totalUsageCount" bigint NOT NULL,
    "usagesSinceLastCleaning" bigint NOT NULL,
    "usagesSinceLastInspection" bigint NOT NULL,
    "usagesSinceLastMaintenance" bigint NOT NULL,
    "lastEventAt" timestamp without time zone,
    "isBlocked" boolean NOT NULL,
    "blockingReason" text,
    "versionNumber" bigint NOT NULL,
    "status" text NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_resource_usages" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "resourceType" text NOT NULL,
    "resourceId" uuid NOT NULL,
    "operatingAreaId" uuid,
    "startedBy" uuid NOT NULL,
    "stoppedBy" uuid,
    "status" text NOT NULL,
    "startedAt" timestamp without time zone NOT NULL,
    "stoppedAt" timestamp without time zone,
    "productId" uuid,
    "batchId" uuid,
    "batchDisposition" text,
    "campaignBatchNumber" bigint,
    "campaignBatchLimit" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_role_categories" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_role_dashboards" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "roleId" uuid NOT NULL,
    "dashboardId" uuid NOT NULL,
    "isDefault" boolean,
    "isActive" boolean,
    "displayOrder" bigint,
    "assignedAt" timestamp without time zone,
    "assignedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_role_permissions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "roleId" uuid NOT NULL,
    "entity" text NOT NULL,
    "action" text NOT NULL,
    "grantedAt" timestamp without time zone,
    "grantedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "roleCategoryId" uuid,
    "level" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_saved_views" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "entityType" text NOT NULL,
    "userId" uuid NOT NULL,
    "name" text NOT NULL,
    "filter" text NOT NULL,
    "sort" text NOT NULL,
    "layout" text NOT NULL,
    "isFavorite" boolean NOT NULL,
    "isDefault" boolean NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_tooling_product_qualifications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "toolingTypeId" uuid NOT NULL,
    "productId" uuid NOT NULL,
    "status" text NOT NULL,
    "effectiveFrom" timestamp without time zone NOT NULL,
    "effectiveUntil" timestamp without time zone,
    "qualificationReference" text,
    "qualifiedAt" timestamp without time zone NOT NULL,
    "qualifiedBy" uuid,
    "versionNumber" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_tooling_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "productId" uuid,
    "config" text NOT NULL,
    "versionNumber" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_unit_of_measures" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "symbol" text NOT NULL,
    "description" text,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "versionNumber" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_user_group_members" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "userGroupId" uuid NOT NULL,
    "isActive" boolean,
    "createdAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedAt" timestamp without time zone NOT NULL,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_user_groups" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "groupType" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_user_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "roleId" uuid NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_work_items" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "workflowInstanceId" uuid NOT NULL,
    "nodeId" text NOT NULL,
    "taskType" text NOT NULL,
    "title" text NOT NULL,
    "description" text,
    "status" text NOT NULL,
    "assignedUserIds" json NOT NULL,
    "assignedGroupIds" json NOT NULL,
    "assignedRoleIds" json NOT NULL,
    "signalName" text,
    "priority" text NOT NULL,
    "dueAt" timestamp without time zone,
    "input" text NOT NULL,
    "output" text NOT NULL,
    "metadata" text NOT NULL,
    "completedBy" uuid,
    "completedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "startedAt" timestamp without time zone,
    "createdBy" uuid,
    "startedBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_workflow_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "workflowInstanceId" uuid NOT NULL,
    "eventType" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "nodeId" text,
    "userTaskId" uuid,
    "tokenId" text,
    "userId" uuid,
    "data" text NOT NULL,
    "metadata" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_workflow_instances" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "workflowId" uuid NOT NULL,
    "workflowVersion" bigint NOT NULL,
    "status" text NOT NULL,
    "input" text NOT NULL,
    "output" text NOT NULL,
    "variables" text NOT NULL,
    "tokens" text NOT NULL,
    "runNumber" bigint NOT NULL,
    "parentInstanceId" uuid,
    "parentNodeId" text,
    "error" text,
    "correlationId" text,
    "metadata" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "startedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "createdBy" uuid,
    "startedBy" uuid,
    "completedBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "elog_workflows" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "version" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "template" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_e_signatures" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "entityType" text NOT NULL,
    "entityId" text,
    "operation" text NOT NULL,
    "role" text NOT NULL,
    "meaning" text NOT NULL,
    "authMethod" text NOT NULL,
    "remarks" text,
    "versionNumber" bigint,
    "workflowInstanceId" uuid,
    "createdBy" uuid NOT NULL,
    "updatedBy" uuid NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_entity_drafts_audit" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "draftId" uuid NOT NULL,
    "action" text NOT NULL,
    "draftVersion" bigint,
    "previousData" text,
    "newData" text,
    "reason" text,
    "performedAt" timestamp without time zone,
    "performedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_entity_drafts_versions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "draftId" uuid NOT NULL,
    "draftVersion" bigint NOT NULL,
    "entityData" text NOT NULL,
    "createdAt" timestamp without time zone,
    "createdBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_entity_lifecycle_configurations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "entityType" text NOT NULL,
    "registrationEsignRequired" boolean NOT NULL,
    "registrationRemarksRequired" boolean NOT NULL,
    "registrationApprovalsRequired" bigint NOT NULL,
    "modificationEsignRequired" boolean NOT NULL,
    "modificationRemarksRequired" boolean NOT NULL,
    "modificationApprovalsRequired" bigint NOT NULL,
    "statusChangeEsignRequired" boolean NOT NULL,
    "statusChangeRemarksRequired" boolean NOT NULL,
    "statusChangeApprovalsRequired" bigint NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid,
    "versionNumber" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_entity_workflow_instances" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "name" text NOT NULL,
    "operation" text NOT NULL,
    "entityType" text NOT NULL,
    "entityId" uuid,
    "state" text NOT NULL,
    "context" text NOT NULL,
    "startedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "cancelledAt" timestamp without time zone,
    "expiresAt" timestamp without time zone,
    "entityVersion" bigint NOT NULL,
    "submittedBy" uuid,
    "submittedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_entity_workflow_tasks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "idField" uuid NOT NULL,
    "name" text NOT NULL,
    "workflowInstanceId" uuid NOT NULL,
    "state" text NOT NULL,
    "context" text NOT NULL,
    "completedBy" uuid,
    "completedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_public" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "relationshipTable" text NOT NULL,
    "relationshipId" uuid,
    "subjectEntity" text NOT NULL,
    "subjectId" uuid NOT NULL,
    "objectEntity" text NOT NULL,
    "objectId" uuid NOT NULL,
    "action" text NOT NULL,
    "performedBy" uuid,
    "performedAt" timestamp without time zone NOT NULL,
    "companyId" uuid,
    "siteId" uuid,
    "beforeState" text,
    "afterState" text,
    "fieldChanges" text,
    "reason" text,
    "signatureId" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_workflow_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "workflowInstanceId" uuid NOT NULL,
    "eventType" text NOT NULL,
    "timestamp" timestamp without time zone NOT NULL,
    "nodeId" text,
    "userTaskId" uuid,
    "tokenId" text,
    "userId" uuid,
    "data" text NOT NULL,
    "metadata" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_workflow_instances" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "workflowId" uuid NOT NULL,
    "workflowVersion" bigint NOT NULL,
    "status" text NOT NULL,
    "input" text NOT NULL,
    "output" text NOT NULL,
    "variables" text NOT NULL,
    "tokens" text NOT NULL,
    "runNumber" bigint NOT NULL,
    "parentInstanceId" uuid,
    "parentNodeId" text,
    "error" text,
    "correlationId" text,
    "metadata" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "startedAt" timestamp without time zone,
    "completedAt" timestamp without time zone,
    "createdBy" uuid,
    "startedBy" uuid,
    "completedBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "public_workflow_user_tasks" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "workflowInstanceId" uuid NOT NULL,
    "nodeId" text NOT NULL,
    "taskType" text NOT NULL,
    "title" text NOT NULL,
    "description" text,
    "status" text NOT NULL,
    "assignedUserIds" json NOT NULL,
    "assignedGroupIds" json NOT NULL,
    "assignedRoleIds" json NOT NULL,
    "signalName" text,
    "priority" text NOT NULL,
    "dueAt" timestamp without time zone,
    "input" text NOT NULL,
    "output" text NOT NULL,
    "metadata" text NOT NULL,
    "completedBy" uuid,
    "completedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "startedAt" timestamp without time zone,
    "createdBy" uuid,
    "startedBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_account_unlock_requests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "requestedBy" text NOT NULL,
    "lockoutReason" text,
    "failedLoginAttempts" bigint,
    "status" text NOT NULL,
    "remarks" text,
    "decisionNote" text,
    "approvedBy" uuid,
    "approvedAt" timestamp without time zone,
    "rejectedBy" uuid,
    "rejectedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_ad_connections" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "companyId" uuid NOT NULL,
    "name" text NOT NULL,
    "host" text NOT NULL,
    "port" bigint NOT NULL,
    "useSsl" boolean NOT NULL,
    "baseDn" text NOT NULL,
    "bindDn" text NOT NULL,
    "bindPassword" text NOT NULL,
    "userSearchFilter" text,
    "usernameAttribute" text,
    "emailAttribute" text,
    "nameAttribute" text,
    "isActive" boolean NOT NULL,
    "lastTestAt" timestamp without time zone,
    "lastTestSuccess" boolean,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid,
    "versionNumber" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_companies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "parentCompanyId" uuid NOT NULL,
    "name" text NOT NULL,
    "subtitle" text,
    "code" text NOT NULL,
    "addressLine1" text,
    "addressLine2" text,
    "city" text,
    "state" text,
    "country" text,
    "postalCode" text,
    "phone" text,
    "email" text,
    "website" text,
    "logoUrl" text,
    "metadata" text,
    "legalName" text,
    "supportEmail" text,
    "plan" text NOT NULL,
    "language" text NOT NULL,
    "timeZone" text NOT NULL,
    "dateFormat" text NOT NULL,
    "timeFormat" text NOT NULL,
    "numberFormat" text NOT NULL,
    "firstDayOfWeek" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_company_site_assignments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "companyId" uuid NOT NULL,
    "siteId" uuid NOT NULL,
    "effectiveFrom" timestamp without time zone NOT NULL,
    "effectiveTo" timestamp without time zone,
    "metadata" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_dashboard_configs" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "config" text NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_department_types" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_departments" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "companyId" uuid NOT NULL,
    "departmentTypeId" uuid NOT NULL,
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_designations" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "companyId" uuid NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "code" text NOT NULL,
    "level" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_login_challenges" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "challengeToken" uuid NOT NULL,
    "userId" uuid NOT NULL,
    "resolvedEmail" text NOT NULL,
    "ipAddress" text,
    "userAgent" text,
    "createdAt" timestamp without time zone NOT NULL,
    "expiresAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_login_events" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "loggedInAt" timestamp without time zone NOT NULL,
    "ipAddress" text,
    "userAgent" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_notifications" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "type" text NOT NULL,
    "title" text NOT NULL,
    "message" text,
    "resourceType" text,
    "resourceId" uuid,
    "isRead" boolean NOT NULL,
    "readAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_password_reset_requests" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "requestedBy" text NOT NULL,
    "requestType" text NOT NULL,
    "status" text NOT NULL,
    "remarks" text,
    "decisionNote" text,
    "approvedBy" uuid,
    "approvedAt" timestamp without time zone,
    "rejectedBy" uuid,
    "rejectedAt" timestamp without time zone,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_product_settings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "productId" uuid NOT NULL,
    "displayName" text,
    "logoUrl" text,
    "supportEmail" text,
    "language" text,
    "timeZone" text,
    "dateFormat" text,
    "timeFormat" text,
    "numberFormat" text,
    "firstDayOfWeek" bigint,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_product_site_mappings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "productId" uuid NOT NULL,
    "siteId" uuid NOT NULL,
    "installedVersion" text,
    "installationDate" timestamp without time zone,
    "expiryDate" timestamp without time zone,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_products" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "code" text NOT NULL,
    "description" text,
    "version" text,
    "logoUrl" text,
    "isActive" boolean,
    "webhookUrl" text,
    "productUrl" text,
    "metadata" text,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_report_exports" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "title" text NOT NULL,
    "reportType" text NOT NULL,
    "generatedBy" uuid,
    "generatedByName" text NOT NULL,
    "generatedAt" timestamp without time zone NOT NULL,
    "recordCount" bigint NOT NULL,
    "filterSummary" text,
    "purpose" text,
    "regulatoryReference" text,
    "pageSize" text NOT NULL,
    "orientation" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_report_templates" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "template" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_role_dashboards" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "roleId" uuid NOT NULL,
    "dashboardId" uuid NOT NULL,
    "isDefault" boolean NOT NULL,
    "displayOrder" bigint NOT NULL,
    "isActive" boolean NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_role_permissions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "roleId" uuid NOT NULL,
    "entity" text NOT NULL,
    "action" text NOT NULL,
    "grantedAt" timestamp without time zone,
    "grantedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "code" text NOT NULL,
    "name" text NOT NULL,
    "description" text,
    "level" bigint NOT NULL,
    "hasGlobalProductAccess" boolean NOT NULL,
    "isActive" boolean NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL,
    "createdBy" uuid,
    "updatedBy" uuid
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_saved_views" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "entityType" text NOT NULL,
    "userId" uuid NOT NULL,
    "name" text NOT NULL,
    "filter" text NOT NULL,
    "sort" text NOT NULL,
    "layout" text NOT NULL,
    "isFavorite" boolean NOT NULL,
    "isDefault" boolean NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_security_policies" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "code" text NOT NULL,
    "description" text,
    "scopeLevel" text NOT NULL,
    "siteId" uuid,
    "inheritedFields" json NOT NULL,
    "minUserIdLength" bigint NOT NULL,
    "maxUserIdLength" bigint NOT NULL,
    "minPasswordLength" bigint NOT NULL,
    "maxPasswordLength" bigint NOT NULL,
    "passwordMaxAgeDays" bigint NOT NULL,
    "passwordMinAgeDays" bigint NOT NULL,
    "passwordHistoryCount" bigint NOT NULL,
    "passwordExpiryWarningDays" bigint NOT NULL,
    "passwordComplexity" text NOT NULL,
    "maxFailedLoginAttempts" bigint NOT NULL,
    "inactivityTimeoutEnabled" boolean NOT NULL,
    "inactivityTimeoutMinutes" bigint NOT NULL,
    "dormancyThresholdDays" bigint NOT NULL,
    "preventConcurrentLogin" text NOT NULL,
    "browserSessionPolicy" text NOT NULL,
    "companyId" uuid NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_sites" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "parentSiteId" uuid NOT NULL,
    "name" text NOT NULL,
    "code" text NOT NULL,
    "description" text,
    "addressLine1" text,
    "addressLine2" text,
    "city" text,
    "state" text,
    "country" text,
    "postalCode" text,
    "language" text,
    "timeZone" text,
    "dateFormat" text,
    "timeFormat" text,
    "numberFormat" text,
    "firstDayOfWeek" bigint,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_standard_reasons" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "name" text NOT NULL,
    "description" text,
    "code" text NOT NULL,
    "displayOrder" bigint
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_user_password_history" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "passwordHash" text NOT NULL,
    "changedAt" timestamp without time zone NOT NULL,
    "changedBy" uuid,
    "changeSource" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_user_preferences" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "productCode" text NOT NULL,
    "data" text NOT NULL,
    "createdAt" timestamp without time zone NOT NULL,
    "updatedAt" timestamp without time zone NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_user_product_site_mappings" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "productId" uuid NOT NULL,
    "siteId" uuid NOT NULL,
    "productRole" text,
    "metadata" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_user_roles" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "roleId" uuid NOT NULL,
    "isActive" boolean
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_user_sessions" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "userId" uuid NOT NULL,
    "sessionToken" uuid NOT NULL,
    "authSessionId" uuid,
    "deviceLabel" text,
    "userAgent" text,
    "ipAddress" text,
    "createdAt" timestamp without time zone NOT NULL,
    "lastActiveAt" timestamp without time zone NOT NULL,
    "inactivityTimeoutMinutes" bigint NOT NULL,
    "policySiteId" uuid,
    "inactivityEnabledAt" timestamp without time zone,
    "productCode" text,
    "browserId" text,
    "browserSessionPolicy" text NOT NULL,
    "deviceType" text,
    "revokedAt" timestamp without time zone,
    "revokeReason" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "sso_users" (
    "id" uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    "email" text NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    "name" text,
    "username" text NOT NULL,
    "companyId" uuid NOT NULL,
    "designationId" uuid NOT NULL,
    "departmentId" uuid NOT NULL,
    "isActive" boolean NOT NULL,
    "isSystemAccount" boolean NOT NULL,
    "phone" text,
    "avatarUrl" text,
    "avatarPath" text,
    "employeeId" text,
    "lastLoginAt" timestamp without time zone,
    "failedLoginAttempts" bigint,
    "lockedAt" timestamp without time zone,
    "requiresPasswordReset" boolean NOT NULL,
    "passwordExpiryAt" timestamp without time zone,
    "passwordChangedAt" timestamp without time zone,
    "dormancyDeactivatedAt" timestamp without time zone,
    "deactivationReason" text,
    "userSource" text NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone,
    "createdBy" uuid,
    "updatedBy" uuid
);

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
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_0"
    FOREIGN KEY("cleaningTypeId")
    REFERENCES "elog_cleaning_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_1"
    FOREIGN KEY("operatingAreaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_2"
    FOREIGN KEY("assignedToUserId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_3"
    FOREIGN KEY("assignedToGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_4"
    FOREIGN KEY("assignedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_5"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_6"
    FOREIGN KEY("submittedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_7"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_8"
    FOREIGN KEY("resourceUsageId")
    REFERENCES "elog_resource_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_9"
    FOREIGN KEY("witnessId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_10"
    FOREIGN KEY("problemId")
    REFERENCES "elog_problems"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_11"
    FOREIGN KEY("pausedByProblemId")
    REFERENCES "elog_problems"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_12"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activities"
    ADD CONSTRAINT "elog_activities_fk_13"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_activity_artifacts"
    ADD CONSTRAINT "elog_activity_artifacts_fk_0"
    FOREIGN KEY("activityId")
    REFERENCES "elog_activities"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activity_artifacts"
    ADD CONSTRAINT "elog_activity_artifacts_fk_1"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_activity_artifacts"
    ADD CONSTRAINT "elog_activity_artifacts_fk_2"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_area_adjacency"
    ADD CONSTRAINT "elog_area_adjacency_fk_0"
    FOREIGN KEY("areaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_area_adjacency"
    ADD CONSTRAINT "elog_area_adjacency_fk_1"
    FOREIGN KEY("adjacentAreaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_area_equipment"
    ADD CONSTRAINT "elog_area_equipment_fk_0"
    FOREIGN KEY("areaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_area_equipment"
    ADD CONSTRAINT "elog_area_equipment_fk_1"
    FOREIGN KEY("equipmentId")
    REFERENCES "elog_equipments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_area_user_groups"
    ADD CONSTRAINT "elog_area_user_groups_fk_0"
    FOREIGN KEY("areaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_area_user_groups"
    ADD CONSTRAINT "elog_area_user_groups_fk_1"
    FOREIGN KEY("userGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_areas"
    ADD CONSTRAINT "elog_areas_fk_0"
    FOREIGN KEY("parentAreaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_areas"
    ADD CONSTRAINT "elog_areas_fk_1"
    FOREIGN KEY("areaCategoryId")
    REFERENCES "elog_area_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_batches"
    ADD CONSTRAINT "elog_batches_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_batches"
    ADD CONSTRAINT "elog_batches_fk_1"
    FOREIGN KEY("batchSizeUnitId")
    REFERENCES "elog_unit_of_measures"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_campaigns"
    ADD CONSTRAINT "elog_campaigns_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_campaigns"
    ADD CONSTRAINT "elog_campaigns_fk_1"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_campaigns"
    ADD CONSTRAINT "elog_campaigns_fk_2"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_checklist_usage_instructions"
    ADD CONSTRAINT "elog_checklist_usage_instructions_fk_0"
    FOREIGN KEY("usageId")
    REFERENCES "elog_checklist_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_instructions"
    ADD CONSTRAINT "elog_checklist_usage_instructions_fk_1"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_instructions"
    ADD CONSTRAINT "elog_checklist_usage_instructions_fk_2"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_instructions"
    ADD CONSTRAINT "elog_checklist_usage_instructions_fk_3"
    FOREIGN KEY("claimedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_instructions"
    ADD CONSTRAINT "elog_checklist_usage_instructions_fk_4"
    FOREIGN KEY("witnessUserId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_0"
    FOREIGN KEY("usageId")
    REFERENCES "elog_checklist_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_1"
    FOREIGN KEY("submittedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_2"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_3"
    FOREIGN KEY("witnessUserId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_4"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_checklist_usage_sets"
    ADD CONSTRAINT "elog_checklist_usage_sets_fk_5"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_checklist_usages"
    ADD CONSTRAINT "elog_checklist_usages_fk_0"
    FOREIGN KEY("checklistTemplateId")
    REFERENCES "elog_checklist_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_cleaning_types"
    ADD CONSTRAINT "elog_cleaning_types_fk_0"
    FOREIGN KEY("checklistTemplateId")
    REFERENCES "elog_checklist_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_cleaning_types"
    ADD CONSTRAINT "elog_cleaning_types_fk_1"
    FOREIGN KEY("logTemplateId")
    REFERENCES "elog_log_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_equipment_parts"
    ADD CONSTRAINT "elog_equipment_parts_fk_0"
    FOREIGN KEY("punchSetId")
    REFERENCES "elog_punch_sets"("id")
    ON DELETE CASCADE
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_equipment_user_groups"
    ADD CONSTRAINT "elog_equipment_user_groups_fk_0"
    FOREIGN KEY("equipmentId")
    REFERENCES "elog_equipments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_equipment_user_groups"
    ADD CONSTRAINT "elog_equipment_user_groups_fk_1"
    FOREIGN KEY("userGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_equipments"
    ADD CONSTRAINT "elog_equipments_fk_0"
    FOREIGN KEY("equipmentCategoryId")
    REFERENCES "elog_equipment_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_events"
    ADD CONSTRAINT "elog_events_fk_0"
    FOREIGN KEY("performedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_holiday_entries"
    ADD CONSTRAINT "elog_holiday_entries_fk_0"
    FOREIGN KEY("holidayCalendarId")
    REFERENCES "elog_holiday_calendars"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_log_report_generations"
    ADD CONSTRAINT "elog_log_report_generations_fk_0"
    FOREIGN KEY("templateId")
    REFERENCES "elog_report_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_log_report_generations"
    ADD CONSTRAINT "elog_log_report_generations_fk_1"
    FOREIGN KEY("generatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_log_usages"
    ADD CONSTRAINT "elog_log_usages_fk_0"
    FOREIGN KEY("logTemplateId")
    REFERENCES "elog_log_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_log_usages"
    ADD CONSTRAINT "elog_log_usages_fk_1"
    FOREIGN KEY("lockedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_notification_group_states"
    ADD CONSTRAINT "elog_notification_group_states_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_notifications"
    ADD CONSTRAINT "elog_notifications_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_notifications"
    ADD CONSTRAINT "elog_notifications_fk_1"
    FOREIGN KEY("workflowInstanceId")
    REFERENCES "elog_workflow_instances"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_notifications"
    ADD CONSTRAINT "elog_notifications_fk_2"
    FOREIGN KEY("workflowTaskId")
    REFERENCES "elog_work_items"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_onboarding_status"
    ADD CONSTRAINT "elog_onboarding_status_fk_0"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_allocation_cursors"
    ADD CONSTRAINT "elog_pd_allocation_cursors_fk_0"
    FOREIGN KEY("punchSetId")
    REFERENCES "elog_punch_sets"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_allocation_lines"
    ADD CONSTRAINT "elog_pd_allocation_lines_fk_0"
    FOREIGN KEY("allocationId")
    REFERENCES "elog_pd_allocations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_allocation_lines"
    ADD CONSTRAINT "elog_pd_allocation_lines_fk_1"
    FOREIGN KEY("assemblyId")
    REFERENCES "elog_pd_assemblies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_allocation_lines"
    ADD CONSTRAINT "elog_pd_allocation_lines_fk_2"
    FOREIGN KEY("returnedOperationId")
    REFERENCES "elog_pd_operations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_allocations"
    ADD CONSTRAINT "elog_pd_allocations_fk_0"
    FOREIGN KEY("punchSetId")
    REFERENCES "elog_punch_sets"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_allocations"
    ADD CONSTRAINT "elog_pd_allocations_fk_1"
    FOREIGN KEY("issuedTo")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_allocations"
    ADD CONSTRAINT "elog_pd_allocations_fk_2"
    FOREIGN KEY("issuedToGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_allocations"
    ADD CONSTRAINT "elog_pd_allocations_fk_3"
    FOREIGN KEY("equipmentId")
    REFERENCES "elog_equipments"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_assemblies"
    ADD CONSTRAINT "elog_pd_assemblies_fk_0"
    FOREIGN KEY("punchSetId")
    REFERENCES "elog_punch_sets"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_assembly_members"
    ADD CONSTRAINT "elog_pd_assembly_members_fk_0"
    FOREIGN KEY("assemblyId")
    REFERENCES "elog_pd_assemblies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_assembly_members"
    ADD CONSTRAINT "elog_pd_assembly_members_fk_1"
    FOREIGN KEY("componentId")
    REFERENCES "elog_equipment_parts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_component_reservations"
    ADD CONSTRAINT "elog_pd_component_reservations_fk_0"
    FOREIGN KEY("componentId")
    REFERENCES "elog_equipment_parts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_component_reservations"
    ADD CONSTRAINT "elog_pd_component_reservations_fk_1"
    FOREIGN KEY("operationId")
    REFERENCES "elog_pd_operations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_operations"
    ADD CONSTRAINT "elog_pd_operations_fk_0"
    FOREIGN KEY("punchSetId")
    REFERENCES "elog_punch_sets"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_operations"
    ADD CONSTRAINT "elog_pd_operations_fk_1"
    FOREIGN KEY("signatureId")
    REFERENCES "public_e_signatures"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_operations"
    ADD CONSTRAINT "elog_pd_operations_fk_2"
    FOREIGN KEY("witnessSignatureId")
    REFERENCES "public_e_signatures"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_operations"
    ADD CONSTRAINT "elog_pd_operations_fk_3"
    FOREIGN KEY("submittedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_operations"
    ADD CONSTRAINT "elog_pd_operations_fk_4"
    FOREIGN KEY("decidedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_pd_usage_ledger"
    ADD CONSTRAINT "elog_pd_usage_ledger_fk_0"
    FOREIGN KEY("operationId")
    REFERENCES "elog_pd_operations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_usage_ledger"
    ADD CONSTRAINT "elog_pd_usage_ledger_fk_1"
    FOREIGN KEY("assemblyId")
    REFERENCES "elog_pd_assemblies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_pd_usage_ledger"
    ADD CONSTRAINT "elog_pd_usage_ledger_fk_2"
    FOREIGN KEY("componentId")
    REFERENCES "elog_equipment_parts"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_area_categories"
    ADD CONSTRAINT "elog_preset_area_categories_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_areas"
    ADD CONSTRAINT "elog_preset_areas_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_checklists"
    ADD CONSTRAINT "elog_preset_checklists_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_dashboards"
    ADD CONSTRAINT "elog_preset_dashboards_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_equipment"
    ADD CONSTRAINT "elog_preset_equipment_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_equipment_categories"
    ADD CONSTRAINT "elog_preset_equipment_categories_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_log_templates"
    ADD CONSTRAINT "elog_preset_log_templates_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_policies"
    ADD CONSTRAINT "elog_preset_policies_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_role_categories"
    ADD CONSTRAINT "elog_preset_role_categories_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_preset_roles"
    ADD CONSTRAINT "elog_preset_roles_fk_0"
    FOREIGN KEY("industryId")
    REFERENCES "elog_preset_industries"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_problem_types"
    ADD CONSTRAINT "elog_problem_types_fk_0"
    FOREIGN KEY("detailsLogTemplateId")
    REFERENCES "elog_log_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_0"
    FOREIGN KEY("problemTypeId")
    REFERENCES "elog_problem_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_1"
    FOREIGN KEY("assignedToGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_2"
    FOREIGN KEY("assignedTo")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_3"
    FOREIGN KEY("resourceUsageId")
    REFERENCES "elog_resource_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_4"
    FOREIGN KEY("detailsLogUsageId")
    REFERENCES "elog_log_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_5"
    FOREIGN KEY("activityId")
    REFERENCES "elog_activities"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_6"
    FOREIGN KEY("investigationCompletedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_7"
    FOREIGN KEY("reviewWorkflowInstanceId")
    REFERENCES "elog_workflow_instances"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_8"
    FOREIGN KEY("resolutionWitnessUserId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_9"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_problems"
    ADD CONSTRAINT "elog_problems_fk_10"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_product_cleaning_requirements"
    ADD CONSTRAINT "elog_product_cleaning_requirements_fk_0"
    FOREIGN KEY("fromProductId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_product_cleaning_requirements"
    ADD CONSTRAINT "elog_product_cleaning_requirements_fk_1"
    FOREIGN KEY("toProductId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_product_cleaning_requirements"
    ADD CONSTRAINT "elog_product_cleaning_requirements_fk_2"
    FOREIGN KEY("cleaningTypeId")
    REFERENCES "elog_cleaning_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_product_cleaning_requirements"
    ADD CONSTRAINT "elog_product_cleaning_requirements_fk_3"
    FOREIGN KEY("equipmentCategoryId")
    REFERENCES "elog_equipment_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_punch_sets"
    ADD CONSTRAINT "elog_punch_sets_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_punch_sets"
    ADD CONSTRAINT "elog_punch_sets_fk_1"
    FOREIGN KEY("supplierId")
    REFERENCES "elog_business_associates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_punch_sets"
    ADD CONSTRAINT "elog_punch_sets_fk_2"
    FOREIGN KEY("toolingTypeId")
    REFERENCES "elog_tooling_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_resource_flag_types"
    ADD CONSTRAINT "elog_resource_flag_types_fk_0"
    FOREIGN KEY("clearanceLogTemplateId")
    REFERENCES "elog_log_templates"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_0"
    FOREIGN KEY("flagTypeId")
    REFERENCES "elog_resource_flag_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_1"
    FOREIGN KEY("problemId")
    REFERENCES "elog_problems"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_2"
    FOREIGN KEY("flaggedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_3"
    FOREIGN KEY("clearanceRequestedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_4"
    FOREIGN KEY("clearanceLogUsageId")
    REFERENCES "elog_log_usages"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_5"
    FOREIGN KEY("clearedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_6"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_flags"
    ADD CONSTRAINT "elog_resource_flags_fk_7"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_resource_policies"
    ADD CONSTRAINT "elog_resource_policies_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_policies"
    ADD CONSTRAINT "elog_resource_policies_fk_1"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_resource_states"
    ADD CONSTRAINT "elog_resource_states_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_states"
    ADD CONSTRAINT "elog_resource_states_fk_1"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_resource_usages"
    ADD CONSTRAINT "elog_resource_usages_fk_0"
    FOREIGN KEY("operatingAreaId")
    REFERENCES "elog_areas"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_usages"
    ADD CONSTRAINT "elog_resource_usages_fk_1"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_usages"
    ADD CONSTRAINT "elog_resource_usages_fk_2"
    FOREIGN KEY("stoppedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_usages"
    ADD CONSTRAINT "elog_resource_usages_fk_3"
    FOREIGN KEY("productId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_resource_usages"
    ADD CONSTRAINT "elog_resource_usages_fk_4"
    FOREIGN KEY("batchId")
    REFERENCES "elog_batches"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_role_dashboards"
    ADD CONSTRAINT "elog_role_dashboards_fk_0"
    FOREIGN KEY("roleId")
    REFERENCES "elog_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_role_dashboards"
    ADD CONSTRAINT "elog_role_dashboards_fk_1"
    FOREIGN KEY("dashboardId")
    REFERENCES "elog_dashboard_configs"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_role_dashboards"
    ADD CONSTRAINT "elog_role_dashboards_fk_2"
    FOREIGN KEY("assignedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_role_permissions"
    ADD CONSTRAINT "elog_role_permissions_fk_0"
    FOREIGN KEY("roleId")
    REFERENCES "elog_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_role_permissions"
    ADD CONSTRAINT "elog_role_permissions_fk_1"
    FOREIGN KEY("grantedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_roles"
    ADD CONSTRAINT "elog_roles_fk_0"
    FOREIGN KEY("roleCategoryId")
    REFERENCES "elog_role_categories"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_saved_views"
    ADD CONSTRAINT "elog_saved_views_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_tooling_product_qualifications"
    ADD CONSTRAINT "elog_tooling_product_qualifications_fk_0"
    FOREIGN KEY("toolingTypeId")
    REFERENCES "elog_tooling_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_tooling_product_qualifications"
    ADD CONSTRAINT "elog_tooling_product_qualifications_fk_1"
    FOREIGN KEY("productId")
    REFERENCES "elog_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_tooling_product_qualifications"
    ADD CONSTRAINT "elog_tooling_product_qualifications_fk_2"
    FOREIGN KEY("qualifiedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_tooling_product_qualifications"
    ADD CONSTRAINT "elog_tooling_product_qualifications_fk_3"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_tooling_product_qualifications"
    ADD CONSTRAINT "elog_tooling_product_qualifications_fk_4"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_unit_of_measures"
    ADD CONSTRAINT "elog_unit_of_measures_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_unit_of_measures"
    ADD CONSTRAINT "elog_unit_of_measures_fk_1"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_user_group_members"
    ADD CONSTRAINT "elog_user_group_members_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_group_members"
    ADD CONSTRAINT "elog_user_group_members_fk_1"
    FOREIGN KEY("userGroupId")
    REFERENCES "elog_user_groups"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_group_members"
    ADD CONSTRAINT "elog_user_group_members_fk_2"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_group_members"
    ADD CONSTRAINT "elog_user_group_members_fk_3"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_user_roles"
    ADD CONSTRAINT "elog_user_roles_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_roles"
    ADD CONSTRAINT "elog_user_roles_fk_1"
    FOREIGN KEY("roleId")
    REFERENCES "elog_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_roles"
    ADD CONSTRAINT "elog_user_roles_fk_2"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_user_roles"
    ADD CONSTRAINT "elog_user_roles_fk_3"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_work_items"
    ADD CONSTRAINT "elog_work_items_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_work_items"
    ADD CONSTRAINT "elog_work_items_fk_1"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_work_items"
    ADD CONSTRAINT "elog_work_items_fk_2"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "elog_workflow_instances"
    ADD CONSTRAINT "elog_workflow_instances_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_workflow_instances"
    ADD CONSTRAINT "elog_workflow_instances_fk_1"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_workflow_instances"
    ADD CONSTRAINT "elog_workflow_instances_fk_2"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "elog_workflow_instances"
    ADD CONSTRAINT "elog_workflow_instances_fk_3"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_entity_drafts_audit"
    ADD CONSTRAINT "public_entity_drafts_audit_fk_0"
    FOREIGN KEY("performedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_entity_drafts_versions"
    ADD CONSTRAINT "public_entity_drafts_versions_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_entity_lifecycle_configurations"
    ADD CONSTRAINT "public_entity_lifecycle_configurations_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_entity_lifecycle_configurations"
    ADD CONSTRAINT "public_entity_lifecycle_configurations_fk_1"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_workflow_events"
    ADD CONSTRAINT "public_workflow_events_fk_0"
    FOREIGN KEY("workflowInstanceId")
    REFERENCES "public_workflow_instances"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_events"
    ADD CONSTRAINT "public_workflow_events_fk_1"
    FOREIGN KEY("userTaskId")
    REFERENCES "public_workflow_user_tasks"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_events"
    ADD CONSTRAINT "public_workflow_events_fk_2"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_0"
    FOREIGN KEY("workflowId")
    REFERENCES "public_public"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_1"
    FOREIGN KEY("parentInstanceId")
    REFERENCES "public_workflow_instances"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_2"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_3"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_4"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_instances"
    ADD CONSTRAINT "public_workflow_instances_fk_5"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "public_workflow_user_tasks"
    ADD CONSTRAINT "public_workflow_user_tasks_fk_0"
    FOREIGN KEY("workflowInstanceId")
    REFERENCES "public_workflow_instances"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_user_tasks"
    ADD CONSTRAINT "public_workflow_user_tasks_fk_1"
    FOREIGN KEY("completedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_user_tasks"
    ADD CONSTRAINT "public_workflow_user_tasks_fk_2"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_user_tasks"
    ADD CONSTRAINT "public_workflow_user_tasks_fk_3"
    FOREIGN KEY("startedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "public_workflow_user_tasks"
    ADD CONSTRAINT "public_workflow_user_tasks_fk_4"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_account_unlock_requests"
    ADD CONSTRAINT "sso_account_unlock_requests_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_account_unlock_requests"
    ADD CONSTRAINT "sso_account_unlock_requests_fk_1"
    FOREIGN KEY("approvedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_account_unlock_requests"
    ADD CONSTRAINT "sso_account_unlock_requests_fk_2"
    FOREIGN KEY("rejectedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_ad_connections"
    ADD CONSTRAINT "sso_ad_connections_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_companies"
    ADD CONSTRAINT "sso_companies_fk_0"
    FOREIGN KEY("parentCompanyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_company_site_assignments"
    ADD CONSTRAINT "sso_company_site_assignments_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_company_site_assignments"
    ADD CONSTRAINT "sso_company_site_assignments_fk_1"
    FOREIGN KEY("siteId")
    REFERENCES "sso_sites"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_dashboard_configs"
    ADD CONSTRAINT "sso_dashboard_configs_fk_0"
    FOREIGN KEY("createdBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_dashboard_configs"
    ADD CONSTRAINT "sso_dashboard_configs_fk_1"
    FOREIGN KEY("updatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_departments"
    ADD CONSTRAINT "sso_departments_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_departments"
    ADD CONSTRAINT "sso_departments_fk_1"
    FOREIGN KEY("departmentTypeId")
    REFERENCES "sso_department_types"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_designations"
    ADD CONSTRAINT "sso_designations_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_login_challenges"
    ADD CONSTRAINT "sso_login_challenges_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_login_events"
    ADD CONSTRAINT "sso_login_events_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_notifications"
    ADD CONSTRAINT "sso_notifications_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_password_reset_requests"
    ADD CONSTRAINT "sso_password_reset_requests_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_password_reset_requests"
    ADD CONSTRAINT "sso_password_reset_requests_fk_1"
    FOREIGN KEY("approvedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_password_reset_requests"
    ADD CONSTRAINT "sso_password_reset_requests_fk_2"
    FOREIGN KEY("rejectedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_product_settings"
    ADD CONSTRAINT "sso_product_settings_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "sso_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_product_site_mappings"
    ADD CONSTRAINT "sso_product_site_mappings_fk_0"
    FOREIGN KEY("productId")
    REFERENCES "sso_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_product_site_mappings"
    ADD CONSTRAINT "sso_product_site_mappings_fk_1"
    FOREIGN KEY("siteId")
    REFERENCES "sso_sites"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_report_exports"
    ADD CONSTRAINT "sso_report_exports_fk_0"
    FOREIGN KEY("generatedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_role_dashboards"
    ADD CONSTRAINT "sso_role_dashboards_fk_0"
    FOREIGN KEY("roleId")
    REFERENCES "sso_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_role_dashboards"
    ADD CONSTRAINT "sso_role_dashboards_fk_1"
    FOREIGN KEY("dashboardId")
    REFERENCES "sso_dashboard_configs"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_role_permissions"
    ADD CONSTRAINT "sso_role_permissions_fk_0"
    FOREIGN KEY("roleId")
    REFERENCES "sso_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_role_permissions"
    ADD CONSTRAINT "sso_role_permissions_fk_1"
    FOREIGN KEY("grantedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_saved_views"
    ADD CONSTRAINT "sso_saved_views_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_security_policies"
    ADD CONSTRAINT "sso_security_policies_fk_0"
    FOREIGN KEY("siteId")
    REFERENCES "sso_sites"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_security_policies"
    ADD CONSTRAINT "sso_security_policies_fk_1"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_sites"
    ADD CONSTRAINT "sso_sites_fk_0"
    FOREIGN KEY("parentSiteId")
    REFERENCES "sso_sites"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_user_password_history"
    ADD CONSTRAINT "sso_user_password_history_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_user_password_history"
    ADD CONSTRAINT "sso_user_password_history_fk_1"
    FOREIGN KEY("changedBy")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_user_preferences"
    ADD CONSTRAINT "sso_user_preferences_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_user_product_site_mappings"
    ADD CONSTRAINT "sso_user_product_site_mappings_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_user_product_site_mappings"
    ADD CONSTRAINT "sso_user_product_site_mappings_fk_1"
    FOREIGN KEY("productId")
    REFERENCES "sso_products"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_user_product_site_mappings"
    ADD CONSTRAINT "sso_user_product_site_mappings_fk_2"
    FOREIGN KEY("siteId")
    REFERENCES "sso_sites"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_user_roles"
    ADD CONSTRAINT "sso_user_roles_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_user_roles"
    ADD CONSTRAINT "sso_user_roles_fk_1"
    FOREIGN KEY("roleId")
    REFERENCES "sso_roles"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_user_sessions"
    ADD CONSTRAINT "sso_user_sessions_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "sso_users"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "sso_users"
    ADD CONSTRAINT "sso_users_fk_0"
    FOREIGN KEY("companyId")
    REFERENCES "sso_companies"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_users"
    ADD CONSTRAINT "sso_users_fk_1"
    FOREIGN KEY("designationId")
    REFERENCES "sso_designations"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "sso_users"
    ADD CONSTRAINT "sso_users_fk_2"
    FOREIGN KEY("departmentId")
    REFERENCES "sso_departments"("id")
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
    VALUES ('serverpod_lens', '20261009084943283', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20261009084943283', "timestamp" = now();

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
