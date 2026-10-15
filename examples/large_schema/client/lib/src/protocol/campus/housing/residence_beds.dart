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
abstract class CampusResidenceBed
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusResidenceBed._({
    this.id,
    required this.residenceRoomId,
    required this.label,
    required this.available,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusResidenceBed({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceRoomId,
    required String label,
    required bool available,
    DateTime? createdAt,
  }) = _CampusResidenceBedImpl;

  factory CampusResidenceBed.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusResidenceBed(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      residenceRoomId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['residenceRoomId'],
      ),
      label: jsonSerialization['label'] as String,
      available: _isc.BoolJsonExtension.fromJson(
        jsonSerialization['available'],
      ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _isc.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  _isc.UuidValue? id;

  _isc.UuidValue residenceRoomId;

  String label;

  bool available;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusResidenceBed]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusResidenceBed copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? residenceRoomId,
    String? label,
    bool? available,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusResidenceBed',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'label': label,
      'available': available,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusResidenceBed',
      if (id != null) 'id': id?.toJson(),
      'residenceRoomId': residenceRoomId.toJson(),
      'label': label,
      'available': available,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusResidenceBedImpl extends CampusResidenceBed {
  _CampusResidenceBedImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue residenceRoomId,
    required String label,
    required bool available,
    DateTime? createdAt,
  }) : super._(
         id: id,
         residenceRoomId: residenceRoomId,
         label: label,
         available: available,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusResidenceBed]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusResidenceBed copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? residenceRoomId,
    String? label,
    bool? available,
    DateTime? createdAt,
  }) {
    return CampusResidenceBed(
      id: id is _isc.UuidValue? ? id : this.id,
      residenceRoomId: residenceRoomId ?? this.residenceRoomId,
      label: label ?? this.label,
      available: available ?? this.available,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
