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

/// Fictional university fixture: housing.
abstract class CampusHousingInspection
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingInspection._({
    this.id,
    required this.contractId,
    required this.inspectedAt,
    required this.condition,
    this.notes,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingInspection({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required DateTime inspectedAt,
    required String condition,
    String? notes,
    DateTime? createdAt,
  }) = _CampusHousingInspectionImpl;

  factory CampusHousingInspection.fromJson(
    Map<String, dynamic> jsonSerialization,
  ) {
    return CampusHousingInspection(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      inspectedAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['inspectedAt'],
      ),
      condition: jsonSerialization['condition'] as String,
      notes: jsonSerialization['notes'] as String?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue contractId;

  DateTime inspectedAt;

  String condition;

  String? notes;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingInspection]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingInspection copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? contractId,
    DateTime? inspectedAt,
    String? condition,
    String? notes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingInspection',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'inspectedAt': inspectedAt.toJson(),
      'condition': condition,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingInspection',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'inspectedAt': inspectedAt.toJson(),
      'condition': condition,
      if (notes != null) 'notes': notes,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingInspectionImpl extends CampusHousingInspection {
  _CampusHousingInspectionImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required DateTime inspectedAt,
    required String condition,
    String? notes,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         inspectedAt: inspectedAt,
         condition: condition,
         notes: notes,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingInspection]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingInspection copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? contractId,
    DateTime? inspectedAt,
    String? condition,
    Object? notes = _Undefined,
    DateTime? createdAt,
  }) {
    return CampusHousingInspection(
      id: id is _isc.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      inspectedAt: inspectedAt ?? this.inspectedAt,
      condition: condition ?? this.condition,
      notes: notes is String? ? notes : this.notes,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
