/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _isc;

abstract class ElogLogReportGenerations
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  ElogLogReportGenerations._({
    this.id,
    required this.templateId,
    required this.templateName,
    required this.generatedBy,
    required this.generatedAt,
    required this.reportFormat,
    required this.recordCount,
    this.filters,
    this.ipAddress,
    this.userAgent,
  });

  factory ElogLogReportGenerations({
    _isc.UuidValue? id,
    required _isc.UuidValue templateId,
    required String templateName,
    required _isc.UuidValue generatedBy,
    required DateTime generatedAt,
    required String reportFormat,
    required int recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  }) = _ElogLogReportGenerationsImpl;

  factory ElogLogReportGenerations.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return ElogLogReportGenerations(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      templateId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['templateId'],
      ),
      templateName: jsonSerialization['templateName'] as String,
      generatedBy: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['generatedBy'],
      ),
      generatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['generatedAt'],
      ),
      reportFormat: jsonSerialization['reportFormat'] as String,
      recordCount: jsonSerialization['recordCount'] as int,
      filters: jsonSerialization['filters'] as String?,
      ipAddress: jsonSerialization['ipAddress'] as String?,
      userAgent: jsonSerialization['userAgent'] as String?,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue templateId;

  String templateName;

  _isc.UuidValue generatedBy;

  DateTime generatedAt;

  String reportFormat;

  int recordCount;

  String? filters;

  String? ipAddress;

  String? userAgent;

  /// Returns a shallow copy of this [ElogLogReportGenerations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  ElogLogReportGenerations copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? templateId,
    String? templateName,
    _isc.UuidValue? generatedBy,
    DateTime? generatedAt,
    String? reportFormat,
    int? recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'ElogLogReportGenerations',
      if (id != null) 'id': id?.toJson(),
      'templateId': templateId.toJson(),
      'templateName': templateName,
      'generatedBy': generatedBy.toJson(),
      'generatedAt': generatedAt.toJson(),
      'reportFormat': reportFormat,
      'recordCount': recordCount,
      if (filters != null) 'filters': filters,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'ElogLogReportGenerations',
      if (id != null) 'id': id?.toJson(),
      'templateId': templateId.toJson(),
      'templateName': templateName,
      'generatedBy': generatedBy.toJson(),
      'generatedAt': generatedAt.toJson(),
      'reportFormat': reportFormat,
      'recordCount': recordCount,
      if (filters != null) 'filters': filters,
      if (ipAddress != null) 'ipAddress': ipAddress,
      if (userAgent != null) 'userAgent': userAgent,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ElogLogReportGenerationsImpl extends ElogLogReportGenerations {
  _ElogLogReportGenerationsImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue templateId,
    required String templateName,
    required _isc.UuidValue generatedBy,
    required DateTime generatedAt,
    required String reportFormat,
    required int recordCount,
    String? filters,
    String? ipAddress,
    String? userAgent,
  }) : super._(
         id: id,
         templateId: templateId,
         templateName: templateName,
         generatedBy: generatedBy,
         generatedAt: generatedAt,
         reportFormat: reportFormat,
         recordCount: recordCount,
         filters: filters,
         ipAddress: ipAddress,
         userAgent: userAgent,
       );

  /// Returns a shallow copy of this [ElogLogReportGenerations]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  ElogLogReportGenerations copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? templateId,
    String? templateName,
    _isc.UuidValue? generatedBy,
    DateTime? generatedAt,
    String? reportFormat,
    int? recordCount,
    Object? filters = _Undefined,
    Object? ipAddress = _Undefined,
    Object? userAgent = _Undefined,
  }) {
    return ElogLogReportGenerations(
      id: id is _isc.UuidValue? ? id : this.id,
      templateId: templateId ?? this.templateId,
      templateName: templateName ?? this.templateName,
      generatedBy: generatedBy ?? this.generatedBy,
      generatedAt: generatedAt ?? this.generatedAt,
      reportFormat: reportFormat ?? this.reportFormat,
      recordCount: recordCount ?? this.recordCount,
      filters: filters is String? ? filters : this.filters,
      ipAddress: ipAddress is String? ? ipAddress : this.ipAddress,
      userAgent: userAgent is String? ? userAgent : this.userAgent,
    );
  }
}
