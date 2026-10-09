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

abstract class SsoReportExports
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  SsoReportExports._({
    this.id,
    required this.title,
    required this.reportType,
    this.generatedBy,
    required this.generatedByName,
    required this.generatedAt,
    required this.recordCount,
    this.filterSummary,
    this.purpose,
    this.regulatoryReference,
    required this.pageSize,
    required this.orientation,
  });

  factory SsoReportExports({
    _isc.UuidValue? id,
    required String title,
    required String reportType,
    _isc.UuidValue? generatedBy,
    required String generatedByName,
    required DateTime generatedAt,
    required int recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    required String pageSize,
    required String orientation,
  }) = _SsoReportExportsImpl;

  factory SsoReportExports.fromJson(Map<String, dynamic> jsonSerialization) {
    return SsoReportExports(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      title: jsonSerialization['title'] as String,
      reportType: jsonSerialization['reportType'] as String,
      generatedBy: jsonSerialization['generatedBy'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(
              jsonSerialization['generatedBy'],
            ),
      generatedByName: jsonSerialization['generatedByName'] as String,
      generatedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['generatedAt'],
      ),
      recordCount: jsonSerialization['recordCount'] as int,
      filterSummary: jsonSerialization['filterSummary'] as String?,
      purpose: jsonSerialization['purpose'] as String?,
      regulatoryReference: jsonSerialization['regulatoryReference'] as String?,
      pageSize: jsonSerialization['pageSize'] as String,
      orientation: jsonSerialization['orientation'] as String,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  String title;

  String reportType;

  _isc.UuidValue? generatedBy;

  String generatedByName;

  DateTime generatedAt;

  int recordCount;

  String? filterSummary;

  String? purpose;

  String? regulatoryReference;

  String pageSize;

  String orientation;

  /// Returns a shallow copy of this [SsoReportExports]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  SsoReportExports copyWith({
    _isc.UuidValue? id,
    String? title,
    String? reportType,
    _isc.UuidValue? generatedBy,
    String? generatedByName,
    DateTime? generatedAt,
    int? recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    String? pageSize,
    String? orientation,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'SsoReportExports',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'reportType': reportType,
      if (generatedBy != null) 'generatedBy': generatedBy?.toJson(),
      'generatedByName': generatedByName,
      'generatedAt': generatedAt.toJson(),
      'recordCount': recordCount,
      if (filterSummary != null) 'filterSummary': filterSummary,
      if (purpose != null) 'purpose': purpose,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      'pageSize': pageSize,
      'orientation': orientation,
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'SsoReportExports',
      if (id != null) 'id': id?.toJson(),
      'title': title,
      'reportType': reportType,
      if (generatedBy != null) 'generatedBy': generatedBy?.toJson(),
      'generatedByName': generatedByName,
      'generatedAt': generatedAt.toJson(),
      'recordCount': recordCount,
      if (filterSummary != null) 'filterSummary': filterSummary,
      if (purpose != null) 'purpose': purpose,
      if (regulatoryReference != null)
        'regulatoryReference': regulatoryReference,
      'pageSize': pageSize,
      'orientation': orientation,
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _SsoReportExportsImpl extends SsoReportExports {
  _SsoReportExportsImpl({
    _isc.UuidValue? id,
    required String title,
    required String reportType,
    _isc.UuidValue? generatedBy,
    required String generatedByName,
    required DateTime generatedAt,
    required int recordCount,
    String? filterSummary,
    String? purpose,
    String? regulatoryReference,
    required String pageSize,
    required String orientation,
  }) : super._(
         id: id,
         title: title,
         reportType: reportType,
         generatedBy: generatedBy,
         generatedByName: generatedByName,
         generatedAt: generatedAt,
         recordCount: recordCount,
         filterSummary: filterSummary,
         purpose: purpose,
         regulatoryReference: regulatoryReference,
         pageSize: pageSize,
         orientation: orientation,
       );

  /// Returns a shallow copy of this [SsoReportExports]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  SsoReportExports copyWith({
    Object? id = _Undefined,
    String? title,
    String? reportType,
    Object? generatedBy = _Undefined,
    String? generatedByName,
    DateTime? generatedAt,
    int? recordCount,
    Object? filterSummary = _Undefined,
    Object? purpose = _Undefined,
    Object? regulatoryReference = _Undefined,
    String? pageSize,
    String? orientation,
  }) {
    return SsoReportExports(
      id: id is _isc.UuidValue? ? id : this.id,
      title: title ?? this.title,
      reportType: reportType ?? this.reportType,
      generatedBy: generatedBy is _isc.UuidValue?
          ? generatedBy
          : this.generatedBy,
      generatedByName: generatedByName ?? this.generatedByName,
      generatedAt: generatedAt ?? this.generatedAt,
      recordCount: recordCount ?? this.recordCount,
      filterSummary: filterSummary is String?
          ? filterSummary
          : this.filterSummary,
      purpose: purpose is String? ? purpose : this.purpose,
      regulatoryReference: regulatoryReference is String?
          ? regulatoryReference
          : this.regulatoryReference,
      pageSize: pageSize ?? this.pageSize,
      orientation: orientation ?? this.orientation,
    );
  }
}
