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
import 'elog_schema/elog/elog_activities.dart' as _ishyozd5;
import 'elog_schema/elog/elog_activity_artifacts.dart' as _i6kgjla4;
import 'elog_schema/elog/elog_area_adjacency.dart' as _iz387z77;
import 'elog_schema/elog/elog_area_categories.dart' as _i9o3y69x;
import 'elog_schema/elog/elog_area_equipment.dart' as _isgi7gk9;
import 'elog_schema/elog/elog_area_user_groups.dart' as _iv2byy67;
import 'elog_schema/elog/elog_areas.dart' as _ilczj6al;
import 'elog_schema/elog/elog_batches.dart' as _ippbjru9;
import 'elog_schema/elog/elog_business_associates.dart' as _ie8nm0xf;
import 'elog_schema/elog/elog_campaigns.dart' as _iea2komd;
import 'elog_schema/elog/elog_checklist_templates.dart' as _i943t8qk;
import 'elog_schema/elog/elog_checklist_usage_instructions.dart' as _im2l27wp;
import 'elog_schema/elog/elog_checklist_usage_sets.dart' as _iyg55fu5;
import 'elog_schema/elog/elog_checklist_usages.dart' as _i2d67kfy;
import 'elog_schema/elog/elog_cleaning_types.dart' as _iaxzy4al;
import 'elog_schema/elog/elog_dashboard_configs.dart' as _ig1scdm6;
import 'elog_schema/elog/elog_equipment_categories.dart' as _i465o1vf;
import 'elog_schema/elog/elog_equipment_parts.dart' as _iy7mbkyp;
import 'elog_schema/elog/elog_equipment_types.dart' as _iizl2nep;
import 'elog_schema/elog/elog_equipment_user_groups.dart' as _ihodx11y;
import 'elog_schema/elog/elog_equipments.dart' as _ir29oi5q;
import 'elog_schema/elog/elog_event_reactor_state.dart' as _iksvpml2;
import 'elog_schema/elog/elog_events.dart' as _imjwa56c;
import 'elog_schema/elog/elog_external_integrations.dart' as _iei4fdsy;
import 'elog_schema/elog/elog_holiday_calendars.dart' as _iuxjq0du;
import 'elog_schema/elog/elog_holiday_entries.dart' as _ip7nvc9p;
import 'elog_schema/elog/elog_log_report_generations.dart' as _i4th50rj;
import 'elog_schema/elog/elog_log_templates.dart' as _iab28y1e;
import 'elog_schema/elog/elog_log_usages.dart' as _i05usxet;
import 'elog_schema/elog/elog_notification_group_states.dart' as _izf4mrur;
import 'elog_schema/elog/elog_notifications.dart' as _idk983fe;
import 'elog_schema/elog/elog_notifications_archive.dart' as _izmtc39o;
import 'elog_schema/elog/elog_onboarding_status.dart' as _i0ssuutp;
import 'elog_schema/elog/elog_operations.dart' as _i7g8bf6c;
import 'elog_schema/elog/elog_pd_allocation_cursors.dart' as _i8i2tmym;
import 'elog_schema/elog/elog_pd_allocation_lines.dart' as _iwsiolx8;
import 'elog_schema/elog/elog_pd_allocations.dart' as _ie75ho22;
import 'elog_schema/elog/elog_pd_assemblies.dart' as _i3lnfsnn;
import 'elog_schema/elog/elog_pd_assembly_members.dart' as _iccws1xa;
import 'elog_schema/elog/elog_pd_component_reservations.dart' as _ipr5ee30;
import 'elog_schema/elog/elog_pd_module_config.dart' as _i6kwotqx;
import 'elog_schema/elog/elog_pd_operations.dart' as _ip7k2fyr;
import 'elog_schema/elog/elog_pd_usage_ledger.dart' as _iwoewitv;
import 'elog_schema/elog/elog_preset_area_categories.dart' as _idcsbifx;
import 'elog_schema/elog/elog_preset_areas.dart' as _ien2z5wb;
import 'elog_schema/elog/elog_preset_checklists.dart' as _imeic21z;
import 'elog_schema/elog/elog_preset_dashboards.dart' as _i1i32x6j;
import 'elog_schema/elog/elog_preset_equipment.dart' as _igzp2y8c;
import 'elog_schema/elog/elog_preset_equipment_categories.dart' as _imoi4ypf;
import 'elog_schema/elog/elog_preset_industries.dart' as _io6t2sgk;
import 'elog_schema/elog/elog_preset_log_templates.dart' as _izdzedtk;
import 'elog_schema/elog/elog_preset_policies.dart' as _irzfy450;
import 'elog_schema/elog/elog_preset_role_categories.dart' as _iimbkgrt;
import 'elog_schema/elog/elog_preset_roles.dart' as _i1n67tzi;
import 'elog_schema/elog/elog_preset_schedules.dart' as _i01c1yxy;
import 'elog_schema/elog/elog_problem_types.dart' as _ib0e9qbb;
import 'elog_schema/elog/elog_problems.dart' as _i4hmoti8;
import 'elog_schema/elog/elog_product_cleaning_requirements.dart' as _iele6hju;
import 'elog_schema/elog/elog_products.dart' as _i0caxd73;
import 'elog_schema/elog/elog_punch_sets.dart' as _iq0nwjzy;
import 'elog_schema/elog/elog_report_templates.dart' as _iryvos7o;
import 'elog_schema/elog/elog_resource_activity_daily_rollups.dart'
    as _iqykw8hs;
import 'elog_schema/elog/elog_resource_flag_types.dart' as _ial2wvcr;
import 'elog_schema/elog/elog_resource_flags.dart' as _if40xrph;
import 'elog_schema/elog/elog_resource_policies.dart' as _il71c5vn;
import 'elog_schema/elog/elog_resource_states.dart' as _iw7vxuxk;
import 'elog_schema/elog/elog_resource_usages.dart' as _ijudmfzt;
import 'elog_schema/elog/elog_role_categories.dart' as _ik7tju34;
import 'elog_schema/elog/elog_role_dashboards.dart' as _is5x0ozk;
import 'elog_schema/elog/elog_role_permissions.dart' as _i8swalwe;
import 'elog_schema/elog/elog_roles.dart' as _i2dkzfxx;
import 'elog_schema/elog/elog_saved_views.dart' as _i91j1h6n;
import 'elog_schema/elog/elog_tooling_product_qualifications.dart' as _iyvpac9s;
import 'elog_schema/elog/elog_tooling_types.dart' as _i2a97saf;
import 'elog_schema/elog/elog_unit_of_measures.dart' as _ici4vys7;
import 'elog_schema/elog/elog_user_group_members.dart' as _iu9388z4;
import 'elog_schema/elog/elog_user_groups.dart' as _id7xfj5e;
import 'elog_schema/elog/elog_user_roles.dart' as _i2xv5f50;
import 'elog_schema/elog/elog_work_items.dart' as _iqfb1ejb;
import 'elog_schema/elog/elog_workflow_events.dart' as _i2qhvyny;
import 'elog_schema/elog/elog_workflow_instances.dart' as _ifguuifm;
import 'elog_schema/elog/elog_workflows.dart' as _ijr902rd;
import 'elog_schema/public/public_e_signatures.dart' as _iw9e7ahv;
import 'elog_schema/public/public_entity_drafts_audit.dart' as _iq44tjyb;
import 'elog_schema/public/public_entity_drafts_versions.dart' as _iqjzr2vi;
import 'elog_schema/public/public_entity_lifecycle_configurations.dart'
    as _i37bl2c2;
import 'elog_schema/public/public_entity_workflow_instances.dart' as _i7ltqb3m;
import 'elog_schema/public/public_entity_workflow_tasks.dart' as _iu718lvo;
import 'elog_schema/public/public_public.dart' as _i6x532bo;
import 'elog_schema/public/public_workflow_events.dart' as _ixdgb3pg;
import 'elog_schema/public/public_workflow_instances.dart' as _iku0se9c;
import 'elog_schema/public/public_workflow_user_tasks.dart' as _ixdjky6f;
import 'elog_schema/sso/sso_account_unlock_requests.dart' as _icl3enxx;
import 'elog_schema/sso/sso_ad_connections.dart' as _ikffiba3;
import 'elog_schema/sso/sso_companies.dart' as _ioy9xegh;
import 'elog_schema/sso/sso_company_site_assignments.dart' as _ih26k2g9;
import 'elog_schema/sso/sso_dashboard_configs.dart' as _i0v3k9y4;
import 'elog_schema/sso/sso_department_types.dart' as _iwzh4spq;
import 'elog_schema/sso/sso_departments.dart' as _isoagnd2;
import 'elog_schema/sso/sso_designations.dart' as _ivpbyrtu;
import 'elog_schema/sso/sso_login_challenges.dart' as _id58jpdy;
import 'elog_schema/sso/sso_login_events.dart' as _ivkuiv43;
import 'elog_schema/sso/sso_notifications.dart' as _iv9au2ux;
import 'elog_schema/sso/sso_password_reset_requests.dart' as _ism6jhlu;
import 'elog_schema/sso/sso_product_settings.dart' as _iqttiq1b;
import 'elog_schema/sso/sso_product_site_mappings.dart' as _ir4axp6j;
import 'elog_schema/sso/sso_products.dart' as _id96jnp7;
import 'elog_schema/sso/sso_report_exports.dart' as _iu1qu58n;
import 'elog_schema/sso/sso_report_templates.dart' as _ichwrbiz;
import 'elog_schema/sso/sso_role_dashboards.dart' as _ib0ko46b;
import 'elog_schema/sso/sso_role_permissions.dart' as _ifv6xkhy;
import 'elog_schema/sso/sso_roles.dart' as _i0gr1peg;
import 'elog_schema/sso/sso_saved_views.dart' as _if33sioe;
import 'elog_schema/sso/sso_security_policies.dart' as _ilqjh0sx;
import 'elog_schema/sso/sso_sites.dart' as _i4g0kvm8;
import 'elog_schema/sso/sso_standard_reasons.dart' as _iugbun52;
import 'elog_schema/sso/sso_user_password_history.dart' as _i2qrs2ax;
import 'elog_schema/sso/sso_user_preferences.dart' as _izdzo98l;
import 'elog_schema/sso/sso_user_product_site_mappings.dart' as _i7stpwby;
import 'elog_schema/sso/sso_user_roles.dart' as _iew7uxuv;
import 'elog_schema/sso/sso_user_sessions.dart' as _ir5ofehs;
import 'elog_schema/sso/sso_users.dart' as _i4fj2l14;
import 'schema/schema_column.dart' as _ip7yl2xa;
import 'schema/schema_enum.dart' as _irxuw07j;
import 'schema/schema_foreign_key.dart' as _iarzs90a;
import 'schema/schema_graph.dart' as _is38wmwx;
import 'schema/schema_index.dart' as _id0qwmzg;
import 'schema/schema_module.dart' as _iyw9pr81;
import 'schema/schema_table.dart' as _ixxyfkud;
export 'elog_schema/elog/elog_activities.dart';
export 'elog_schema/elog/elog_activity_artifacts.dart';
export 'elog_schema/elog/elog_area_adjacency.dart';
export 'elog_schema/elog/elog_area_categories.dart';
export 'elog_schema/elog/elog_area_equipment.dart';
export 'elog_schema/elog/elog_area_user_groups.dart';
export 'elog_schema/elog/elog_areas.dart';
export 'elog_schema/elog/elog_batches.dart';
export 'elog_schema/elog/elog_business_associates.dart';
export 'elog_schema/elog/elog_campaigns.dart';
export 'elog_schema/elog/elog_checklist_templates.dart';
export 'elog_schema/elog/elog_checklist_usage_instructions.dart';
export 'elog_schema/elog/elog_checklist_usage_sets.dart';
export 'elog_schema/elog/elog_checklist_usages.dart';
export 'elog_schema/elog/elog_cleaning_types.dart';
export 'elog_schema/elog/elog_dashboard_configs.dart';
export 'elog_schema/elog/elog_equipment_categories.dart';
export 'elog_schema/elog/elog_equipment_parts.dart';
export 'elog_schema/elog/elog_equipment_types.dart';
export 'elog_schema/elog/elog_equipment_user_groups.dart';
export 'elog_schema/elog/elog_equipments.dart';
export 'elog_schema/elog/elog_event_reactor_state.dart';
export 'elog_schema/elog/elog_events.dart';
export 'elog_schema/elog/elog_external_integrations.dart';
export 'elog_schema/elog/elog_holiday_calendars.dart';
export 'elog_schema/elog/elog_holiday_entries.dart';
export 'elog_schema/elog/elog_log_report_generations.dart';
export 'elog_schema/elog/elog_log_templates.dart';
export 'elog_schema/elog/elog_log_usages.dart';
export 'elog_schema/elog/elog_notification_group_states.dart';
export 'elog_schema/elog/elog_notifications.dart';
export 'elog_schema/elog/elog_notifications_archive.dart';
export 'elog_schema/elog/elog_onboarding_status.dart';
export 'elog_schema/elog/elog_operations.dart';
export 'elog_schema/elog/elog_pd_allocation_cursors.dart';
export 'elog_schema/elog/elog_pd_allocation_lines.dart';
export 'elog_schema/elog/elog_pd_allocations.dart';
export 'elog_schema/elog/elog_pd_assemblies.dart';
export 'elog_schema/elog/elog_pd_assembly_members.dart';
export 'elog_schema/elog/elog_pd_component_reservations.dart';
export 'elog_schema/elog/elog_pd_module_config.dart';
export 'elog_schema/elog/elog_pd_operations.dart';
export 'elog_schema/elog/elog_pd_usage_ledger.dart';
export 'elog_schema/elog/elog_preset_area_categories.dart';
export 'elog_schema/elog/elog_preset_areas.dart';
export 'elog_schema/elog/elog_preset_checklists.dart';
export 'elog_schema/elog/elog_preset_dashboards.dart';
export 'elog_schema/elog/elog_preset_equipment.dart';
export 'elog_schema/elog/elog_preset_equipment_categories.dart';
export 'elog_schema/elog/elog_preset_industries.dart';
export 'elog_schema/elog/elog_preset_log_templates.dart';
export 'elog_schema/elog/elog_preset_policies.dart';
export 'elog_schema/elog/elog_preset_role_categories.dart';
export 'elog_schema/elog/elog_preset_roles.dart';
export 'elog_schema/elog/elog_preset_schedules.dart';
export 'elog_schema/elog/elog_problem_types.dart';
export 'elog_schema/elog/elog_problems.dart';
export 'elog_schema/elog/elog_product_cleaning_requirements.dart';
export 'elog_schema/elog/elog_products.dart';
export 'elog_schema/elog/elog_punch_sets.dart';
export 'elog_schema/elog/elog_report_templates.dart';
export 'elog_schema/elog/elog_resource_activity_daily_rollups.dart';
export 'elog_schema/elog/elog_resource_flag_types.dart';
export 'elog_schema/elog/elog_resource_flags.dart';
export 'elog_schema/elog/elog_resource_policies.dart';
export 'elog_schema/elog/elog_resource_states.dart';
export 'elog_schema/elog/elog_resource_usages.dart';
export 'elog_schema/elog/elog_role_categories.dart';
export 'elog_schema/elog/elog_role_dashboards.dart';
export 'elog_schema/elog/elog_role_permissions.dart';
export 'elog_schema/elog/elog_roles.dart';
export 'elog_schema/elog/elog_saved_views.dart';
export 'elog_schema/elog/elog_tooling_product_qualifications.dart';
export 'elog_schema/elog/elog_tooling_types.dart';
export 'elog_schema/elog/elog_unit_of_measures.dart';
export 'elog_schema/elog/elog_user_group_members.dart';
export 'elog_schema/elog/elog_user_groups.dart';
export 'elog_schema/elog/elog_user_roles.dart';
export 'elog_schema/elog/elog_work_items.dart';
export 'elog_schema/elog/elog_workflow_events.dart';
export 'elog_schema/elog/elog_workflow_instances.dart';
export 'elog_schema/elog/elog_workflows.dart';
export 'elog_schema/public/public_e_signatures.dart';
export 'elog_schema/public/public_entity_drafts_audit.dart';
export 'elog_schema/public/public_entity_drafts_versions.dart';
export 'elog_schema/public/public_entity_lifecycle_configurations.dart';
export 'elog_schema/public/public_entity_workflow_instances.dart';
export 'elog_schema/public/public_entity_workflow_tasks.dart';
export 'elog_schema/public/public_public.dart';
export 'elog_schema/public/public_workflow_events.dart';
export 'elog_schema/public/public_workflow_instances.dart';
export 'elog_schema/public/public_workflow_user_tasks.dart';
export 'elog_schema/sso/sso_account_unlock_requests.dart';
export 'elog_schema/sso/sso_ad_connections.dart';
export 'elog_schema/sso/sso_companies.dart';
export 'elog_schema/sso/sso_company_site_assignments.dart';
export 'elog_schema/sso/sso_dashboard_configs.dart';
export 'elog_schema/sso/sso_department_types.dart';
export 'elog_schema/sso/sso_departments.dart';
export 'elog_schema/sso/sso_designations.dart';
export 'elog_schema/sso/sso_login_challenges.dart';
export 'elog_schema/sso/sso_login_events.dart';
export 'elog_schema/sso/sso_notifications.dart';
export 'elog_schema/sso/sso_password_reset_requests.dart';
export 'elog_schema/sso/sso_product_settings.dart';
export 'elog_schema/sso/sso_product_site_mappings.dart';
export 'elog_schema/sso/sso_products.dart';
export 'elog_schema/sso/sso_report_exports.dart';
export 'elog_schema/sso/sso_report_templates.dart';
export 'elog_schema/sso/sso_role_dashboards.dart';
export 'elog_schema/sso/sso_role_permissions.dart';
export 'elog_schema/sso/sso_roles.dart';
export 'elog_schema/sso/sso_saved_views.dart';
export 'elog_schema/sso/sso_security_policies.dart';
export 'elog_schema/sso/sso_sites.dart';
export 'elog_schema/sso/sso_standard_reasons.dart';
export 'elog_schema/sso/sso_user_password_history.dart';
export 'elog_schema/sso/sso_user_preferences.dart';
export 'elog_schema/sso/sso_user_product_site_mappings.dart';
export 'elog_schema/sso/sso_user_roles.dart';
export 'elog_schema/sso/sso_user_sessions.dart';
export 'elog_schema/sso/sso_users.dart';
export 'schema/schema_column.dart';
export 'schema/schema_enum.dart';
export 'schema/schema_foreign_key.dart';
export 'schema/schema_graph.dart';
export 'schema/schema_index.dart';
export 'schema/schema_module.dart';
export 'schema/schema_table.dart';

class Protocol extends _is.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._().._registerHostProtocols();

  static List<_isp.TableDefinition> get targetTableDefinitions => [
    _isp.TableDefinition(
      name: 'elog_activities',
      dartName: 'ElogActivities',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'activityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'cleaningTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'policyDomain',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'operatingAreaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedToUserId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedToGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'submittedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceUsageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'operatorSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'cancellationReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'origin',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'problemId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'scheduleRef',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'pausedByProblemId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'scheduledAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'activityConfigSnapshot',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
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
          name: 'priority',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_0',
          columns: ['cleaningTypeId'],
          referenceTable: 'elog_cleaning_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_1',
          columns: ['operatingAreaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_2',
          columns: ['assignedToUserId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_3',
          columns: ['assignedToGroupId'],
          referenceTable: 'elog_user_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_4',
          columns: ['assignedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_5',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_6',
          columns: ['submittedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_7',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_8',
          columns: ['resourceUsageId'],
          referenceTable: 'elog_resource_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_9',
          columns: ['witnessId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_10',
          columns: ['problemId'],
          referenceTable: 'elog_problems',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_11',
          columns: ['pausedByProblemId'],
          referenceTable: 'elog_problems',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_12',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activities_fk_13',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_activity_artifacts',
      dartName: 'ElogActivityArtifacts',
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
          name: 'activityId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'artifactType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'artifactTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'artifactUsageId',
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
          name: 'sortOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activity_artifacts_fk_0',
          columns: ['activityId'],
          referenceTable: 'elog_activities',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activity_artifacts_fk_1',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_activity_artifacts_fk_2',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_area_adjacency',
      dartName: 'ElogAreaAdjacency',
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
          name: 'areaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'adjacentAreaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_adjacency_fk_0',
          columns: ['areaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_adjacency_fk_1',
          columns: ['adjacentAreaId'],
          referenceTable: 'elog_areas',
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
      name: 'elog_area_categories',
      dartName: 'ElogAreaCategories',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_area_equipment',
      dartName: 'ElogAreaEquipment',
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
          name: 'areaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'equipmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isPrimary',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_equipment_fk_0',
          columns: ['areaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_equipment_fk_1',
          columns: ['equipmentId'],
          referenceTable: 'elog_equipments',
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
      name: 'elog_area_user_groups',
      dartName: 'ElogAreaUserGroups',
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
          name: 'areaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'userGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_user_groups_fk_0',
          columns: ['areaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_area_user_groups_fk_1',
          columns: ['userGroupId'],
          referenceTable: 'elog_user_groups',
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
      name: 'elog_areas',
      dartName: 'ElogAreas',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'parentAreaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'capacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'floorNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'roomNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'areaCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_areas_fk_0',
          columns: ['parentAreaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_areas_fk_1',
          columns: ['areaCategoryId'],
          referenceTable: 'elog_area_categories',
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
      name: 'elog_batches',
      dartName: 'ElogBatches',
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
          name: 'batchNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'batchSize',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'batchSizeUnitId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_batches_fk_0',
          columns: ['productId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_batches_fk_1',
          columns: ['batchSizeUnitId'],
          referenceTable: 'elog_unit_of_measures',
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
      name: 'elog_business_associates',
      dartName: 'ElogBusinessAssociates',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'associateType',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'associateStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'contactPerson',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
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
          name: 'address',
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
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_campaigns',
      dartName: 'ElogCampaigns',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'batchLimit',
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
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
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
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_campaigns_fk_0',
          columns: ['productId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_campaigns_fk_1',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_campaigns_fk_2',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_checklist_templates',
      dartName: 'ElogChecklistTemplates',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'printConfig',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'checklistType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_checklist_usage_instructions',
      dartName: 'ElogChecklistUsageInstructions',
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
          name: 'usageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'instructionId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sourceInstructionId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'occurrenceIndex',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'occurrenceTotal',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'availableAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'warningAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'deviationReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'setId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'instructionData',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'setData',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'response',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'sequenceNumber',
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
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'claimedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'timerStartedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'operatorSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessUserId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approvalSignatures',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_instructions_fk_0',
          columns: ['usageId'],
          referenceTable: 'elog_checklist_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_instructions_fk_1',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_instructions_fk_2',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_instructions_fk_3',
          columns: ['claimedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_instructions_fk_4',
          columns: ['witnessUserId'],
          referenceTable: 'sso_users',
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
      name: 'elog_checklist_usage_sets',
      dartName: 'ElogChecklistUsageSets',
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
          name: 'usageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'setId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'setData',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'governanceSnapshot',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
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
          name: 'submittedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'operatorSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessUserId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approvalSignatures',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'rejectionReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_0',
          columns: ['usageId'],
          referenceTable: 'elog_checklist_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_1',
          columns: ['submittedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_2',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_3',
          columns: ['witnessUserId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_4',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usage_sets_fk_5',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_checklist_usages',
      dartName: 'ElogChecklistUsages',
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
          name: 'checklistTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'checklistTemplateVersionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
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
          name: 'totalInstructions',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'completedInstructions',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_checklist_usages_fk_0',
          columns: ['checklistTemplateId'],
          referenceTable: 'elog_checklist_templates',
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
      name: 'elog_cleaning_types',
      dartName: 'ElogCleaningTypes',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'estimatedDurationMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'holdTimeMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'tierRank',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'validityMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'checklistTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'logTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'appliesToAreas',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'appliesToEquipment',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'instructions',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'sopReference',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'color',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'icon',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_cleaning_types_fk_0',
          columns: ['checklistTemplateId'],
          referenceTable: 'elog_checklist_templates',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_cleaning_types_fk_1',
          columns: ['logTemplateId'],
          referenceTable: 'elog_log_templates',
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
      name: 'elog_dashboard_configs',
      dartName: 'ElogDashboardConfigs',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'dashboardCategory',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'config',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_equipment_categories',
      dartName: 'ElogEquipmentCategories',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_equipment_parts',
      dartName: 'ElogEquipmentParts',
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
          name: 'punchSetId',
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
          name: 'partType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'serialNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'condition',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_equipment_parts_fk_0',
          columns: ['punchSetId'],
          referenceTable: 'elog_punch_sets',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.cascade,
          matchType: null,
        ),
      ],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_equipment_types',
      dartName: 'ElogEquipmentTypes',
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
          name: 'idField',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'equipmentCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'config',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_equipment_user_groups',
      dartName: 'ElogEquipmentUserGroups',
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
          name: 'equipmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'userGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_equipment_user_groups_fk_0',
          columns: ['equipmentId'],
          referenceTable: 'elog_equipments',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_equipment_user_groups_fk_1',
          columns: ['userGroupId'],
          referenceTable: 'elog_user_groups',
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
      name: 'elog_equipments',
      dartName: 'ElogEquipments',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'modelNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'serialNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'purchaseDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'installationDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'warrantyExpiry',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'equipmentCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_equipments_fk_0',
          columns: ['equipmentCategoryId'],
          referenceTable: 'elog_equipment_categories',
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
      name: 'elog_event_reactor_state',
      dartName: 'ElogEventReactorState',
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
          name: 'pk',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'lastProcessedEventNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'lastProcessedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'totalEventsProcessed',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'totalErrors',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_events',
      dartName: 'ElogEvents',
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
          name: 'idField',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'eventNumber',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'streamType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'streamId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'eventType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'eventCategory',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'eventAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'performedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'correlationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'causationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'eventData',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_events_fk_0',
          columns: ['performedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_external_integrations',
      dartName: 'ElogExternalIntegrations',
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
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'configuration',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'lastStatus',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lastHttpStatus',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'lastError',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lastRequestPayload',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lastResponseBody',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lastAttemptedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_holiday_calendars',
      dartName: 'ElogHolidayCalendars',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'year',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'country',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'region',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'timezone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'weekendDays',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<int>?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_holiday_entries',
      dartName: 'ElogHolidayEntries',
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
          name: 'holidayCalendarId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'entryDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isHalfDay',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'halfDayPeriod',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isWorkingOverride',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_holiday_entries_fk_0',
          columns: ['holidayCalendarId'],
          referenceTable: 'elog_holiday_calendars',
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
      name: 'elog_log_report_generations',
      dartName: 'ElogLogReportGenerations',
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
          name: 'templateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'templateName',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'generatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'generatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'reportFormat',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'recordCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'filters',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'ipAddress',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userAgent',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_log_report_generations_fk_0',
          columns: ['templateId'],
          referenceTable: 'elog_report_templates',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_log_report_generations_fk_1',
          columns: ['generatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_log_templates',
      dartName: 'ElogLogTemplates',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'logType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_log_usages',
      dartName: 'ElogLogUsages',
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
          name: 'logTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'title',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'data',
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
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'logTemplateVersionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'lockedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'lockedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_log_usages_fk_0',
          columns: ['logTemplateId'],
          referenceTable: 'elog_log_templates',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_log_usages_fk_1',
          columns: ['lockedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_notification_group_states',
      dartName: 'ElogNotificationGroupStates',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'groupKey',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'notificationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'latestOccurrenceKey',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'occurrenceCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'firstOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'lastOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_notification_group_states_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'elog_notifications',
      dartName: 'ElogNotifications',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'type',
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
          name: 'message',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowTaskId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isRead',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'readAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'groupKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'latestOccurrenceKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'occurrenceCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'firstOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'lastOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_notifications_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_notifications_fk_1',
          columns: ['workflowInstanceId'],
          referenceTable: 'elog_workflow_instances',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_notifications_fk_2',
          columns: ['workflowTaskId'],
          referenceTable: 'elog_work_items',
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
      name: 'elog_notifications_archive',
      dartName: 'ElogNotificationsArchive',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'type',
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
          name: 'message',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowTaskId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isRead',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'readAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'groupKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'latestOccurrenceKey',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'occurrenceCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'firstOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'lastOccurredAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'archivedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_onboarding_status',
      dartName: 'ElogOnboardingStatus',
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
          name: 'industry',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'provisioningSummary',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_onboarding_status_fk_0',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_operations',
      dartName: 'ElogOperations',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'entityTypes',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_pd_allocation_cursors',
      dartName: 'ElogPdAllocationCursors',
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
          name: 'punchSetId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'lastOrdinal',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocation_cursors_fk_0',
          columns: ['punchSetId'],
          referenceTable: 'elog_punch_sets',
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
      name: 'elog_pd_allocation_lines',
      dartName: 'ElogPdAllocationLines',
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
          name: 'assemblyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'ordinal',
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
          name: 'returnedOperationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocation_lines_fk_0',
          columns: ['allocationId'],
          referenceTable: 'elog_pd_allocations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocation_lines_fk_1',
          columns: ['assemblyId'],
          referenceTable: 'elog_pd_assemblies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocation_lines_fk_2',
          columns: ['returnedOperationId'],
          referenceTable: 'elog_pd_operations',
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
      name: 'elog_pd_allocations',
      dartName: 'ElogPdAllocations',
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
          name: 'punchSetId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedQuantity',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'issuedTo',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'issuedToGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'equipmentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'policy',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocations_fk_0',
          columns: ['punchSetId'],
          referenceTable: 'elog_punch_sets',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocations_fk_1',
          columns: ['issuedTo'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocations_fk_2',
          columns: ['issuedToGroupId'],
          referenceTable: 'elog_user_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_allocations_fk_3',
          columns: ['equipmentId'],
          referenceTable: 'elog_equipments',
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
      name: 'elog_pd_assemblies',
      dartName: 'ElogPdAssemblies',
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
          name: 'punchSetId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'ordinal',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'label',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_assemblies_fk_0',
          columns: ['punchSetId'],
          referenceTable: 'elog_punch_sets',
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
      name: 'elog_pd_assembly_members',
      dartName: 'ElogPdAssemblyMembers',
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
          name: 'assemblyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'componentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_assembly_members_fk_0',
          columns: ['assemblyId'],
          referenceTable: 'elog_pd_assemblies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_assembly_members_fk_1',
          columns: ['componentId'],
          referenceTable: 'elog_equipment_parts',
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
      name: 'elog_pd_component_reservations',
      dartName: 'ElogPdComponentReservations',
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
          name: 'componentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'operationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_component_reservations_fk_0',
          columns: ['componentId'],
          referenceTable: 'elog_equipment_parts',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_component_reservations_fk_1',
          columns: ['operationId'],
          referenceTable: 'elog_pd_operations',
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
      name: 'elog_pd_module_config',
      dartName: 'ElogPdModuleConfig',
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
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'temperatureUnit',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'codeGenerationRule',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'nextSequenceNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'codeCustomPattern',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'codeSequenceIncrement',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'tabletsBeforeInspectionMillions',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'allowedEquipmentCategoryIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'allowedAreaIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupIssuanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupAcknowledgementId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupCleaningReturnId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupPolishingId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupInspectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupRejectionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approverGroupDefacingId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'lifecycleActionSubmissionRequirements',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_pd_operations',
      dartName: 'ElogPdOperations',
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
          name: 'punchSetId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'triggerType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'triggerData',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sourceState',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'behaviorConfig',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'designSnapshot',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'policy',
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
          name: 'signatureId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'witnessSignatureId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'submittedBy',
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
          name: 'decidedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'decidedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_operations_fk_0',
          columns: ['punchSetId'],
          referenceTable: 'elog_punch_sets',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_operations_fk_1',
          columns: ['signatureId'],
          referenceTable: 'public_e_signatures',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_operations_fk_2',
          columns: ['witnessSignatureId'],
          referenceTable: 'public_e_signatures',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_operations_fk_3',
          columns: ['submittedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_operations_fk_4',
          columns: ['decidedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_pd_usage_ledger',
      dartName: 'ElogPdUsageLedger',
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
          name: 'operationId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'assemblyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'componentId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'quantity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'unit',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'attribution',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_usage_ledger_fk_0',
          columns: ['operationId'],
          referenceTable: 'elog_pd_operations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_usage_ledger_fk_1',
          columns: ['assemblyId'],
          referenceTable: 'elog_pd_assemblies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_pd_usage_ledger_fk_2',
          columns: ['componentId'],
          referenceTable: 'elog_equipment_parts',
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
      name: 'elog_preset_area_categories',
      dartName: 'ElogPresetAreaCategories',
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
          name: 'industryId',
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
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_area_categories_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_areas',
      dartName: 'ElogPresetAreas',
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
          name: 'industryId',
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
          name: 'categoryCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'floorNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'roomNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'capacity',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_areas_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_checklists',
      dartName: 'ElogPresetChecklists',
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
          name: 'industryId',
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
          name: 'checklistType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isDefaultEnabled',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_checklists_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_dashboards',
      dartName: 'ElogPresetDashboards',
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
          name: 'industryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roleCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
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
          name: 'config',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isDefault',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_dashboards_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_equipment',
      dartName: 'ElogPresetEquipment',
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
          name: 'industryId',
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
          name: 'categoryCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_equipment_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_equipment_categories',
      dartName: 'ElogPresetEquipmentCategories',
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
          name: 'industryId',
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
          name: 'type',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_equipment_categories_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_industries',
      dartName: 'ElogPresetIndustries',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'iconName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_preset_log_templates',
      dartName: 'ElogPresetLogTemplates',
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
          name: 'industryId',
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
          name: 'logType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isDefaultEnabled',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_log_templates_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_policies',
      dartName: 'ElogPresetPolicies',
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
          name: 'industryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'cleaningConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'calibrationConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'usageConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'maintenanceConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_policies_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_role_categories',
      dartName: 'ElogPresetRoleCategories',
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
          name: 'industryId',
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
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_role_categories_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_roles',
      dartName: 'ElogPresetRoles',
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
          name: 'industryId',
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
          name: 'level',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'categoryCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isDefaultEnabled',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_preset_roles_fk_0',
          columns: ['industryId'],
          referenceTable: 'elog_preset_industries',
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
      name: 'elog_preset_schedules',
      dartName: 'ElogPresetSchedules',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'scheduleConfig',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveFrom',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveUntil',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'toleranceMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'escalationMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceIds',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<UuidValue>?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_problem_types',
      dartName: 'ElogProblemTypes',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'subcategory',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'defaultSeverity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'requiresImmediateAction',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'detailsLogTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'appliesToAreas',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'appliesToEquipment',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problem_types_fk_0',
          columns: ['detailsLogTemplateId'],
          referenceTable: 'elog_log_templates',
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
      name: 'elog_problems',
      dartName: 'ElogProblems',
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
          name: 'problemTypeId',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'severity',
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
          name: 'assignedToGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedTo',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceUsageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'detailsLogUsageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'activityId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'attachments',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'linkedProblems',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<UuidValue>?',
        ),
        _isp.ColumnDefinition(
          name: 'createdResourceFlags',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<UuidValue>?',
        ),
        _isp.ColumnDefinition(
          name: 'handlingPolicySnapshot',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'investigationRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'investigationCompletedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'investigationCompletedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'reviewStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reviewerGroupIds',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<UuidValue>?',
        ),
        _isp.ColumnDefinition(
          name: 'reviewWorkflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'remediationStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'remediationActivityIds',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<UuidValue>?',
        ),
        _isp.ColumnDefinition(
          name: 'remediationPlanSnapshot',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'reportSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resolutionSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resolutionWitnessSignature',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resolutionWitnessUserId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_0',
          columns: ['problemTypeId'],
          referenceTable: 'elog_problem_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_1',
          columns: ['assignedToGroupId'],
          referenceTable: 'elog_user_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_2',
          columns: ['assignedTo'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_3',
          columns: ['resourceUsageId'],
          referenceTable: 'elog_resource_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_4',
          columns: ['detailsLogUsageId'],
          referenceTable: 'elog_log_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_5',
          columns: ['activityId'],
          referenceTable: 'elog_activities',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_6',
          columns: ['investigationCompletedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_7',
          columns: ['reviewWorkflowInstanceId'],
          referenceTable: 'elog_workflow_instances',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_8',
          columns: ['resolutionWitnessUserId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_9',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_problems_fk_10',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_product_cleaning_requirements',
      dartName: 'ElogProductCleaningRequirements',
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
          name: 'fromProductId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'toProductId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'cleaningTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'equipmentCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'notes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'regulatoryReference',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_product_cleaning_requirements_fk_0',
          columns: ['fromProductId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_product_cleaning_requirements_fk_1',
          columns: ['toProductId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_product_cleaning_requirements_fk_2',
          columns: ['cleaningTypeId'],
          referenceTable: 'elog_cleaning_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_product_cleaning_requirements_fk_3',
          columns: ['equipmentCategoryId'],
          referenceTable: 'elog_equipment_categories',
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
      name: 'elog_products',
      dartName: 'ElogProducts',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'brandName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'productType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'dosageForm',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'hazardClassifications',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_punch_sets',
      dartName: 'ElogPunchSets',
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
          name: 'idField',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturer',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'modelNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'serialNumber',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'purchaseDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'installationDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'warrantyExpiry',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'supplierId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'manufacturingMonth',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'drawingReference',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'punchSpecification',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'dieSpecification',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'upperEmbossing',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lowerEmbossing',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'tabletShape',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'receivedOn',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'openingTabletsMillions',
          columnType: _isp.ColumnType.doublePrecision,
          isNullable: true,
          dartType: 'double?',
        ),
        _isp.ColumnDefinition(
          name: 'lastIssuedStart',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'lastIssuedEnd',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'partsManifest',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'registeredComponentCounts',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'toolingTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'inventoryMode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_punch_sets_fk_0',
          columns: ['productId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_punch_sets_fk_1',
          columns: ['supplierId'],
          referenceTable: 'elog_business_associates',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_punch_sets_fk_2',
          columns: ['toolingTypeId'],
          referenceTable: 'elog_tooling_types',
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
      name: 'elog_report_templates',
      dartName: 'ElogReportTemplates',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_resource_activity_daily_rollups',
      dartName: 'ElogResourceActivityDailyRollups',
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
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'activityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'bucketDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'activityCount',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'BigInt',
        ),
        _isp.ColumnDefinition(
          name: 'firstActivityAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'lastActivityAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_resource_flag_types',
      dartName: 'ElogResourceFlagTypes',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'category',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'icon',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'color',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'blocksUsage',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'requiresClearance',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceRoles',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _isp.ColumnDefinition(
          name: 'autoClearAfterMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'canBeCreatedByRoles',
          columnType: _isp.ColumnType.json,
          isNullable: true,
          dartType: 'List<String>?',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceLogTemplateId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flag_types_fk_0',
          columns: ['clearanceLogTemplateId'],
          referenceTable: 'elog_log_templates',
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
      name: 'elog_resource_flags',
      dartName: 'ElogResourceFlags',
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
          name: 'flagTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'flagStatus',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'problemId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'flaggedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'flaggedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceRequestedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceRequestedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceLogUsageId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'clearedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'clearedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'clearanceNotes',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_0',
          columns: ['flagTypeId'],
          referenceTable: 'elog_resource_flag_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_1',
          columns: ['problemId'],
          referenceTable: 'elog_problems',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_2',
          columns: ['flaggedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_3',
          columns: ['clearanceRequestedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_4',
          columns: ['clearanceLogUsageId'],
          referenceTable: 'elog_log_usages',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_5',
          columns: ['clearedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_6',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_flags_fk_7',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_resource_policies',
      dartName: 'ElogResourcePolicies',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'scopeLevel',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'cleaningConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'calibrationConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'maintenanceConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'usageConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'problemConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'otherConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'inspectionConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'containmentConfig',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'activityCompatibility',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_policies_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_policies_fk_1',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_resource_states',
      dartName: 'ElogResourceStates',
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
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'states',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'totalUsageCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'usagesSinceLastCleaning',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'usagesSinceLastInspection',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'usagesSinceLastMaintenance',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'lastEventAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'isBlocked',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'blockingReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
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
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_states_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_states_fk_1',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_resource_usages',
      dartName: 'ElogResourceUsages',
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
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'operatingAreaId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'stoppedBy',
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
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'stoppedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'batchId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'batchDisposition',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'campaignBatchNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'campaignBatchLimit',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_usages_fk_0',
          columns: ['operatingAreaId'],
          referenceTable: 'elog_areas',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_usages_fk_1',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_usages_fk_2',
          columns: ['stoppedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_usages_fk_3',
          columns: ['productId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_resource_usages_fk_4',
          columns: ['batchId'],
          referenceTable: 'elog_batches',
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
      name: 'elog_role_categories',
      dartName: 'ElogRoleCategories',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_role_dashboards',
      dartName: 'ElogRoleDashboards',
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
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'dashboardId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isDefault',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'assignedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_role_dashboards_fk_0',
          columns: ['roleId'],
          referenceTable: 'elog_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_role_dashboards_fk_1',
          columns: ['dashboardId'],
          referenceTable: 'elog_dashboard_configs',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_role_dashboards_fk_2',
          columns: ['assignedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_role_permissions',
      dartName: 'ElogRolePermissions',
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
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'entity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'grantedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'grantedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_role_permissions_fk_0',
          columns: ['roleId'],
          referenceTable: 'elog_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_role_permissions_fk_1',
          columns: ['grantedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_roles',
      dartName: 'ElogRoles',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'roleCategoryId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'level',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_roles_fk_0',
          columns: ['roleCategoryId'],
          referenceTable: 'elog_role_categories',
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
      name: 'elog_saved_views',
      dartName: 'ElogSavedViews',
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
          name: 'entityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
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
          name: 'filter',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sort',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'layout',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isFavorite',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'isDefault',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_saved_views_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'elog_tooling_product_qualifications',
      dartName: 'ElogToolingProductQualifications',
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
          name: 'toolingTypeId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
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
          name: 'effectiveFrom',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveUntil',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'qualificationReference',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'qualifiedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'qualifiedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_tooling_product_qualifications_fk_0',
          columns: ['toolingTypeId'],
          referenceTable: 'elog_tooling_types',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_tooling_product_qualifications_fk_1',
          columns: ['productId'],
          referenceTable: 'elog_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_tooling_product_qualifications_fk_2',
          columns: ['qualifiedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_tooling_product_qualifications_fk_3',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_tooling_product_qualifications_fk_4',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_tooling_types',
      dartName: 'ElogToolingTypes',
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
          name: 'idField',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'config',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_unit_of_measures',
      dartName: 'ElogUnitOfMeasures',
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
          name: 'symbol',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_unit_of_measures_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_unit_of_measures_fk_1',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_user_group_members',
      dartName: 'ElogUserGroupMembers',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'userGroupId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_group_members_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_group_members_fk_1',
          columns: ['userGroupId'],
          referenceTable: 'elog_user_groups',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_group_members_fk_2',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_group_members_fk_3',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_user_groups',
      dartName: 'ElogUserGroups',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'groupType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_user_roles',
      dartName: 'ElogUserRoles',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_roles_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_roles_fk_1',
          columns: ['roleId'],
          referenceTable: 'elog_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_roles_fk_2',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_user_roles_fk_3',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_work_items',
      dartName: 'ElogWorkItems',
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
          name: 'idField',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'nodeId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'taskType',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'assignedUserIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'assignedGroupIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'assignedRoleIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'signalName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'input',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'output',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_work_items_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_work_items_fk_1',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_work_items_fk_2',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_workflow_events',
      dartName: 'ElogWorkflowEvents',
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
          name: 'idField',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'eventType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'timestamp',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'nodeId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userTaskId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'tokenId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'data',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'elog_workflow_instances',
      dartName: 'ElogWorkflowInstances',
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
          name: 'idField',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'workflowId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'workflowVersion',
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
          name: 'input',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'output',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'variables',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'tokens',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'runNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'parentInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'parentNodeId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'error',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'correlationId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_workflow_instances_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_workflow_instances_fk_1',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_workflow_instances_fk_2',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'elog_workflow_instances_fk_3',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'elog_workflows',
      dartName: 'ElogWorkflows',
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
          name: 'idField',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'version',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'public_e_signatures',
      dartName: 'PublicESignatures',
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
          name: 'entityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'entityId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'operation',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'role',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'meaning',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'authMethod',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'remarks',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'public_entity_drafts_audit',
      dartName: 'PublicEntityDraftsAudit',
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
          name: 'draftId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'draftVersion',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'previousData',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'newData',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'performedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'performedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_entity_drafts_audit_fk_0',
          columns: ['performedBy'],
          referenceTable: 'sso_users',
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
      name: 'public_entity_drafts_versions',
      dartName: 'PublicEntityDraftsVersions',
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
          name: 'draftId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'draftVersion',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'entityData',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_entity_drafts_versions_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
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
      name: 'public_entity_lifecycle_configurations',
      dartName: 'PublicEntityLifecycleConfigurations',
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
          name: 'entityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'registrationEsignRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'registrationRemarksRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'registrationApprovalsRequired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'modificationEsignRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'modificationRemarksRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'modificationApprovalsRequired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'statusChangeEsignRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'statusChangeRemarksRequired',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'statusChangeApprovalsRequired',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_entity_lifecycle_configurations_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_entity_lifecycle_configurations_fk_1',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'public_entity_workflow_instances',
      dartName: 'PublicEntityWorkflowInstances',
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
          name: 'idField',
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
          name: 'operation',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'entityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'entityId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'context',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'cancelledAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'expiresAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'entityVersion',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'submittedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'submittedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'public_entity_workflow_tasks',
      dartName: 'PublicEntityWorkflowTasks',
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
          name: 'idField',
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
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'context',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'public_public',
      dartName: 'PublicPublic',
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
          name: 'relationshipTable',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'relationshipId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'subjectEntity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'subjectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'objectEntity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'objectId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'performedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'performedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'beforeState',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'afterState',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'fieldChanges',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'reason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'signatureId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'public_workflow_events',
      dartName: 'PublicWorkflowEvents',
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
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'eventType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'timestamp',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'nodeId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userTaskId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'tokenId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'data',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_events_fk_0',
          columns: ['workflowInstanceId'],
          referenceTable: 'public_workflow_instances',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_events_fk_1',
          columns: ['userTaskId'],
          referenceTable: 'public_workflow_user_tasks',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_events_fk_2',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'public_workflow_instances',
      dartName: 'PublicWorkflowInstances',
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
          name: 'workflowId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'workflowVersion',
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
          name: 'input',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'output',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'variables',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'tokens',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'runNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'parentInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'parentNodeId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'error',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'correlationId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_0',
          columns: ['workflowId'],
          referenceTable: 'public_public',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_1',
          columns: ['parentInstanceId'],
          referenceTable: 'public_workflow_instances',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_2',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_3',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_4',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_instances_fk_5',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'public_workflow_user_tasks',
      dartName: 'PublicWorkflowUserTasks',
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
          name: 'workflowInstanceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'nodeId',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'taskType',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'assignedUserIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'assignedGroupIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'assignedRoleIds',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'signalName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'priority',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dueAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'input',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'output',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'completedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'completedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'startedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'startedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_user_tasks_fk_0',
          columns: ['workflowInstanceId'],
          referenceTable: 'public_workflow_instances',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_user_tasks_fk_1',
          columns: ['completedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_user_tasks_fk_2',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_user_tasks_fk_3',
          columns: ['startedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'public_workflow_user_tasks_fk_4',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_account_unlock_requests',
      dartName: 'SsoAccountUnlockRequests',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedBy',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'lockoutReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'failedLoginAttempts',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'status',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'remarks',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'decisionNote',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'approvedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approvedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'rejectedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'rejectedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_account_unlock_requests_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_account_unlock_requests_fk_1',
          columns: ['approvedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_account_unlock_requests_fk_2',
          columns: ['rejectedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_ad_connections',
      dartName: 'SsoAdConnections',
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
          name: 'companyId',
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
          name: 'host',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'port',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'useSsl',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'baseDn',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'bindDn',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'bindPassword',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'userSearchFilter',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'usernameAttribute',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'emailAttribute',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'nameAttribute',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'lastTestAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'lastTestSuccess',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'versionNumber',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_ad_connections_fk_0',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
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
      name: 'sso_companies',
      dartName: 'SsoCompanies',
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
          name: 'parentCompanyId',
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
          name: 'subtitle',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'addressLine1',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'addressLine2',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'city',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'country',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'postalCode',
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
          name: 'email',
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
          name: 'logoUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'legalName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supportEmail',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'plan',
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
          name: 'timeZone',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'dateFormat',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'timeFormat',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'numberFormat',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'firstDayOfWeek',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_companies_fk_0',
          columns: ['parentCompanyId'],
          referenceTable: 'sso_companies',
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
      name: 'sso_company_site_assignments',
      dartName: 'SsoCompanySiteAssignments',
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
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveFrom',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'effectiveTo',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_company_site_assignments_fk_0',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_company_site_assignments_fk_1',
          columns: ['siteId'],
          referenceTable: 'sso_sites',
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
      name: 'sso_dashboard_configs',
      dartName: 'SsoDashboardConfigs',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'config',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_dashboard_configs_fk_0',
          columns: ['createdBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_dashboard_configs_fk_1',
          columns: ['updatedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_department_types',
      dartName: 'SsoDepartmentTypes',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'sso_departments',
      dartName: 'SsoDepartments',
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
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'departmentTypeId',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_departments_fk_0',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_departments_fk_1',
          columns: ['departmentTypeId'],
          referenceTable: 'sso_department_types',
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
      name: 'sso_designations',
      dartName: 'SsoDesignations',
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
          name: 'companyId',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'code',
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
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_designations_fk_0',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
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
      name: 'sso_login_challenges',
      dartName: 'SsoLoginChallenges',
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
          name: 'challengeToken',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'resolvedEmail',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'ipAddress',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userAgent',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
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
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_login_challenges_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_login_events',
      dartName: 'SsoLoginEvents',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'loggedInAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'ipAddress',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userAgent',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_login_events_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_notifications',
      dartName: 'SsoNotifications',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'type',
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
          name: 'message',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'resourceId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'isRead',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'readAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_notifications_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_password_reset_requests',
      dartName: 'SsoPasswordResetRequests',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'requestedBy',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'requestType',
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
          name: 'remarks',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'decisionNote',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'approvedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'approvedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'rejectedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'rejectedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_password_reset_requests_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_password_reset_requests_fk_1',
          columns: ['approvedBy'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_password_reset_requests_fk_2',
          columns: ['rejectedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_product_settings',
      dartName: 'SsoProductSettings',
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
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'displayName',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'logoUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'supportEmail',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'language',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'timeZone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'dateFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'timeFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'numberFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'firstDayOfWeek',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_product_settings_fk_0',
          columns: ['productId'],
          referenceTable: 'sso_products',
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
      name: 'sso_product_site_mappings',
      dartName: 'SsoProductSiteMappings',
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
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'installedVersion',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'installationDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'expiryDate',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_product_site_mappings_fk_0',
          columns: ['productId'],
          referenceTable: 'sso_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_product_site_mappings_fk_1',
          columns: ['siteId'],
          referenceTable: 'sso_sites',
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
      name: 'sso_products',
      dartName: 'SsoProducts',
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
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'version',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'logoUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
        _isp.ColumnDefinition(
          name: 'webhookUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'productUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'sso_report_exports',
      dartName: 'SsoReportExports',
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
          name: 'reportType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'generatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'generatedByName',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'generatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'recordCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'filterSummary',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'purpose',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'regulatoryReference',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'pageSize',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'orientation',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_report_exports_fk_0',
          columns: ['generatedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_report_templates',
      dartName: 'SsoReportTemplates',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'template',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'sso_role_dashboards',
      dartName: 'SsoRoleDashboards',
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
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'dashboardId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isDefault',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_role_dashboards_fk_0',
          columns: ['roleId'],
          referenceTable: 'sso_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_role_dashboards_fk_1',
          columns: ['dashboardId'],
          referenceTable: 'sso_dashboard_configs',
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
      name: 'sso_role_permissions',
      dartName: 'SsoRolePermissions',
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
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'entity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'action',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'grantedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'grantedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_role_permissions_fk_0',
          columns: ['roleId'],
          referenceTable: 'sso_roles',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_role_permissions_fk_1',
          columns: ['grantedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_roles',
      dartName: 'SsoRoles',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'level',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'hasGlobalProductAccess',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'sso_saved_views',
      dartName: 'SsoSavedViews',
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
          name: 'entityType',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'userId',
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
          name: 'filter',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'sort',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'layout',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'isFavorite',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'isDefault',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_saved_views_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_security_policies',
      dartName: 'SsoSecurityPolicies',
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
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'scopeLevel',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'inheritedFields',
          columnType: _isp.ColumnType.json,
          isNullable: false,
          dartType: 'List<String>',
        ),
        _isp.ColumnDefinition(
          name: 'minUserIdLength',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'maxUserIdLength',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'minPasswordLength',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'maxPasswordLength',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'passwordMaxAgeDays',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'passwordMinAgeDays',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'passwordHistoryCount',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'passwordExpiryWarningDays',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'passwordComplexity',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'maxFailedLoginAttempts',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'inactivityTimeoutEnabled',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'inactivityTimeoutMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'dormancyThresholdDays',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'preventConcurrentLogin',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'browserSessionPolicy',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_security_policies_fk_0',
          columns: ['siteId'],
          referenceTable: 'sso_sites',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_security_policies_fk_1',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
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
      name: 'sso_sites',
      dartName: 'SsoSites',
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
          name: 'parentSiteId',
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
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'addressLine1',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'addressLine2',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'city',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'state',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'country',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'postalCode',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'language',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'timeZone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'dateFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'timeFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'numberFormat',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'firstDayOfWeek',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_sites_fk_0',
          columns: ['parentSiteId'],
          referenceTable: 'sso_sites',
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
      name: 'sso_standard_reasons',
      dartName: 'SsoStandardReasons',
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
          name: 'description',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'code',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'displayOrder',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
      ],
      foreignKeys: [],
      indexes: [],
      managed: true,
    ),
    _isp.TableDefinition(
      name: 'sso_user_password_history',
      dartName: 'SsoUserPasswordHistory',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'passwordHash',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'changedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'changedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'changeSource',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_password_history_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_password_history_fk_1',
          columns: ['changedBy'],
          referenceTable: 'sso_users',
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
      name: 'sso_user_preferences',
      dartName: 'SsoUserPreferences',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'productCode',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'data',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_preferences_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_user_product_site_mappings',
      dartName: 'SsoUserProductSiteMappings',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'productId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'siteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'productRole',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'metadata',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_product_site_mappings_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_product_site_mappings_fk_1',
          columns: ['productId'],
          referenceTable: 'sso_products',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_product_site_mappings_fk_2',
          columns: ['siteId'],
          referenceTable: 'sso_sites',
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
      name: 'sso_user_roles',
      dartName: 'SsoUserRoles',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'roleId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: true,
          dartType: 'bool?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_roles_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_roles_fk_1',
          columns: ['roleId'],
          referenceTable: 'sso_roles',
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
      name: 'sso_user_sessions',
      dartName: 'SsoUserSessions',
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
          name: 'userId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'sessionToken',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'authSessionId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'deviceLabel',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userAgent',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'ipAddress',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'lastActiveAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
        ),
        _isp.ColumnDefinition(
          name: 'inactivityTimeoutMinutes',
          columnType: _isp.ColumnType.bigint,
          isNullable: false,
          dartType: 'int',
        ),
        _isp.ColumnDefinition(
          name: 'policySiteId',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'inactivityEnabledAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'productCode',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'browserId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'browserSessionPolicy',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'deviceType',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'revokedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'revokeReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_user_sessions_fk_0',
          columns: ['userId'],
          referenceTable: 'sso_users',
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
      name: 'sso_users',
      dartName: 'SsoUsers',
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
          name: 'email',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'firstName',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'lastName',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'name',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'username',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'companyId',
          columnType: _isp.ColumnType.uuid,
          isNullable: false,
          dartType: 'UuidValue',
        ),
        _isp.ColumnDefinition(
          name: 'designationId',
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
          name: 'isActive',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'isSystemAccount',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'phone',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'avatarUrl',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'avatarPath',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'employeeId',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'lastLoginAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'failedLoginAttempts',
          columnType: _isp.ColumnType.bigint,
          isNullable: true,
          dartType: 'int?',
        ),
        _isp.ColumnDefinition(
          name: 'lockedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'requiresPasswordReset',
          columnType: _isp.ColumnType.boolean,
          isNullable: false,
          dartType: 'bool',
        ),
        _isp.ColumnDefinition(
          name: 'passwordExpiryAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'passwordChangedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'dormancyDeactivatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'deactivationReason',
          columnType: _isp.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _isp.ColumnDefinition(
          name: 'userSource',
          columnType: _isp.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _isp.ColumnDefinition(
          name: 'createdAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedAt',
          columnType: _isp.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
        _isp.ColumnDefinition(
          name: 'createdBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
        _isp.ColumnDefinition(
          name: 'updatedBy',
          columnType: _isp.ColumnType.uuid,
          isNullable: true,
          dartType: 'UuidValue?',
        ),
      ],
      foreignKeys: [
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_users_fk_0',
          columns: ['companyId'],
          referenceTable: 'sso_companies',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_users_fk_1',
          columns: ['designationId'],
          referenceTable: 'sso_designations',
          referenceTableSchema: 'public',
          referenceColumns: ['id'],
          onUpdate: _isp.ForeignKeyAction.noAction,
          onDelete: _isp.ForeignKeyAction.noAction,
          matchType: null,
        ),
        _isp.ForeignKeyDefinition(
          constraintName: 'sso_users_fk_2',
          columns: ['departmentId'],
          referenceTable: 'sso_departments',
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

    if (t == _ishyozd5.ElogActivities) {
      return _ishyozd5.ElogActivities.fromJson(data) as T;
    }
    if (t == _i6kgjla4.ElogActivityArtifacts) {
      return _i6kgjla4.ElogActivityArtifacts.fromJson(data) as T;
    }
    if (t == _iz387z77.ElogAreaAdjacency) {
      return _iz387z77.ElogAreaAdjacency.fromJson(data) as T;
    }
    if (t == _i9o3y69x.ElogAreaCategories) {
      return _i9o3y69x.ElogAreaCategories.fromJson(data) as T;
    }
    if (t == _isgi7gk9.ElogAreaEquipment) {
      return _isgi7gk9.ElogAreaEquipment.fromJson(data) as T;
    }
    if (t == _iv2byy67.ElogAreaUserGroups) {
      return _iv2byy67.ElogAreaUserGroups.fromJson(data) as T;
    }
    if (t == _ilczj6al.ElogAreas) {
      return _ilczj6al.ElogAreas.fromJson(data) as T;
    }
    if (t == _ippbjru9.ElogBatches) {
      return _ippbjru9.ElogBatches.fromJson(data) as T;
    }
    if (t == _ie8nm0xf.ElogBusinessAssociates) {
      return _ie8nm0xf.ElogBusinessAssociates.fromJson(data) as T;
    }
    if (t == _iea2komd.ElogCampaigns) {
      return _iea2komd.ElogCampaigns.fromJson(data) as T;
    }
    if (t == _i943t8qk.ElogChecklistTemplates) {
      return _i943t8qk.ElogChecklistTemplates.fromJson(data) as T;
    }
    if (t == _im2l27wp.ElogChecklistUsageInstructions) {
      return _im2l27wp.ElogChecklistUsageInstructions.fromJson(data) as T;
    }
    if (t == _iyg55fu5.ElogChecklistUsageSets) {
      return _iyg55fu5.ElogChecklistUsageSets.fromJson(data) as T;
    }
    if (t == _i2d67kfy.ElogChecklistUsages) {
      return _i2d67kfy.ElogChecklistUsages.fromJson(data) as T;
    }
    if (t == _iaxzy4al.ElogCleaningTypes) {
      return _iaxzy4al.ElogCleaningTypes.fromJson(data) as T;
    }
    if (t == _ig1scdm6.ElogDashboardConfigs) {
      return _ig1scdm6.ElogDashboardConfigs.fromJson(data) as T;
    }
    if (t == _i465o1vf.ElogEquipmentCategories) {
      return _i465o1vf.ElogEquipmentCategories.fromJson(data) as T;
    }
    if (t == _iy7mbkyp.ElogEquipmentParts) {
      return _iy7mbkyp.ElogEquipmentParts.fromJson(data) as T;
    }
    if (t == _iizl2nep.ElogEquipmentTypes) {
      return _iizl2nep.ElogEquipmentTypes.fromJson(data) as T;
    }
    if (t == _ihodx11y.ElogEquipmentUserGroups) {
      return _ihodx11y.ElogEquipmentUserGroups.fromJson(data) as T;
    }
    if (t == _ir29oi5q.ElogEquipments) {
      return _ir29oi5q.ElogEquipments.fromJson(data) as T;
    }
    if (t == _iksvpml2.ElogEventReactorState) {
      return _iksvpml2.ElogEventReactorState.fromJson(data) as T;
    }
    if (t == _imjwa56c.ElogEvents) {
      return _imjwa56c.ElogEvents.fromJson(data) as T;
    }
    if (t == _iei4fdsy.ElogExternalIntegrations) {
      return _iei4fdsy.ElogExternalIntegrations.fromJson(data) as T;
    }
    if (t == _iuxjq0du.ElogHolidayCalendars) {
      return _iuxjq0du.ElogHolidayCalendars.fromJson(data) as T;
    }
    if (t == _ip7nvc9p.ElogHolidayEntries) {
      return _ip7nvc9p.ElogHolidayEntries.fromJson(data) as T;
    }
    if (t == _i4th50rj.ElogLogReportGenerations) {
      return _i4th50rj.ElogLogReportGenerations.fromJson(data) as T;
    }
    if (t == _iab28y1e.ElogLogTemplates) {
      return _iab28y1e.ElogLogTemplates.fromJson(data) as T;
    }
    if (t == _i05usxet.ElogLogUsages) {
      return _i05usxet.ElogLogUsages.fromJson(data) as T;
    }
    if (t == _izf4mrur.ElogNotificationGroupStates) {
      return _izf4mrur.ElogNotificationGroupStates.fromJson(data) as T;
    }
    if (t == _idk983fe.ElogNotifications) {
      return _idk983fe.ElogNotifications.fromJson(data) as T;
    }
    if (t == _izmtc39o.ElogNotificationsArchive) {
      return _izmtc39o.ElogNotificationsArchive.fromJson(data) as T;
    }
    if (t == _i0ssuutp.ElogOnboardingStatus) {
      return _i0ssuutp.ElogOnboardingStatus.fromJson(data) as T;
    }
    if (t == _i7g8bf6c.ElogOperations) {
      return _i7g8bf6c.ElogOperations.fromJson(data) as T;
    }
    if (t == _i8i2tmym.ElogPdAllocationCursors) {
      return _i8i2tmym.ElogPdAllocationCursors.fromJson(data) as T;
    }
    if (t == _iwsiolx8.ElogPdAllocationLines) {
      return _iwsiolx8.ElogPdAllocationLines.fromJson(data) as T;
    }
    if (t == _ie75ho22.ElogPdAllocations) {
      return _ie75ho22.ElogPdAllocations.fromJson(data) as T;
    }
    if (t == _i3lnfsnn.ElogPdAssemblies) {
      return _i3lnfsnn.ElogPdAssemblies.fromJson(data) as T;
    }
    if (t == _iccws1xa.ElogPdAssemblyMembers) {
      return _iccws1xa.ElogPdAssemblyMembers.fromJson(data) as T;
    }
    if (t == _ipr5ee30.ElogPdComponentReservations) {
      return _ipr5ee30.ElogPdComponentReservations.fromJson(data) as T;
    }
    if (t == _i6kwotqx.ElogPdModuleConfig) {
      return _i6kwotqx.ElogPdModuleConfig.fromJson(data) as T;
    }
    if (t == _ip7k2fyr.ElogPdOperations) {
      return _ip7k2fyr.ElogPdOperations.fromJson(data) as T;
    }
    if (t == _iwoewitv.ElogPdUsageLedger) {
      return _iwoewitv.ElogPdUsageLedger.fromJson(data) as T;
    }
    if (t == _idcsbifx.ElogPresetAreaCategories) {
      return _idcsbifx.ElogPresetAreaCategories.fromJson(data) as T;
    }
    if (t == _ien2z5wb.ElogPresetAreas) {
      return _ien2z5wb.ElogPresetAreas.fromJson(data) as T;
    }
    if (t == _imeic21z.ElogPresetChecklists) {
      return _imeic21z.ElogPresetChecklists.fromJson(data) as T;
    }
    if (t == _i1i32x6j.ElogPresetDashboards) {
      return _i1i32x6j.ElogPresetDashboards.fromJson(data) as T;
    }
    if (t == _igzp2y8c.ElogPresetEquipment) {
      return _igzp2y8c.ElogPresetEquipment.fromJson(data) as T;
    }
    if (t == _imoi4ypf.ElogPresetEquipmentCategories) {
      return _imoi4ypf.ElogPresetEquipmentCategories.fromJson(data) as T;
    }
    if (t == _io6t2sgk.ElogPresetIndustries) {
      return _io6t2sgk.ElogPresetIndustries.fromJson(data) as T;
    }
    if (t == _izdzedtk.ElogPresetLogTemplates) {
      return _izdzedtk.ElogPresetLogTemplates.fromJson(data) as T;
    }
    if (t == _irzfy450.ElogPresetPolicies) {
      return _irzfy450.ElogPresetPolicies.fromJson(data) as T;
    }
    if (t == _iimbkgrt.ElogPresetRoleCategories) {
      return _iimbkgrt.ElogPresetRoleCategories.fromJson(data) as T;
    }
    if (t == _i1n67tzi.ElogPresetRoles) {
      return _i1n67tzi.ElogPresetRoles.fromJson(data) as T;
    }
    if (t == _i01c1yxy.ElogPresetSchedules) {
      return _i01c1yxy.ElogPresetSchedules.fromJson(data) as T;
    }
    if (t == _ib0e9qbb.ElogProblemTypes) {
      return _ib0e9qbb.ElogProblemTypes.fromJson(data) as T;
    }
    if (t == _i4hmoti8.ElogProblems) {
      return _i4hmoti8.ElogProblems.fromJson(data) as T;
    }
    if (t == _iele6hju.ElogProductCleaningRequirements) {
      return _iele6hju.ElogProductCleaningRequirements.fromJson(data) as T;
    }
    if (t == _i0caxd73.ElogProducts) {
      return _i0caxd73.ElogProducts.fromJson(data) as T;
    }
    if (t == _iq0nwjzy.ElogPunchSets) {
      return _iq0nwjzy.ElogPunchSets.fromJson(data) as T;
    }
    if (t == _iryvos7o.ElogReportTemplates) {
      return _iryvos7o.ElogReportTemplates.fromJson(data) as T;
    }
    if (t == _iqykw8hs.ElogResourceActivityDailyRollups) {
      return _iqykw8hs.ElogResourceActivityDailyRollups.fromJson(data) as T;
    }
    if (t == _ial2wvcr.ElogResourceFlagTypes) {
      return _ial2wvcr.ElogResourceFlagTypes.fromJson(data) as T;
    }
    if (t == _if40xrph.ElogResourceFlags) {
      return _if40xrph.ElogResourceFlags.fromJson(data) as T;
    }
    if (t == _il71c5vn.ElogResourcePolicies) {
      return _il71c5vn.ElogResourcePolicies.fromJson(data) as T;
    }
    if (t == _iw7vxuxk.ElogResourceStates) {
      return _iw7vxuxk.ElogResourceStates.fromJson(data) as T;
    }
    if (t == _ijudmfzt.ElogResourceUsages) {
      return _ijudmfzt.ElogResourceUsages.fromJson(data) as T;
    }
    if (t == _ik7tju34.ElogRoleCategories) {
      return _ik7tju34.ElogRoleCategories.fromJson(data) as T;
    }
    if (t == _is5x0ozk.ElogRoleDashboards) {
      return _is5x0ozk.ElogRoleDashboards.fromJson(data) as T;
    }
    if (t == _i8swalwe.ElogRolePermissions) {
      return _i8swalwe.ElogRolePermissions.fromJson(data) as T;
    }
    if (t == _i2dkzfxx.ElogRoles) {
      return _i2dkzfxx.ElogRoles.fromJson(data) as T;
    }
    if (t == _i91j1h6n.ElogSavedViews) {
      return _i91j1h6n.ElogSavedViews.fromJson(data) as T;
    }
    if (t == _iyvpac9s.ElogToolingProductQualifications) {
      return _iyvpac9s.ElogToolingProductQualifications.fromJson(data) as T;
    }
    if (t == _i2a97saf.ElogToolingTypes) {
      return _i2a97saf.ElogToolingTypes.fromJson(data) as T;
    }
    if (t == _ici4vys7.ElogUnitOfMeasures) {
      return _ici4vys7.ElogUnitOfMeasures.fromJson(data) as T;
    }
    if (t == _iu9388z4.ElogUserGroupMembers) {
      return _iu9388z4.ElogUserGroupMembers.fromJson(data) as T;
    }
    if (t == _id7xfj5e.ElogUserGroups) {
      return _id7xfj5e.ElogUserGroups.fromJson(data) as T;
    }
    if (t == _i2xv5f50.ElogUserRoles) {
      return _i2xv5f50.ElogUserRoles.fromJson(data) as T;
    }
    if (t == _iqfb1ejb.ElogWorkItems) {
      return _iqfb1ejb.ElogWorkItems.fromJson(data) as T;
    }
    if (t == _i2qhvyny.ElogWorkflowEvents) {
      return _i2qhvyny.ElogWorkflowEvents.fromJson(data) as T;
    }
    if (t == _ifguuifm.ElogWorkflowInstances) {
      return _ifguuifm.ElogWorkflowInstances.fromJson(data) as T;
    }
    if (t == _ijr902rd.ElogWorkflows) {
      return _ijr902rd.ElogWorkflows.fromJson(data) as T;
    }
    if (t == _iw9e7ahv.PublicESignatures) {
      return _iw9e7ahv.PublicESignatures.fromJson(data) as T;
    }
    if (t == _iq44tjyb.PublicEntityDraftsAudit) {
      return _iq44tjyb.PublicEntityDraftsAudit.fromJson(data) as T;
    }
    if (t == _iqjzr2vi.PublicEntityDraftsVersions) {
      return _iqjzr2vi.PublicEntityDraftsVersions.fromJson(data) as T;
    }
    if (t == _i37bl2c2.PublicEntityLifecycleConfigurations) {
      return _i37bl2c2.PublicEntityLifecycleConfigurations.fromJson(data) as T;
    }
    if (t == _i7ltqb3m.PublicEntityWorkflowInstances) {
      return _i7ltqb3m.PublicEntityWorkflowInstances.fromJson(data) as T;
    }
    if (t == _iu718lvo.PublicEntityWorkflowTasks) {
      return _iu718lvo.PublicEntityWorkflowTasks.fromJson(data) as T;
    }
    if (t == _i6x532bo.PublicPublic) {
      return _i6x532bo.PublicPublic.fromJson(data) as T;
    }
    if (t == _ixdgb3pg.PublicWorkflowEvents) {
      return _ixdgb3pg.PublicWorkflowEvents.fromJson(data) as T;
    }
    if (t == _iku0se9c.PublicWorkflowInstances) {
      return _iku0se9c.PublicWorkflowInstances.fromJson(data) as T;
    }
    if (t == _ixdjky6f.PublicWorkflowUserTasks) {
      return _ixdjky6f.PublicWorkflowUserTasks.fromJson(data) as T;
    }
    if (t == _icl3enxx.SsoAccountUnlockRequests) {
      return _icl3enxx.SsoAccountUnlockRequests.fromJson(data) as T;
    }
    if (t == _ikffiba3.SsoAdConnections) {
      return _ikffiba3.SsoAdConnections.fromJson(data) as T;
    }
    if (t == _ioy9xegh.SsoCompanies) {
      return _ioy9xegh.SsoCompanies.fromJson(data) as T;
    }
    if (t == _ih26k2g9.SsoCompanySiteAssignments) {
      return _ih26k2g9.SsoCompanySiteAssignments.fromJson(data) as T;
    }
    if (t == _i0v3k9y4.SsoDashboardConfigs) {
      return _i0v3k9y4.SsoDashboardConfigs.fromJson(data) as T;
    }
    if (t == _iwzh4spq.SsoDepartmentTypes) {
      return _iwzh4spq.SsoDepartmentTypes.fromJson(data) as T;
    }
    if (t == _isoagnd2.SsoDepartments) {
      return _isoagnd2.SsoDepartments.fromJson(data) as T;
    }
    if (t == _ivpbyrtu.SsoDesignations) {
      return _ivpbyrtu.SsoDesignations.fromJson(data) as T;
    }
    if (t == _id58jpdy.SsoLoginChallenges) {
      return _id58jpdy.SsoLoginChallenges.fromJson(data) as T;
    }
    if (t == _ivkuiv43.SsoLoginEvents) {
      return _ivkuiv43.SsoLoginEvents.fromJson(data) as T;
    }
    if (t == _iv9au2ux.SsoNotifications) {
      return _iv9au2ux.SsoNotifications.fromJson(data) as T;
    }
    if (t == _ism6jhlu.SsoPasswordResetRequests) {
      return _ism6jhlu.SsoPasswordResetRequests.fromJson(data) as T;
    }
    if (t == _iqttiq1b.SsoProductSettings) {
      return _iqttiq1b.SsoProductSettings.fromJson(data) as T;
    }
    if (t == _ir4axp6j.SsoProductSiteMappings) {
      return _ir4axp6j.SsoProductSiteMappings.fromJson(data) as T;
    }
    if (t == _id96jnp7.SsoProducts) {
      return _id96jnp7.SsoProducts.fromJson(data) as T;
    }
    if (t == _iu1qu58n.SsoReportExports) {
      return _iu1qu58n.SsoReportExports.fromJson(data) as T;
    }
    if (t == _ichwrbiz.SsoReportTemplates) {
      return _ichwrbiz.SsoReportTemplates.fromJson(data) as T;
    }
    if (t == _ib0ko46b.SsoRoleDashboards) {
      return _ib0ko46b.SsoRoleDashboards.fromJson(data) as T;
    }
    if (t == _ifv6xkhy.SsoRolePermissions) {
      return _ifv6xkhy.SsoRolePermissions.fromJson(data) as T;
    }
    if (t == _i0gr1peg.SsoRoles) {
      return _i0gr1peg.SsoRoles.fromJson(data) as T;
    }
    if (t == _if33sioe.SsoSavedViews) {
      return _if33sioe.SsoSavedViews.fromJson(data) as T;
    }
    if (t == _ilqjh0sx.SsoSecurityPolicies) {
      return _ilqjh0sx.SsoSecurityPolicies.fromJson(data) as T;
    }
    if (t == _i4g0kvm8.SsoSites) {
      return _i4g0kvm8.SsoSites.fromJson(data) as T;
    }
    if (t == _iugbun52.SsoStandardReasons) {
      return _iugbun52.SsoStandardReasons.fromJson(data) as T;
    }
    if (t == _i2qrs2ax.SsoUserPasswordHistory) {
      return _i2qrs2ax.SsoUserPasswordHistory.fromJson(data) as T;
    }
    if (t == _izdzo98l.SsoUserPreferences) {
      return _izdzo98l.SsoUserPreferences.fromJson(data) as T;
    }
    if (t == _i7stpwby.SsoUserProductSiteMappings) {
      return _i7stpwby.SsoUserProductSiteMappings.fromJson(data) as T;
    }
    if (t == _iew7uxuv.SsoUserRoles) {
      return _iew7uxuv.SsoUserRoles.fromJson(data) as T;
    }
    if (t == _ir5ofehs.SsoUserSessions) {
      return _ir5ofehs.SsoUserSessions.fromJson(data) as T;
    }
    if (t == _i4fj2l14.SsoUsers) {
      return _i4fj2l14.SsoUsers.fromJson(data) as T;
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
    if (t == _ixxyfkud.SchemaTable) {
      return _ixxyfkud.SchemaTable.fromJson(data) as T;
    }
    if (t == _is.getType<_ishyozd5.ElogActivities?>()) {
      return (data != null ? _ishyozd5.ElogActivities.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i6kgjla4.ElogActivityArtifacts?>()) {
      return (data != null
              ? _i6kgjla4.ElogActivityArtifacts.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iz387z77.ElogAreaAdjacency?>()) {
      return (data != null ? _iz387z77.ElogAreaAdjacency.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i9o3y69x.ElogAreaCategories?>()) {
      return (data != null ? _i9o3y69x.ElogAreaCategories.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_isgi7gk9.ElogAreaEquipment?>()) {
      return (data != null ? _isgi7gk9.ElogAreaEquipment.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iv2byy67.ElogAreaUserGroups?>()) {
      return (data != null ? _iv2byy67.ElogAreaUserGroups.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ilczj6al.ElogAreas?>()) {
      return (data != null ? _ilczj6al.ElogAreas.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ippbjru9.ElogBatches?>()) {
      return (data != null ? _ippbjru9.ElogBatches.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ie8nm0xf.ElogBusinessAssociates?>()) {
      return (data != null
              ? _ie8nm0xf.ElogBusinessAssociates.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iea2komd.ElogCampaigns?>()) {
      return (data != null ? _iea2komd.ElogCampaigns.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i943t8qk.ElogChecklistTemplates?>()) {
      return (data != null
              ? _i943t8qk.ElogChecklistTemplates.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_im2l27wp.ElogChecklistUsageInstructions?>()) {
      return (data != null
              ? _im2l27wp.ElogChecklistUsageInstructions.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iyg55fu5.ElogChecklistUsageSets?>()) {
      return (data != null
              ? _iyg55fu5.ElogChecklistUsageSets.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i2d67kfy.ElogChecklistUsages?>()) {
      return (data != null
              ? _i2d67kfy.ElogChecklistUsages.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iaxzy4al.ElogCleaningTypes?>()) {
      return (data != null ? _iaxzy4al.ElogCleaningTypes.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ig1scdm6.ElogDashboardConfigs?>()) {
      return (data != null
              ? _ig1scdm6.ElogDashboardConfigs.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i465o1vf.ElogEquipmentCategories?>()) {
      return (data != null
              ? _i465o1vf.ElogEquipmentCategories.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iy7mbkyp.ElogEquipmentParts?>()) {
      return (data != null ? _iy7mbkyp.ElogEquipmentParts.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iizl2nep.ElogEquipmentTypes?>()) {
      return (data != null ? _iizl2nep.ElogEquipmentTypes.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ihodx11y.ElogEquipmentUserGroups?>()) {
      return (data != null
              ? _ihodx11y.ElogEquipmentUserGroups.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ir29oi5q.ElogEquipments?>()) {
      return (data != null ? _ir29oi5q.ElogEquipments.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iksvpml2.ElogEventReactorState?>()) {
      return (data != null
              ? _iksvpml2.ElogEventReactorState.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_imjwa56c.ElogEvents?>()) {
      return (data != null ? _imjwa56c.ElogEvents.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iei4fdsy.ElogExternalIntegrations?>()) {
      return (data != null
              ? _iei4fdsy.ElogExternalIntegrations.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iuxjq0du.ElogHolidayCalendars?>()) {
      return (data != null
              ? _iuxjq0du.ElogHolidayCalendars.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ip7nvc9p.ElogHolidayEntries?>()) {
      return (data != null ? _ip7nvc9p.ElogHolidayEntries.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i4th50rj.ElogLogReportGenerations?>()) {
      return (data != null
              ? _i4th50rj.ElogLogReportGenerations.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iab28y1e.ElogLogTemplates?>()) {
      return (data != null ? _iab28y1e.ElogLogTemplates.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i05usxet.ElogLogUsages?>()) {
      return (data != null ? _i05usxet.ElogLogUsages.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_izf4mrur.ElogNotificationGroupStates?>()) {
      return (data != null
              ? _izf4mrur.ElogNotificationGroupStates.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_idk983fe.ElogNotifications?>()) {
      return (data != null ? _idk983fe.ElogNotifications.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_izmtc39o.ElogNotificationsArchive?>()) {
      return (data != null
              ? _izmtc39o.ElogNotificationsArchive.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i0ssuutp.ElogOnboardingStatus?>()) {
      return (data != null
              ? _i0ssuutp.ElogOnboardingStatus.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i7g8bf6c.ElogOperations?>()) {
      return (data != null ? _i7g8bf6c.ElogOperations.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i8i2tmym.ElogPdAllocationCursors?>()) {
      return (data != null
              ? _i8i2tmym.ElogPdAllocationCursors.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iwsiolx8.ElogPdAllocationLines?>()) {
      return (data != null
              ? _iwsiolx8.ElogPdAllocationLines.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ie75ho22.ElogPdAllocations?>()) {
      return (data != null ? _ie75ho22.ElogPdAllocations.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i3lnfsnn.ElogPdAssemblies?>()) {
      return (data != null ? _i3lnfsnn.ElogPdAssemblies.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iccws1xa.ElogPdAssemblyMembers?>()) {
      return (data != null
              ? _iccws1xa.ElogPdAssemblyMembers.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ipr5ee30.ElogPdComponentReservations?>()) {
      return (data != null
              ? _ipr5ee30.ElogPdComponentReservations.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6kwotqx.ElogPdModuleConfig?>()) {
      return (data != null ? _i6kwotqx.ElogPdModuleConfig.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ip7k2fyr.ElogPdOperations?>()) {
      return (data != null ? _ip7k2fyr.ElogPdOperations.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iwoewitv.ElogPdUsageLedger?>()) {
      return (data != null ? _iwoewitv.ElogPdUsageLedger.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_idcsbifx.ElogPresetAreaCategories?>()) {
      return (data != null
              ? _idcsbifx.ElogPresetAreaCategories.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ien2z5wb.ElogPresetAreas?>()) {
      return (data != null ? _ien2z5wb.ElogPresetAreas.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_imeic21z.ElogPresetChecklists?>()) {
      return (data != null
              ? _imeic21z.ElogPresetChecklists.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i1i32x6j.ElogPresetDashboards?>()) {
      return (data != null
              ? _i1i32x6j.ElogPresetDashboards.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_igzp2y8c.ElogPresetEquipment?>()) {
      return (data != null
              ? _igzp2y8c.ElogPresetEquipment.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_imoi4ypf.ElogPresetEquipmentCategories?>()) {
      return (data != null
              ? _imoi4ypf.ElogPresetEquipmentCategories.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_io6t2sgk.ElogPresetIndustries?>()) {
      return (data != null
              ? _io6t2sgk.ElogPresetIndustries.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_izdzedtk.ElogPresetLogTemplates?>()) {
      return (data != null
              ? _izdzedtk.ElogPresetLogTemplates.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_irzfy450.ElogPresetPolicies?>()) {
      return (data != null ? _irzfy450.ElogPresetPolicies.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iimbkgrt.ElogPresetRoleCategories?>()) {
      return (data != null
              ? _iimbkgrt.ElogPresetRoleCategories.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i1n67tzi.ElogPresetRoles?>()) {
      return (data != null ? _i1n67tzi.ElogPresetRoles.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i01c1yxy.ElogPresetSchedules?>()) {
      return (data != null
              ? _i01c1yxy.ElogPresetSchedules.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ib0e9qbb.ElogProblemTypes?>()) {
      return (data != null ? _ib0e9qbb.ElogProblemTypes.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i4hmoti8.ElogProblems?>()) {
      return (data != null ? _i4hmoti8.ElogProblems.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iele6hju.ElogProductCleaningRequirements?>()) {
      return (data != null
              ? _iele6hju.ElogProductCleaningRequirements.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i0caxd73.ElogProducts?>()) {
      return (data != null ? _i0caxd73.ElogProducts.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iq0nwjzy.ElogPunchSets?>()) {
      return (data != null ? _iq0nwjzy.ElogPunchSets.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iryvos7o.ElogReportTemplates?>()) {
      return (data != null
              ? _iryvos7o.ElogReportTemplates.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iqykw8hs.ElogResourceActivityDailyRollups?>()) {
      return (data != null
              ? _iqykw8hs.ElogResourceActivityDailyRollups.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ial2wvcr.ElogResourceFlagTypes?>()) {
      return (data != null
              ? _ial2wvcr.ElogResourceFlagTypes.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_if40xrph.ElogResourceFlags?>()) {
      return (data != null ? _if40xrph.ElogResourceFlags.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_il71c5vn.ElogResourcePolicies?>()) {
      return (data != null
              ? _il71c5vn.ElogResourcePolicies.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iw7vxuxk.ElogResourceStates?>()) {
      return (data != null ? _iw7vxuxk.ElogResourceStates.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ijudmfzt.ElogResourceUsages?>()) {
      return (data != null ? _ijudmfzt.ElogResourceUsages.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ik7tju34.ElogRoleCategories?>()) {
      return (data != null ? _ik7tju34.ElogRoleCategories.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_is5x0ozk.ElogRoleDashboards?>()) {
      return (data != null ? _is5x0ozk.ElogRoleDashboards.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i8swalwe.ElogRolePermissions?>()) {
      return (data != null
              ? _i8swalwe.ElogRolePermissions.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i2dkzfxx.ElogRoles?>()) {
      return (data != null ? _i2dkzfxx.ElogRoles.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_i91j1h6n.ElogSavedViews?>()) {
      return (data != null ? _i91j1h6n.ElogSavedViews.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iyvpac9s.ElogToolingProductQualifications?>()) {
      return (data != null
              ? _iyvpac9s.ElogToolingProductQualifications.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i2a97saf.ElogToolingTypes?>()) {
      return (data != null ? _i2a97saf.ElogToolingTypes.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ici4vys7.ElogUnitOfMeasures?>()) {
      return (data != null ? _ici4vys7.ElogUnitOfMeasures.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iu9388z4.ElogUserGroupMembers?>()) {
      return (data != null
              ? _iu9388z4.ElogUserGroupMembers.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_id7xfj5e.ElogUserGroups?>()) {
      return (data != null ? _id7xfj5e.ElogUserGroups.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i2xv5f50.ElogUserRoles?>()) {
      return (data != null ? _i2xv5f50.ElogUserRoles.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iqfb1ejb.ElogWorkItems?>()) {
      return (data != null ? _iqfb1ejb.ElogWorkItems.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i2qhvyny.ElogWorkflowEvents?>()) {
      return (data != null ? _i2qhvyny.ElogWorkflowEvents.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ifguuifm.ElogWorkflowInstances?>()) {
      return (data != null
              ? _ifguuifm.ElogWorkflowInstances.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ijr902rd.ElogWorkflows?>()) {
      return (data != null ? _ijr902rd.ElogWorkflows.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iw9e7ahv.PublicESignatures?>()) {
      return (data != null ? _iw9e7ahv.PublicESignatures.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iq44tjyb.PublicEntityDraftsAudit?>()) {
      return (data != null
              ? _iq44tjyb.PublicEntityDraftsAudit.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iqjzr2vi.PublicEntityDraftsVersions?>()) {
      return (data != null
              ? _iqjzr2vi.PublicEntityDraftsVersions.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i37bl2c2.PublicEntityLifecycleConfigurations?>()) {
      return (data != null
              ? _i37bl2c2.PublicEntityLifecycleConfigurations.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i7ltqb3m.PublicEntityWorkflowInstances?>()) {
      return (data != null
              ? _i7ltqb3m.PublicEntityWorkflowInstances.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iu718lvo.PublicEntityWorkflowTasks?>()) {
      return (data != null
              ? _iu718lvo.PublicEntityWorkflowTasks.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i6x532bo.PublicPublic?>()) {
      return (data != null ? _i6x532bo.PublicPublic.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ixdgb3pg.PublicWorkflowEvents?>()) {
      return (data != null
              ? _ixdgb3pg.PublicWorkflowEvents.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iku0se9c.PublicWorkflowInstances?>()) {
      return (data != null
              ? _iku0se9c.PublicWorkflowInstances.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ixdjky6f.PublicWorkflowUserTasks?>()) {
      return (data != null
              ? _ixdjky6f.PublicWorkflowUserTasks.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_icl3enxx.SsoAccountUnlockRequests?>()) {
      return (data != null
              ? _icl3enxx.SsoAccountUnlockRequests.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_ikffiba3.SsoAdConnections?>()) {
      return (data != null ? _ikffiba3.SsoAdConnections.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ioy9xegh.SsoCompanies?>()) {
      return (data != null ? _ioy9xegh.SsoCompanies.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ih26k2g9.SsoCompanySiteAssignments?>()) {
      return (data != null
              ? _ih26k2g9.SsoCompanySiteAssignments.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i0v3k9y4.SsoDashboardConfigs?>()) {
      return (data != null
              ? _i0v3k9y4.SsoDashboardConfigs.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iwzh4spq.SsoDepartmentTypes?>()) {
      return (data != null ? _iwzh4spq.SsoDepartmentTypes.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_isoagnd2.SsoDepartments?>()) {
      return (data != null ? _isoagnd2.SsoDepartments.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivpbyrtu.SsoDesignations?>()) {
      return (data != null ? _ivpbyrtu.SsoDesignations.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_id58jpdy.SsoLoginChallenges?>()) {
      return (data != null ? _id58jpdy.SsoLoginChallenges.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ivkuiv43.SsoLoginEvents?>()) {
      return (data != null ? _ivkuiv43.SsoLoginEvents.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_iv9au2ux.SsoNotifications?>()) {
      return (data != null ? _iv9au2ux.SsoNotifications.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ism6jhlu.SsoPasswordResetRequests?>()) {
      return (data != null
              ? _ism6jhlu.SsoPasswordResetRequests.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iqttiq1b.SsoProductSettings?>()) {
      return (data != null ? _iqttiq1b.SsoProductSettings.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ir4axp6j.SsoProductSiteMappings?>()) {
      return (data != null
              ? _ir4axp6j.SsoProductSiteMappings.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_id96jnp7.SsoProducts?>()) {
      return (data != null ? _id96jnp7.SsoProducts.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iu1qu58n.SsoReportExports?>()) {
      return (data != null ? _iu1qu58n.SsoReportExports.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ichwrbiz.SsoReportTemplates?>()) {
      return (data != null ? _ichwrbiz.SsoReportTemplates.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ib0ko46b.SsoRoleDashboards?>()) {
      return (data != null ? _ib0ko46b.SsoRoleDashboards.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ifv6xkhy.SsoRolePermissions?>()) {
      return (data != null ? _ifv6xkhy.SsoRolePermissions.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i0gr1peg.SsoRoles?>()) {
      return (data != null ? _i0gr1peg.SsoRoles.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_if33sioe.SsoSavedViews?>()) {
      return (data != null ? _if33sioe.SsoSavedViews.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_ilqjh0sx.SsoSecurityPolicies?>()) {
      return (data != null
              ? _ilqjh0sx.SsoSecurityPolicies.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_i4g0kvm8.SsoSites?>()) {
      return (data != null ? _i4g0kvm8.SsoSites.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_iugbun52.SsoStandardReasons?>()) {
      return (data != null ? _iugbun52.SsoStandardReasons.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i2qrs2ax.SsoUserPasswordHistory?>()) {
      return (data != null
              ? _i2qrs2ax.SsoUserPasswordHistory.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_izdzo98l.SsoUserPreferences?>()) {
      return (data != null ? _izdzo98l.SsoUserPreferences.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i7stpwby.SsoUserProductSiteMappings?>()) {
      return (data != null
              ? _i7stpwby.SsoUserProductSiteMappings.fromJson(data)
              : null)
          as T;
    }
    if (t == _is.getType<_iew7uxuv.SsoUserRoles?>()) {
      return (data != null ? _iew7uxuv.SsoUserRoles.fromJson(data) : null) as T;
    }
    if (t == _is.getType<_ir5ofehs.SsoUserSessions?>()) {
      return (data != null ? _ir5ofehs.SsoUserSessions.fromJson(data) : null)
          as T;
    }
    if (t == _is.getType<_i4fj2l14.SsoUsers?>()) {
      return (data != null ? _i4fj2l14.SsoUsers.fromJson(data) : null) as T;
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
    if (t == _is.getType<_ixxyfkud.SchemaTable?>()) {
      return (data != null ? _ixxyfkud.SchemaTable.fromJson(data) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList() as T;
    }
    if (t == List<int>) {
      return (data as List).map((e) => deserialize<int>(e)).toList() as T;
    }
    if (t == _is.getType<List<int>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<int>(e)).toList()
              : null)
          as T;
    }
    if (t == _is.getType<List<String>?>()) {
      return (data != null
              ? (data as List).map((e) => deserialize<String>(e)).toList()
              : null)
          as T;
    }
    if (t == List<_is.UuidValue>) {
      return (data as List).map((e) => deserialize<_is.UuidValue>(e)).toList()
          as T;
    }
    if (t == _is.getType<List<_is.UuidValue>?>()) {
      return (data != null
              ? (data as List)
                    .map((e) => deserialize<_is.UuidValue>(e))
                    .toList()
              : null)
          as T;
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
      _ishyozd5.ElogActivities => 'ElogActivities',
      _i6kgjla4.ElogActivityArtifacts => 'ElogActivityArtifacts',
      _iz387z77.ElogAreaAdjacency => 'ElogAreaAdjacency',
      _i9o3y69x.ElogAreaCategories => 'ElogAreaCategories',
      _isgi7gk9.ElogAreaEquipment => 'ElogAreaEquipment',
      _iv2byy67.ElogAreaUserGroups => 'ElogAreaUserGroups',
      _ilczj6al.ElogAreas => 'ElogAreas',
      _ippbjru9.ElogBatches => 'ElogBatches',
      _ie8nm0xf.ElogBusinessAssociates => 'ElogBusinessAssociates',
      _iea2komd.ElogCampaigns => 'ElogCampaigns',
      _i943t8qk.ElogChecklistTemplates => 'ElogChecklistTemplates',
      _im2l27wp.ElogChecklistUsageInstructions =>
        'ElogChecklistUsageInstructions',
      _iyg55fu5.ElogChecklistUsageSets => 'ElogChecklistUsageSets',
      _i2d67kfy.ElogChecklistUsages => 'ElogChecklistUsages',
      _iaxzy4al.ElogCleaningTypes => 'ElogCleaningTypes',
      _ig1scdm6.ElogDashboardConfigs => 'ElogDashboardConfigs',
      _i465o1vf.ElogEquipmentCategories => 'ElogEquipmentCategories',
      _iy7mbkyp.ElogEquipmentParts => 'ElogEquipmentParts',
      _iizl2nep.ElogEquipmentTypes => 'ElogEquipmentTypes',
      _ihodx11y.ElogEquipmentUserGroups => 'ElogEquipmentUserGroups',
      _ir29oi5q.ElogEquipments => 'ElogEquipments',
      _iksvpml2.ElogEventReactorState => 'ElogEventReactorState',
      _imjwa56c.ElogEvents => 'ElogEvents',
      _iei4fdsy.ElogExternalIntegrations => 'ElogExternalIntegrations',
      _iuxjq0du.ElogHolidayCalendars => 'ElogHolidayCalendars',
      _ip7nvc9p.ElogHolidayEntries => 'ElogHolidayEntries',
      _i4th50rj.ElogLogReportGenerations => 'ElogLogReportGenerations',
      _iab28y1e.ElogLogTemplates => 'ElogLogTemplates',
      _i05usxet.ElogLogUsages => 'ElogLogUsages',
      _izf4mrur.ElogNotificationGroupStates => 'ElogNotificationGroupStates',
      _idk983fe.ElogNotifications => 'ElogNotifications',
      _izmtc39o.ElogNotificationsArchive => 'ElogNotificationsArchive',
      _i0ssuutp.ElogOnboardingStatus => 'ElogOnboardingStatus',
      _i7g8bf6c.ElogOperations => 'ElogOperations',
      _i8i2tmym.ElogPdAllocationCursors => 'ElogPdAllocationCursors',
      _iwsiolx8.ElogPdAllocationLines => 'ElogPdAllocationLines',
      _ie75ho22.ElogPdAllocations => 'ElogPdAllocations',
      _i3lnfsnn.ElogPdAssemblies => 'ElogPdAssemblies',
      _iccws1xa.ElogPdAssemblyMembers => 'ElogPdAssemblyMembers',
      _ipr5ee30.ElogPdComponentReservations => 'ElogPdComponentReservations',
      _i6kwotqx.ElogPdModuleConfig => 'ElogPdModuleConfig',
      _ip7k2fyr.ElogPdOperations => 'ElogPdOperations',
      _iwoewitv.ElogPdUsageLedger => 'ElogPdUsageLedger',
      _idcsbifx.ElogPresetAreaCategories => 'ElogPresetAreaCategories',
      _ien2z5wb.ElogPresetAreas => 'ElogPresetAreas',
      _imeic21z.ElogPresetChecklists => 'ElogPresetChecklists',
      _i1i32x6j.ElogPresetDashboards => 'ElogPresetDashboards',
      _igzp2y8c.ElogPresetEquipment => 'ElogPresetEquipment',
      _imoi4ypf.ElogPresetEquipmentCategories =>
        'ElogPresetEquipmentCategories',
      _io6t2sgk.ElogPresetIndustries => 'ElogPresetIndustries',
      _izdzedtk.ElogPresetLogTemplates => 'ElogPresetLogTemplates',
      _irzfy450.ElogPresetPolicies => 'ElogPresetPolicies',
      _iimbkgrt.ElogPresetRoleCategories => 'ElogPresetRoleCategories',
      _i1n67tzi.ElogPresetRoles => 'ElogPresetRoles',
      _i01c1yxy.ElogPresetSchedules => 'ElogPresetSchedules',
      _ib0e9qbb.ElogProblemTypes => 'ElogProblemTypes',
      _i4hmoti8.ElogProblems => 'ElogProblems',
      _iele6hju.ElogProductCleaningRequirements =>
        'ElogProductCleaningRequirements',
      _i0caxd73.ElogProducts => 'ElogProducts',
      _iq0nwjzy.ElogPunchSets => 'ElogPunchSets',
      _iryvos7o.ElogReportTemplates => 'ElogReportTemplates',
      _iqykw8hs.ElogResourceActivityDailyRollups =>
        'ElogResourceActivityDailyRollups',
      _ial2wvcr.ElogResourceFlagTypes => 'ElogResourceFlagTypes',
      _if40xrph.ElogResourceFlags => 'ElogResourceFlags',
      _il71c5vn.ElogResourcePolicies => 'ElogResourcePolicies',
      _iw7vxuxk.ElogResourceStates => 'ElogResourceStates',
      _ijudmfzt.ElogResourceUsages => 'ElogResourceUsages',
      _ik7tju34.ElogRoleCategories => 'ElogRoleCategories',
      _is5x0ozk.ElogRoleDashboards => 'ElogRoleDashboards',
      _i8swalwe.ElogRolePermissions => 'ElogRolePermissions',
      _i2dkzfxx.ElogRoles => 'ElogRoles',
      _i91j1h6n.ElogSavedViews => 'ElogSavedViews',
      _iyvpac9s.ElogToolingProductQualifications =>
        'ElogToolingProductQualifications',
      _i2a97saf.ElogToolingTypes => 'ElogToolingTypes',
      _ici4vys7.ElogUnitOfMeasures => 'ElogUnitOfMeasures',
      _iu9388z4.ElogUserGroupMembers => 'ElogUserGroupMembers',
      _id7xfj5e.ElogUserGroups => 'ElogUserGroups',
      _i2xv5f50.ElogUserRoles => 'ElogUserRoles',
      _iqfb1ejb.ElogWorkItems => 'ElogWorkItems',
      _i2qhvyny.ElogWorkflowEvents => 'ElogWorkflowEvents',
      _ifguuifm.ElogWorkflowInstances => 'ElogWorkflowInstances',
      _ijr902rd.ElogWorkflows => 'ElogWorkflows',
      _iw9e7ahv.PublicESignatures => 'PublicESignatures',
      _iq44tjyb.PublicEntityDraftsAudit => 'PublicEntityDraftsAudit',
      _iqjzr2vi.PublicEntityDraftsVersions => 'PublicEntityDraftsVersions',
      _i37bl2c2.PublicEntityLifecycleConfigurations =>
        'PublicEntityLifecycleConfigurations',
      _i7ltqb3m.PublicEntityWorkflowInstances =>
        'PublicEntityWorkflowInstances',
      _iu718lvo.PublicEntityWorkflowTasks => 'PublicEntityWorkflowTasks',
      _i6x532bo.PublicPublic => 'PublicPublic',
      _ixdgb3pg.PublicWorkflowEvents => 'PublicWorkflowEvents',
      _iku0se9c.PublicWorkflowInstances => 'PublicWorkflowInstances',
      _ixdjky6f.PublicWorkflowUserTasks => 'PublicWorkflowUserTasks',
      _icl3enxx.SsoAccountUnlockRequests => 'SsoAccountUnlockRequests',
      _ikffiba3.SsoAdConnections => 'SsoAdConnections',
      _ioy9xegh.SsoCompanies => 'SsoCompanies',
      _ih26k2g9.SsoCompanySiteAssignments => 'SsoCompanySiteAssignments',
      _i0v3k9y4.SsoDashboardConfigs => 'SsoDashboardConfigs',
      _iwzh4spq.SsoDepartmentTypes => 'SsoDepartmentTypes',
      _isoagnd2.SsoDepartments => 'SsoDepartments',
      _ivpbyrtu.SsoDesignations => 'SsoDesignations',
      _id58jpdy.SsoLoginChallenges => 'SsoLoginChallenges',
      _ivkuiv43.SsoLoginEvents => 'SsoLoginEvents',
      _iv9au2ux.SsoNotifications => 'SsoNotifications',
      _ism6jhlu.SsoPasswordResetRequests => 'SsoPasswordResetRequests',
      _iqttiq1b.SsoProductSettings => 'SsoProductSettings',
      _ir4axp6j.SsoProductSiteMappings => 'SsoProductSiteMappings',
      _id96jnp7.SsoProducts => 'SsoProducts',
      _iu1qu58n.SsoReportExports => 'SsoReportExports',
      _ichwrbiz.SsoReportTemplates => 'SsoReportTemplates',
      _ib0ko46b.SsoRoleDashboards => 'SsoRoleDashboards',
      _ifv6xkhy.SsoRolePermissions => 'SsoRolePermissions',
      _i0gr1peg.SsoRoles => 'SsoRoles',
      _if33sioe.SsoSavedViews => 'SsoSavedViews',
      _ilqjh0sx.SsoSecurityPolicies => 'SsoSecurityPolicies',
      _i4g0kvm8.SsoSites => 'SsoSites',
      _iugbun52.SsoStandardReasons => 'SsoStandardReasons',
      _i2qrs2ax.SsoUserPasswordHistory => 'SsoUserPasswordHistory',
      _izdzo98l.SsoUserPreferences => 'SsoUserPreferences',
      _i7stpwby.SsoUserProductSiteMappings => 'SsoUserProductSiteMappings',
      _iew7uxuv.SsoUserRoles => 'SsoUserRoles',
      _ir5ofehs.SsoUserSessions => 'SsoUserSessions',
      _i4fj2l14.SsoUsers => 'SsoUsers',
      _ip7yl2xa.SchemaColumn => 'SchemaColumn',
      _irxuw07j.SchemaEnum => 'SchemaEnum',
      _iarzs90a.SchemaForeignKey => 'SchemaForeignKey',
      _is38wmwx.SchemaGraph => 'SchemaGraph',
      _id0qwmzg.SchemaIndex => 'SchemaIndex',
      _iyw9pr81.SchemaModule => 'SchemaModule',
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
      case _ishyozd5.ElogActivities():
        return 'ElogActivities';
      case _i6kgjla4.ElogActivityArtifacts():
        return 'ElogActivityArtifacts';
      case _iz387z77.ElogAreaAdjacency():
        return 'ElogAreaAdjacency';
      case _i9o3y69x.ElogAreaCategories():
        return 'ElogAreaCategories';
      case _isgi7gk9.ElogAreaEquipment():
        return 'ElogAreaEquipment';
      case _iv2byy67.ElogAreaUserGroups():
        return 'ElogAreaUserGroups';
      case _ilczj6al.ElogAreas():
        return 'ElogAreas';
      case _ippbjru9.ElogBatches():
        return 'ElogBatches';
      case _ie8nm0xf.ElogBusinessAssociates():
        return 'ElogBusinessAssociates';
      case _iea2komd.ElogCampaigns():
        return 'ElogCampaigns';
      case _i943t8qk.ElogChecklistTemplates():
        return 'ElogChecklistTemplates';
      case _im2l27wp.ElogChecklistUsageInstructions():
        return 'ElogChecklistUsageInstructions';
      case _iyg55fu5.ElogChecklistUsageSets():
        return 'ElogChecklistUsageSets';
      case _i2d67kfy.ElogChecklistUsages():
        return 'ElogChecklistUsages';
      case _iaxzy4al.ElogCleaningTypes():
        return 'ElogCleaningTypes';
      case _ig1scdm6.ElogDashboardConfigs():
        return 'ElogDashboardConfigs';
      case _i465o1vf.ElogEquipmentCategories():
        return 'ElogEquipmentCategories';
      case _iy7mbkyp.ElogEquipmentParts():
        return 'ElogEquipmentParts';
      case _iizl2nep.ElogEquipmentTypes():
        return 'ElogEquipmentTypes';
      case _ihodx11y.ElogEquipmentUserGroups():
        return 'ElogEquipmentUserGroups';
      case _ir29oi5q.ElogEquipments():
        return 'ElogEquipments';
      case _iksvpml2.ElogEventReactorState():
        return 'ElogEventReactorState';
      case _imjwa56c.ElogEvents():
        return 'ElogEvents';
      case _iei4fdsy.ElogExternalIntegrations():
        return 'ElogExternalIntegrations';
      case _iuxjq0du.ElogHolidayCalendars():
        return 'ElogHolidayCalendars';
      case _ip7nvc9p.ElogHolidayEntries():
        return 'ElogHolidayEntries';
      case _i4th50rj.ElogLogReportGenerations():
        return 'ElogLogReportGenerations';
      case _iab28y1e.ElogLogTemplates():
        return 'ElogLogTemplates';
      case _i05usxet.ElogLogUsages():
        return 'ElogLogUsages';
      case _izf4mrur.ElogNotificationGroupStates():
        return 'ElogNotificationGroupStates';
      case _idk983fe.ElogNotifications():
        return 'ElogNotifications';
      case _izmtc39o.ElogNotificationsArchive():
        return 'ElogNotificationsArchive';
      case _i0ssuutp.ElogOnboardingStatus():
        return 'ElogOnboardingStatus';
      case _i7g8bf6c.ElogOperations():
        return 'ElogOperations';
      case _i8i2tmym.ElogPdAllocationCursors():
        return 'ElogPdAllocationCursors';
      case _iwsiolx8.ElogPdAllocationLines():
        return 'ElogPdAllocationLines';
      case _ie75ho22.ElogPdAllocations():
        return 'ElogPdAllocations';
      case _i3lnfsnn.ElogPdAssemblies():
        return 'ElogPdAssemblies';
      case _iccws1xa.ElogPdAssemblyMembers():
        return 'ElogPdAssemblyMembers';
      case _ipr5ee30.ElogPdComponentReservations():
        return 'ElogPdComponentReservations';
      case _i6kwotqx.ElogPdModuleConfig():
        return 'ElogPdModuleConfig';
      case _ip7k2fyr.ElogPdOperations():
        return 'ElogPdOperations';
      case _iwoewitv.ElogPdUsageLedger():
        return 'ElogPdUsageLedger';
      case _idcsbifx.ElogPresetAreaCategories():
        return 'ElogPresetAreaCategories';
      case _ien2z5wb.ElogPresetAreas():
        return 'ElogPresetAreas';
      case _imeic21z.ElogPresetChecklists():
        return 'ElogPresetChecklists';
      case _i1i32x6j.ElogPresetDashboards():
        return 'ElogPresetDashboards';
      case _igzp2y8c.ElogPresetEquipment():
        return 'ElogPresetEquipment';
      case _imoi4ypf.ElogPresetEquipmentCategories():
        return 'ElogPresetEquipmentCategories';
      case _io6t2sgk.ElogPresetIndustries():
        return 'ElogPresetIndustries';
      case _izdzedtk.ElogPresetLogTemplates():
        return 'ElogPresetLogTemplates';
      case _irzfy450.ElogPresetPolicies():
        return 'ElogPresetPolicies';
      case _iimbkgrt.ElogPresetRoleCategories():
        return 'ElogPresetRoleCategories';
      case _i1n67tzi.ElogPresetRoles():
        return 'ElogPresetRoles';
      case _i01c1yxy.ElogPresetSchedules():
        return 'ElogPresetSchedules';
      case _ib0e9qbb.ElogProblemTypes():
        return 'ElogProblemTypes';
      case _i4hmoti8.ElogProblems():
        return 'ElogProblems';
      case _iele6hju.ElogProductCleaningRequirements():
        return 'ElogProductCleaningRequirements';
      case _i0caxd73.ElogProducts():
        return 'ElogProducts';
      case _iq0nwjzy.ElogPunchSets():
        return 'ElogPunchSets';
      case _iryvos7o.ElogReportTemplates():
        return 'ElogReportTemplates';
      case _iqykw8hs.ElogResourceActivityDailyRollups():
        return 'ElogResourceActivityDailyRollups';
      case _ial2wvcr.ElogResourceFlagTypes():
        return 'ElogResourceFlagTypes';
      case _if40xrph.ElogResourceFlags():
        return 'ElogResourceFlags';
      case _il71c5vn.ElogResourcePolicies():
        return 'ElogResourcePolicies';
      case _iw7vxuxk.ElogResourceStates():
        return 'ElogResourceStates';
      case _ijudmfzt.ElogResourceUsages():
        return 'ElogResourceUsages';
      case _ik7tju34.ElogRoleCategories():
        return 'ElogRoleCategories';
      case _is5x0ozk.ElogRoleDashboards():
        return 'ElogRoleDashboards';
      case _i8swalwe.ElogRolePermissions():
        return 'ElogRolePermissions';
      case _i2dkzfxx.ElogRoles():
        return 'ElogRoles';
      case _i91j1h6n.ElogSavedViews():
        return 'ElogSavedViews';
      case _iyvpac9s.ElogToolingProductQualifications():
        return 'ElogToolingProductQualifications';
      case _i2a97saf.ElogToolingTypes():
        return 'ElogToolingTypes';
      case _ici4vys7.ElogUnitOfMeasures():
        return 'ElogUnitOfMeasures';
      case _iu9388z4.ElogUserGroupMembers():
        return 'ElogUserGroupMembers';
      case _id7xfj5e.ElogUserGroups():
        return 'ElogUserGroups';
      case _i2xv5f50.ElogUserRoles():
        return 'ElogUserRoles';
      case _iqfb1ejb.ElogWorkItems():
        return 'ElogWorkItems';
      case _i2qhvyny.ElogWorkflowEvents():
        return 'ElogWorkflowEvents';
      case _ifguuifm.ElogWorkflowInstances():
        return 'ElogWorkflowInstances';
      case _ijr902rd.ElogWorkflows():
        return 'ElogWorkflows';
      case _iw9e7ahv.PublicESignatures():
        return 'PublicESignatures';
      case _iq44tjyb.PublicEntityDraftsAudit():
        return 'PublicEntityDraftsAudit';
      case _iqjzr2vi.PublicEntityDraftsVersions():
        return 'PublicEntityDraftsVersions';
      case _i37bl2c2.PublicEntityLifecycleConfigurations():
        return 'PublicEntityLifecycleConfigurations';
      case _i7ltqb3m.PublicEntityWorkflowInstances():
        return 'PublicEntityWorkflowInstances';
      case _iu718lvo.PublicEntityWorkflowTasks():
        return 'PublicEntityWorkflowTasks';
      case _i6x532bo.PublicPublic():
        return 'PublicPublic';
      case _ixdgb3pg.PublicWorkflowEvents():
        return 'PublicWorkflowEvents';
      case _iku0se9c.PublicWorkflowInstances():
        return 'PublicWorkflowInstances';
      case _ixdjky6f.PublicWorkflowUserTasks():
        return 'PublicWorkflowUserTasks';
      case _icl3enxx.SsoAccountUnlockRequests():
        return 'SsoAccountUnlockRequests';
      case _ikffiba3.SsoAdConnections():
        return 'SsoAdConnections';
      case _ioy9xegh.SsoCompanies():
        return 'SsoCompanies';
      case _ih26k2g9.SsoCompanySiteAssignments():
        return 'SsoCompanySiteAssignments';
      case _i0v3k9y4.SsoDashboardConfigs():
        return 'SsoDashboardConfigs';
      case _iwzh4spq.SsoDepartmentTypes():
        return 'SsoDepartmentTypes';
      case _isoagnd2.SsoDepartments():
        return 'SsoDepartments';
      case _ivpbyrtu.SsoDesignations():
        return 'SsoDesignations';
      case _id58jpdy.SsoLoginChallenges():
        return 'SsoLoginChallenges';
      case _ivkuiv43.SsoLoginEvents():
        return 'SsoLoginEvents';
      case _iv9au2ux.SsoNotifications():
        return 'SsoNotifications';
      case _ism6jhlu.SsoPasswordResetRequests():
        return 'SsoPasswordResetRequests';
      case _iqttiq1b.SsoProductSettings():
        return 'SsoProductSettings';
      case _ir4axp6j.SsoProductSiteMappings():
        return 'SsoProductSiteMappings';
      case _id96jnp7.SsoProducts():
        return 'SsoProducts';
      case _iu1qu58n.SsoReportExports():
        return 'SsoReportExports';
      case _ichwrbiz.SsoReportTemplates():
        return 'SsoReportTemplates';
      case _ib0ko46b.SsoRoleDashboards():
        return 'SsoRoleDashboards';
      case _ifv6xkhy.SsoRolePermissions():
        return 'SsoRolePermissions';
      case _i0gr1peg.SsoRoles():
        return 'SsoRoles';
      case _if33sioe.SsoSavedViews():
        return 'SsoSavedViews';
      case _ilqjh0sx.SsoSecurityPolicies():
        return 'SsoSecurityPolicies';
      case _i4g0kvm8.SsoSites():
        return 'SsoSites';
      case _iugbun52.SsoStandardReasons():
        return 'SsoStandardReasons';
      case _i2qrs2ax.SsoUserPasswordHistory():
        return 'SsoUserPasswordHistory';
      case _izdzo98l.SsoUserPreferences():
        return 'SsoUserPreferences';
      case _i7stpwby.SsoUserProductSiteMappings():
        return 'SsoUserProductSiteMappings';
      case _iew7uxuv.SsoUserRoles():
        return 'SsoUserRoles';
      case _ir5ofehs.SsoUserSessions():
        return 'SsoUserSessions';
      case _i4fj2l14.SsoUsers():
        return 'SsoUsers';
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
    if (dataClassName == 'ElogActivities') {
      return deserialize<_ishyozd5.ElogActivities>(data['data']);
    }
    if (dataClassName == 'ElogActivityArtifacts') {
      return deserialize<_i6kgjla4.ElogActivityArtifacts>(data['data']);
    }
    if (dataClassName == 'ElogAreaAdjacency') {
      return deserialize<_iz387z77.ElogAreaAdjacency>(data['data']);
    }
    if (dataClassName == 'ElogAreaCategories') {
      return deserialize<_i9o3y69x.ElogAreaCategories>(data['data']);
    }
    if (dataClassName == 'ElogAreaEquipment') {
      return deserialize<_isgi7gk9.ElogAreaEquipment>(data['data']);
    }
    if (dataClassName == 'ElogAreaUserGroups') {
      return deserialize<_iv2byy67.ElogAreaUserGroups>(data['data']);
    }
    if (dataClassName == 'ElogAreas') {
      return deserialize<_ilczj6al.ElogAreas>(data['data']);
    }
    if (dataClassName == 'ElogBatches') {
      return deserialize<_ippbjru9.ElogBatches>(data['data']);
    }
    if (dataClassName == 'ElogBusinessAssociates') {
      return deserialize<_ie8nm0xf.ElogBusinessAssociates>(data['data']);
    }
    if (dataClassName == 'ElogCampaigns') {
      return deserialize<_iea2komd.ElogCampaigns>(data['data']);
    }
    if (dataClassName == 'ElogChecklistTemplates') {
      return deserialize<_i943t8qk.ElogChecklistTemplates>(data['data']);
    }
    if (dataClassName == 'ElogChecklistUsageInstructions') {
      return deserialize<_im2l27wp.ElogChecklistUsageInstructions>(
        data['data'],
      );
    }
    if (dataClassName == 'ElogChecklistUsageSets') {
      return deserialize<_iyg55fu5.ElogChecklistUsageSets>(data['data']);
    }
    if (dataClassName == 'ElogChecklistUsages') {
      return deserialize<_i2d67kfy.ElogChecklistUsages>(data['data']);
    }
    if (dataClassName == 'ElogCleaningTypes') {
      return deserialize<_iaxzy4al.ElogCleaningTypes>(data['data']);
    }
    if (dataClassName == 'ElogDashboardConfigs') {
      return deserialize<_ig1scdm6.ElogDashboardConfigs>(data['data']);
    }
    if (dataClassName == 'ElogEquipmentCategories') {
      return deserialize<_i465o1vf.ElogEquipmentCategories>(data['data']);
    }
    if (dataClassName == 'ElogEquipmentParts') {
      return deserialize<_iy7mbkyp.ElogEquipmentParts>(data['data']);
    }
    if (dataClassName == 'ElogEquipmentTypes') {
      return deserialize<_iizl2nep.ElogEquipmentTypes>(data['data']);
    }
    if (dataClassName == 'ElogEquipmentUserGroups') {
      return deserialize<_ihodx11y.ElogEquipmentUserGroups>(data['data']);
    }
    if (dataClassName == 'ElogEquipments') {
      return deserialize<_ir29oi5q.ElogEquipments>(data['data']);
    }
    if (dataClassName == 'ElogEventReactorState') {
      return deserialize<_iksvpml2.ElogEventReactorState>(data['data']);
    }
    if (dataClassName == 'ElogEvents') {
      return deserialize<_imjwa56c.ElogEvents>(data['data']);
    }
    if (dataClassName == 'ElogExternalIntegrations') {
      return deserialize<_iei4fdsy.ElogExternalIntegrations>(data['data']);
    }
    if (dataClassName == 'ElogHolidayCalendars') {
      return deserialize<_iuxjq0du.ElogHolidayCalendars>(data['data']);
    }
    if (dataClassName == 'ElogHolidayEntries') {
      return deserialize<_ip7nvc9p.ElogHolidayEntries>(data['data']);
    }
    if (dataClassName == 'ElogLogReportGenerations') {
      return deserialize<_i4th50rj.ElogLogReportGenerations>(data['data']);
    }
    if (dataClassName == 'ElogLogTemplates') {
      return deserialize<_iab28y1e.ElogLogTemplates>(data['data']);
    }
    if (dataClassName == 'ElogLogUsages') {
      return deserialize<_i05usxet.ElogLogUsages>(data['data']);
    }
    if (dataClassName == 'ElogNotificationGroupStates') {
      return deserialize<_izf4mrur.ElogNotificationGroupStates>(data['data']);
    }
    if (dataClassName == 'ElogNotifications') {
      return deserialize<_idk983fe.ElogNotifications>(data['data']);
    }
    if (dataClassName == 'ElogNotificationsArchive') {
      return deserialize<_izmtc39o.ElogNotificationsArchive>(data['data']);
    }
    if (dataClassName == 'ElogOnboardingStatus') {
      return deserialize<_i0ssuutp.ElogOnboardingStatus>(data['data']);
    }
    if (dataClassName == 'ElogOperations') {
      return deserialize<_i7g8bf6c.ElogOperations>(data['data']);
    }
    if (dataClassName == 'ElogPdAllocationCursors') {
      return deserialize<_i8i2tmym.ElogPdAllocationCursors>(data['data']);
    }
    if (dataClassName == 'ElogPdAllocationLines') {
      return deserialize<_iwsiolx8.ElogPdAllocationLines>(data['data']);
    }
    if (dataClassName == 'ElogPdAllocations') {
      return deserialize<_ie75ho22.ElogPdAllocations>(data['data']);
    }
    if (dataClassName == 'ElogPdAssemblies') {
      return deserialize<_i3lnfsnn.ElogPdAssemblies>(data['data']);
    }
    if (dataClassName == 'ElogPdAssemblyMembers') {
      return deserialize<_iccws1xa.ElogPdAssemblyMembers>(data['data']);
    }
    if (dataClassName == 'ElogPdComponentReservations') {
      return deserialize<_ipr5ee30.ElogPdComponentReservations>(data['data']);
    }
    if (dataClassName == 'ElogPdModuleConfig') {
      return deserialize<_i6kwotqx.ElogPdModuleConfig>(data['data']);
    }
    if (dataClassName == 'ElogPdOperations') {
      return deserialize<_ip7k2fyr.ElogPdOperations>(data['data']);
    }
    if (dataClassName == 'ElogPdUsageLedger') {
      return deserialize<_iwoewitv.ElogPdUsageLedger>(data['data']);
    }
    if (dataClassName == 'ElogPresetAreaCategories') {
      return deserialize<_idcsbifx.ElogPresetAreaCategories>(data['data']);
    }
    if (dataClassName == 'ElogPresetAreas') {
      return deserialize<_ien2z5wb.ElogPresetAreas>(data['data']);
    }
    if (dataClassName == 'ElogPresetChecklists') {
      return deserialize<_imeic21z.ElogPresetChecklists>(data['data']);
    }
    if (dataClassName == 'ElogPresetDashboards') {
      return deserialize<_i1i32x6j.ElogPresetDashboards>(data['data']);
    }
    if (dataClassName == 'ElogPresetEquipment') {
      return deserialize<_igzp2y8c.ElogPresetEquipment>(data['data']);
    }
    if (dataClassName == 'ElogPresetEquipmentCategories') {
      return deserialize<_imoi4ypf.ElogPresetEquipmentCategories>(data['data']);
    }
    if (dataClassName == 'ElogPresetIndustries') {
      return deserialize<_io6t2sgk.ElogPresetIndustries>(data['data']);
    }
    if (dataClassName == 'ElogPresetLogTemplates') {
      return deserialize<_izdzedtk.ElogPresetLogTemplates>(data['data']);
    }
    if (dataClassName == 'ElogPresetPolicies') {
      return deserialize<_irzfy450.ElogPresetPolicies>(data['data']);
    }
    if (dataClassName == 'ElogPresetRoleCategories') {
      return deserialize<_iimbkgrt.ElogPresetRoleCategories>(data['data']);
    }
    if (dataClassName == 'ElogPresetRoles') {
      return deserialize<_i1n67tzi.ElogPresetRoles>(data['data']);
    }
    if (dataClassName == 'ElogPresetSchedules') {
      return deserialize<_i01c1yxy.ElogPresetSchedules>(data['data']);
    }
    if (dataClassName == 'ElogProblemTypes') {
      return deserialize<_ib0e9qbb.ElogProblemTypes>(data['data']);
    }
    if (dataClassName == 'ElogProblems') {
      return deserialize<_i4hmoti8.ElogProblems>(data['data']);
    }
    if (dataClassName == 'ElogProductCleaningRequirements') {
      return deserialize<_iele6hju.ElogProductCleaningRequirements>(
        data['data'],
      );
    }
    if (dataClassName == 'ElogProducts') {
      return deserialize<_i0caxd73.ElogProducts>(data['data']);
    }
    if (dataClassName == 'ElogPunchSets') {
      return deserialize<_iq0nwjzy.ElogPunchSets>(data['data']);
    }
    if (dataClassName == 'ElogReportTemplates') {
      return deserialize<_iryvos7o.ElogReportTemplates>(data['data']);
    }
    if (dataClassName == 'ElogResourceActivityDailyRollups') {
      return deserialize<_iqykw8hs.ElogResourceActivityDailyRollups>(
        data['data'],
      );
    }
    if (dataClassName == 'ElogResourceFlagTypes') {
      return deserialize<_ial2wvcr.ElogResourceFlagTypes>(data['data']);
    }
    if (dataClassName == 'ElogResourceFlags') {
      return deserialize<_if40xrph.ElogResourceFlags>(data['data']);
    }
    if (dataClassName == 'ElogResourcePolicies') {
      return deserialize<_il71c5vn.ElogResourcePolicies>(data['data']);
    }
    if (dataClassName == 'ElogResourceStates') {
      return deserialize<_iw7vxuxk.ElogResourceStates>(data['data']);
    }
    if (dataClassName == 'ElogResourceUsages') {
      return deserialize<_ijudmfzt.ElogResourceUsages>(data['data']);
    }
    if (dataClassName == 'ElogRoleCategories') {
      return deserialize<_ik7tju34.ElogRoleCategories>(data['data']);
    }
    if (dataClassName == 'ElogRoleDashboards') {
      return deserialize<_is5x0ozk.ElogRoleDashboards>(data['data']);
    }
    if (dataClassName == 'ElogRolePermissions') {
      return deserialize<_i8swalwe.ElogRolePermissions>(data['data']);
    }
    if (dataClassName == 'ElogRoles') {
      return deserialize<_i2dkzfxx.ElogRoles>(data['data']);
    }
    if (dataClassName == 'ElogSavedViews') {
      return deserialize<_i91j1h6n.ElogSavedViews>(data['data']);
    }
    if (dataClassName == 'ElogToolingProductQualifications') {
      return deserialize<_iyvpac9s.ElogToolingProductQualifications>(
        data['data'],
      );
    }
    if (dataClassName == 'ElogToolingTypes') {
      return deserialize<_i2a97saf.ElogToolingTypes>(data['data']);
    }
    if (dataClassName == 'ElogUnitOfMeasures') {
      return deserialize<_ici4vys7.ElogUnitOfMeasures>(data['data']);
    }
    if (dataClassName == 'ElogUserGroupMembers') {
      return deserialize<_iu9388z4.ElogUserGroupMembers>(data['data']);
    }
    if (dataClassName == 'ElogUserGroups') {
      return deserialize<_id7xfj5e.ElogUserGroups>(data['data']);
    }
    if (dataClassName == 'ElogUserRoles') {
      return deserialize<_i2xv5f50.ElogUserRoles>(data['data']);
    }
    if (dataClassName == 'ElogWorkItems') {
      return deserialize<_iqfb1ejb.ElogWorkItems>(data['data']);
    }
    if (dataClassName == 'ElogWorkflowEvents') {
      return deserialize<_i2qhvyny.ElogWorkflowEvents>(data['data']);
    }
    if (dataClassName == 'ElogWorkflowInstances') {
      return deserialize<_ifguuifm.ElogWorkflowInstances>(data['data']);
    }
    if (dataClassName == 'ElogWorkflows') {
      return deserialize<_ijr902rd.ElogWorkflows>(data['data']);
    }
    if (dataClassName == 'PublicESignatures') {
      return deserialize<_iw9e7ahv.PublicESignatures>(data['data']);
    }
    if (dataClassName == 'PublicEntityDraftsAudit') {
      return deserialize<_iq44tjyb.PublicEntityDraftsAudit>(data['data']);
    }
    if (dataClassName == 'PublicEntityDraftsVersions') {
      return deserialize<_iqjzr2vi.PublicEntityDraftsVersions>(data['data']);
    }
    if (dataClassName == 'PublicEntityLifecycleConfigurations') {
      return deserialize<_i37bl2c2.PublicEntityLifecycleConfigurations>(
        data['data'],
      );
    }
    if (dataClassName == 'PublicEntityWorkflowInstances') {
      return deserialize<_i7ltqb3m.PublicEntityWorkflowInstances>(data['data']);
    }
    if (dataClassName == 'PublicEntityWorkflowTasks') {
      return deserialize<_iu718lvo.PublicEntityWorkflowTasks>(data['data']);
    }
    if (dataClassName == 'PublicPublic') {
      return deserialize<_i6x532bo.PublicPublic>(data['data']);
    }
    if (dataClassName == 'PublicWorkflowEvents') {
      return deserialize<_ixdgb3pg.PublicWorkflowEvents>(data['data']);
    }
    if (dataClassName == 'PublicWorkflowInstances') {
      return deserialize<_iku0se9c.PublicWorkflowInstances>(data['data']);
    }
    if (dataClassName == 'PublicWorkflowUserTasks') {
      return deserialize<_ixdjky6f.PublicWorkflowUserTasks>(data['data']);
    }
    if (dataClassName == 'SsoAccountUnlockRequests') {
      return deserialize<_icl3enxx.SsoAccountUnlockRequests>(data['data']);
    }
    if (dataClassName == 'SsoAdConnections') {
      return deserialize<_ikffiba3.SsoAdConnections>(data['data']);
    }
    if (dataClassName == 'SsoCompanies') {
      return deserialize<_ioy9xegh.SsoCompanies>(data['data']);
    }
    if (dataClassName == 'SsoCompanySiteAssignments') {
      return deserialize<_ih26k2g9.SsoCompanySiteAssignments>(data['data']);
    }
    if (dataClassName == 'SsoDashboardConfigs') {
      return deserialize<_i0v3k9y4.SsoDashboardConfigs>(data['data']);
    }
    if (dataClassName == 'SsoDepartmentTypes') {
      return deserialize<_iwzh4spq.SsoDepartmentTypes>(data['data']);
    }
    if (dataClassName == 'SsoDepartments') {
      return deserialize<_isoagnd2.SsoDepartments>(data['data']);
    }
    if (dataClassName == 'SsoDesignations') {
      return deserialize<_ivpbyrtu.SsoDesignations>(data['data']);
    }
    if (dataClassName == 'SsoLoginChallenges') {
      return deserialize<_id58jpdy.SsoLoginChallenges>(data['data']);
    }
    if (dataClassName == 'SsoLoginEvents') {
      return deserialize<_ivkuiv43.SsoLoginEvents>(data['data']);
    }
    if (dataClassName == 'SsoNotifications') {
      return deserialize<_iv9au2ux.SsoNotifications>(data['data']);
    }
    if (dataClassName == 'SsoPasswordResetRequests') {
      return deserialize<_ism6jhlu.SsoPasswordResetRequests>(data['data']);
    }
    if (dataClassName == 'SsoProductSettings') {
      return deserialize<_iqttiq1b.SsoProductSettings>(data['data']);
    }
    if (dataClassName == 'SsoProductSiteMappings') {
      return deserialize<_ir4axp6j.SsoProductSiteMappings>(data['data']);
    }
    if (dataClassName == 'SsoProducts') {
      return deserialize<_id96jnp7.SsoProducts>(data['data']);
    }
    if (dataClassName == 'SsoReportExports') {
      return deserialize<_iu1qu58n.SsoReportExports>(data['data']);
    }
    if (dataClassName == 'SsoReportTemplates') {
      return deserialize<_ichwrbiz.SsoReportTemplates>(data['data']);
    }
    if (dataClassName == 'SsoRoleDashboards') {
      return deserialize<_ib0ko46b.SsoRoleDashboards>(data['data']);
    }
    if (dataClassName == 'SsoRolePermissions') {
      return deserialize<_ifv6xkhy.SsoRolePermissions>(data['data']);
    }
    if (dataClassName == 'SsoRoles') {
      return deserialize<_i0gr1peg.SsoRoles>(data['data']);
    }
    if (dataClassName == 'SsoSavedViews') {
      return deserialize<_if33sioe.SsoSavedViews>(data['data']);
    }
    if (dataClassName == 'SsoSecurityPolicies') {
      return deserialize<_ilqjh0sx.SsoSecurityPolicies>(data['data']);
    }
    if (dataClassName == 'SsoSites') {
      return deserialize<_i4g0kvm8.SsoSites>(data['data']);
    }
    if (dataClassName == 'SsoStandardReasons') {
      return deserialize<_iugbun52.SsoStandardReasons>(data['data']);
    }
    if (dataClassName == 'SsoUserPasswordHistory') {
      return deserialize<_i2qrs2ax.SsoUserPasswordHistory>(data['data']);
    }
    if (dataClassName == 'SsoUserPreferences') {
      return deserialize<_izdzo98l.SsoUserPreferences>(data['data']);
    }
    if (dataClassName == 'SsoUserProductSiteMappings') {
      return deserialize<_i7stpwby.SsoUserProductSiteMappings>(data['data']);
    }
    if (dataClassName == 'SsoUserRoles') {
      return deserialize<_iew7uxuv.SsoUserRoles>(data['data']);
    }
    if (dataClassName == 'SsoUserSessions') {
      return deserialize<_ir5ofehs.SsoUserSessions>(data['data']);
    }
    if (dataClassName == 'SsoUsers') {
      return deserialize<_i4fj2l14.SsoUsers>(data['data']);
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
      case _ishyozd5.ElogActivities:
        return _ishyozd5.ElogActivities.t;
      case _i6kgjla4.ElogActivityArtifacts:
        return _i6kgjla4.ElogActivityArtifacts.t;
      case _iz387z77.ElogAreaAdjacency:
        return _iz387z77.ElogAreaAdjacency.t;
      case _i9o3y69x.ElogAreaCategories:
        return _i9o3y69x.ElogAreaCategories.t;
      case _isgi7gk9.ElogAreaEquipment:
        return _isgi7gk9.ElogAreaEquipment.t;
      case _iv2byy67.ElogAreaUserGroups:
        return _iv2byy67.ElogAreaUserGroups.t;
      case _ilczj6al.ElogAreas:
        return _ilczj6al.ElogAreas.t;
      case _ippbjru9.ElogBatches:
        return _ippbjru9.ElogBatches.t;
      case _ie8nm0xf.ElogBusinessAssociates:
        return _ie8nm0xf.ElogBusinessAssociates.t;
      case _iea2komd.ElogCampaigns:
        return _iea2komd.ElogCampaigns.t;
      case _i943t8qk.ElogChecklistTemplates:
        return _i943t8qk.ElogChecklistTemplates.t;
      case _im2l27wp.ElogChecklistUsageInstructions:
        return _im2l27wp.ElogChecklistUsageInstructions.t;
      case _iyg55fu5.ElogChecklistUsageSets:
        return _iyg55fu5.ElogChecklistUsageSets.t;
      case _i2d67kfy.ElogChecklistUsages:
        return _i2d67kfy.ElogChecklistUsages.t;
      case _iaxzy4al.ElogCleaningTypes:
        return _iaxzy4al.ElogCleaningTypes.t;
      case _ig1scdm6.ElogDashboardConfigs:
        return _ig1scdm6.ElogDashboardConfigs.t;
      case _i465o1vf.ElogEquipmentCategories:
        return _i465o1vf.ElogEquipmentCategories.t;
      case _iy7mbkyp.ElogEquipmentParts:
        return _iy7mbkyp.ElogEquipmentParts.t;
      case _iizl2nep.ElogEquipmentTypes:
        return _iizl2nep.ElogEquipmentTypes.t;
      case _ihodx11y.ElogEquipmentUserGroups:
        return _ihodx11y.ElogEquipmentUserGroups.t;
      case _ir29oi5q.ElogEquipments:
        return _ir29oi5q.ElogEquipments.t;
      case _iksvpml2.ElogEventReactorState:
        return _iksvpml2.ElogEventReactorState.t;
      case _imjwa56c.ElogEvents:
        return _imjwa56c.ElogEvents.t;
      case _iei4fdsy.ElogExternalIntegrations:
        return _iei4fdsy.ElogExternalIntegrations.t;
      case _iuxjq0du.ElogHolidayCalendars:
        return _iuxjq0du.ElogHolidayCalendars.t;
      case _ip7nvc9p.ElogHolidayEntries:
        return _ip7nvc9p.ElogHolidayEntries.t;
      case _i4th50rj.ElogLogReportGenerations:
        return _i4th50rj.ElogLogReportGenerations.t;
      case _iab28y1e.ElogLogTemplates:
        return _iab28y1e.ElogLogTemplates.t;
      case _i05usxet.ElogLogUsages:
        return _i05usxet.ElogLogUsages.t;
      case _izf4mrur.ElogNotificationGroupStates:
        return _izf4mrur.ElogNotificationGroupStates.t;
      case _idk983fe.ElogNotifications:
        return _idk983fe.ElogNotifications.t;
      case _izmtc39o.ElogNotificationsArchive:
        return _izmtc39o.ElogNotificationsArchive.t;
      case _i0ssuutp.ElogOnboardingStatus:
        return _i0ssuutp.ElogOnboardingStatus.t;
      case _i7g8bf6c.ElogOperations:
        return _i7g8bf6c.ElogOperations.t;
      case _i8i2tmym.ElogPdAllocationCursors:
        return _i8i2tmym.ElogPdAllocationCursors.t;
      case _iwsiolx8.ElogPdAllocationLines:
        return _iwsiolx8.ElogPdAllocationLines.t;
      case _ie75ho22.ElogPdAllocations:
        return _ie75ho22.ElogPdAllocations.t;
      case _i3lnfsnn.ElogPdAssemblies:
        return _i3lnfsnn.ElogPdAssemblies.t;
      case _iccws1xa.ElogPdAssemblyMembers:
        return _iccws1xa.ElogPdAssemblyMembers.t;
      case _ipr5ee30.ElogPdComponentReservations:
        return _ipr5ee30.ElogPdComponentReservations.t;
      case _i6kwotqx.ElogPdModuleConfig:
        return _i6kwotqx.ElogPdModuleConfig.t;
      case _ip7k2fyr.ElogPdOperations:
        return _ip7k2fyr.ElogPdOperations.t;
      case _iwoewitv.ElogPdUsageLedger:
        return _iwoewitv.ElogPdUsageLedger.t;
      case _idcsbifx.ElogPresetAreaCategories:
        return _idcsbifx.ElogPresetAreaCategories.t;
      case _ien2z5wb.ElogPresetAreas:
        return _ien2z5wb.ElogPresetAreas.t;
      case _imeic21z.ElogPresetChecklists:
        return _imeic21z.ElogPresetChecklists.t;
      case _i1i32x6j.ElogPresetDashboards:
        return _i1i32x6j.ElogPresetDashboards.t;
      case _igzp2y8c.ElogPresetEquipment:
        return _igzp2y8c.ElogPresetEquipment.t;
      case _imoi4ypf.ElogPresetEquipmentCategories:
        return _imoi4ypf.ElogPresetEquipmentCategories.t;
      case _io6t2sgk.ElogPresetIndustries:
        return _io6t2sgk.ElogPresetIndustries.t;
      case _izdzedtk.ElogPresetLogTemplates:
        return _izdzedtk.ElogPresetLogTemplates.t;
      case _irzfy450.ElogPresetPolicies:
        return _irzfy450.ElogPresetPolicies.t;
      case _iimbkgrt.ElogPresetRoleCategories:
        return _iimbkgrt.ElogPresetRoleCategories.t;
      case _i1n67tzi.ElogPresetRoles:
        return _i1n67tzi.ElogPresetRoles.t;
      case _i01c1yxy.ElogPresetSchedules:
        return _i01c1yxy.ElogPresetSchedules.t;
      case _ib0e9qbb.ElogProblemTypes:
        return _ib0e9qbb.ElogProblemTypes.t;
      case _i4hmoti8.ElogProblems:
        return _i4hmoti8.ElogProblems.t;
      case _iele6hju.ElogProductCleaningRequirements:
        return _iele6hju.ElogProductCleaningRequirements.t;
      case _i0caxd73.ElogProducts:
        return _i0caxd73.ElogProducts.t;
      case _iq0nwjzy.ElogPunchSets:
        return _iq0nwjzy.ElogPunchSets.t;
      case _iryvos7o.ElogReportTemplates:
        return _iryvos7o.ElogReportTemplates.t;
      case _iqykw8hs.ElogResourceActivityDailyRollups:
        return _iqykw8hs.ElogResourceActivityDailyRollups.t;
      case _ial2wvcr.ElogResourceFlagTypes:
        return _ial2wvcr.ElogResourceFlagTypes.t;
      case _if40xrph.ElogResourceFlags:
        return _if40xrph.ElogResourceFlags.t;
      case _il71c5vn.ElogResourcePolicies:
        return _il71c5vn.ElogResourcePolicies.t;
      case _iw7vxuxk.ElogResourceStates:
        return _iw7vxuxk.ElogResourceStates.t;
      case _ijudmfzt.ElogResourceUsages:
        return _ijudmfzt.ElogResourceUsages.t;
      case _ik7tju34.ElogRoleCategories:
        return _ik7tju34.ElogRoleCategories.t;
      case _is5x0ozk.ElogRoleDashboards:
        return _is5x0ozk.ElogRoleDashboards.t;
      case _i8swalwe.ElogRolePermissions:
        return _i8swalwe.ElogRolePermissions.t;
      case _i2dkzfxx.ElogRoles:
        return _i2dkzfxx.ElogRoles.t;
      case _i91j1h6n.ElogSavedViews:
        return _i91j1h6n.ElogSavedViews.t;
      case _iyvpac9s.ElogToolingProductQualifications:
        return _iyvpac9s.ElogToolingProductQualifications.t;
      case _i2a97saf.ElogToolingTypes:
        return _i2a97saf.ElogToolingTypes.t;
      case _ici4vys7.ElogUnitOfMeasures:
        return _ici4vys7.ElogUnitOfMeasures.t;
      case _iu9388z4.ElogUserGroupMembers:
        return _iu9388z4.ElogUserGroupMembers.t;
      case _id7xfj5e.ElogUserGroups:
        return _id7xfj5e.ElogUserGroups.t;
      case _i2xv5f50.ElogUserRoles:
        return _i2xv5f50.ElogUserRoles.t;
      case _iqfb1ejb.ElogWorkItems:
        return _iqfb1ejb.ElogWorkItems.t;
      case _i2qhvyny.ElogWorkflowEvents:
        return _i2qhvyny.ElogWorkflowEvents.t;
      case _ifguuifm.ElogWorkflowInstances:
        return _ifguuifm.ElogWorkflowInstances.t;
      case _ijr902rd.ElogWorkflows:
        return _ijr902rd.ElogWorkflows.t;
      case _iw9e7ahv.PublicESignatures:
        return _iw9e7ahv.PublicESignatures.t;
      case _iq44tjyb.PublicEntityDraftsAudit:
        return _iq44tjyb.PublicEntityDraftsAudit.t;
      case _iqjzr2vi.PublicEntityDraftsVersions:
        return _iqjzr2vi.PublicEntityDraftsVersions.t;
      case _i37bl2c2.PublicEntityLifecycleConfigurations:
        return _i37bl2c2.PublicEntityLifecycleConfigurations.t;
      case _i7ltqb3m.PublicEntityWorkflowInstances:
        return _i7ltqb3m.PublicEntityWorkflowInstances.t;
      case _iu718lvo.PublicEntityWorkflowTasks:
        return _iu718lvo.PublicEntityWorkflowTasks.t;
      case _i6x532bo.PublicPublic:
        return _i6x532bo.PublicPublic.t;
      case _ixdgb3pg.PublicWorkflowEvents:
        return _ixdgb3pg.PublicWorkflowEvents.t;
      case _iku0se9c.PublicWorkflowInstances:
        return _iku0se9c.PublicWorkflowInstances.t;
      case _ixdjky6f.PublicWorkflowUserTasks:
        return _ixdjky6f.PublicWorkflowUserTasks.t;
      case _icl3enxx.SsoAccountUnlockRequests:
        return _icl3enxx.SsoAccountUnlockRequests.t;
      case _ikffiba3.SsoAdConnections:
        return _ikffiba3.SsoAdConnections.t;
      case _ioy9xegh.SsoCompanies:
        return _ioy9xegh.SsoCompanies.t;
      case _ih26k2g9.SsoCompanySiteAssignments:
        return _ih26k2g9.SsoCompanySiteAssignments.t;
      case _i0v3k9y4.SsoDashboardConfigs:
        return _i0v3k9y4.SsoDashboardConfigs.t;
      case _iwzh4spq.SsoDepartmentTypes:
        return _iwzh4spq.SsoDepartmentTypes.t;
      case _isoagnd2.SsoDepartments:
        return _isoagnd2.SsoDepartments.t;
      case _ivpbyrtu.SsoDesignations:
        return _ivpbyrtu.SsoDesignations.t;
      case _id58jpdy.SsoLoginChallenges:
        return _id58jpdy.SsoLoginChallenges.t;
      case _ivkuiv43.SsoLoginEvents:
        return _ivkuiv43.SsoLoginEvents.t;
      case _iv9au2ux.SsoNotifications:
        return _iv9au2ux.SsoNotifications.t;
      case _ism6jhlu.SsoPasswordResetRequests:
        return _ism6jhlu.SsoPasswordResetRequests.t;
      case _iqttiq1b.SsoProductSettings:
        return _iqttiq1b.SsoProductSettings.t;
      case _ir4axp6j.SsoProductSiteMappings:
        return _ir4axp6j.SsoProductSiteMappings.t;
      case _id96jnp7.SsoProducts:
        return _id96jnp7.SsoProducts.t;
      case _iu1qu58n.SsoReportExports:
        return _iu1qu58n.SsoReportExports.t;
      case _ichwrbiz.SsoReportTemplates:
        return _ichwrbiz.SsoReportTemplates.t;
      case _ib0ko46b.SsoRoleDashboards:
        return _ib0ko46b.SsoRoleDashboards.t;
      case _ifv6xkhy.SsoRolePermissions:
        return _ifv6xkhy.SsoRolePermissions.t;
      case _i0gr1peg.SsoRoles:
        return _i0gr1peg.SsoRoles.t;
      case _if33sioe.SsoSavedViews:
        return _if33sioe.SsoSavedViews.t;
      case _ilqjh0sx.SsoSecurityPolicies:
        return _ilqjh0sx.SsoSecurityPolicies.t;
      case _i4g0kvm8.SsoSites:
        return _i4g0kvm8.SsoSites.t;
      case _iugbun52.SsoStandardReasons:
        return _iugbun52.SsoStandardReasons.t;
      case _i2qrs2ax.SsoUserPasswordHistory:
        return _i2qrs2ax.SsoUserPasswordHistory.t;
      case _izdzo98l.SsoUserPreferences:
        return _izdzo98l.SsoUserPreferences.t;
      case _i7stpwby.SsoUserProductSiteMappings:
        return _i7stpwby.SsoUserProductSiteMappings.t;
      case _iew7uxuv.SsoUserRoles:
        return _iew7uxuv.SsoUserRoles.t;
      case _ir5ofehs.SsoUserSessions:
        return _ir5ofehs.SsoUserSessions.t;
      case _i4fj2l14.SsoUsers:
        return _i4fj2l14.SsoUsers.t;
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
