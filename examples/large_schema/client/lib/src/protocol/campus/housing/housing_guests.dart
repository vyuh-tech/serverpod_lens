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
abstract class CampusHousingGuest
    implements _isc.SerializableModel, _isc.ProtocolSerialization {
  CampusHousingGuest._({
    this.id,
    required this.contractId,
    required this.name,
    required this.arrivesAt,
    required this.leavesAt,
    DateTime? createdAt,
  }) : createdAt = createdAt ?? DateTime.now();

  factory CampusHousingGuest({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required String name,
    required DateTime arrivesAt,
    required DateTime leavesAt,
    DateTime? createdAt,
  }) = _CampusHousingGuestImpl;

  factory CampusHousingGuest.fromJson(Map<String, dynamic> jsonSerialization) {
    return CampusHousingGuest(
      id: jsonSerialization['id'] == null
          ? null
          : _isc.UuidValueJsonExtension.fromJson(jsonSerialization['id']),
      contractId: _isc.UuidValueJsonExtension.fromJson(
        jsonSerialization['contractId'],
      ),
      name: jsonSerialization['name'] as String,
      arrivesAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['arrivesAt'],
      ),
      leavesAt: _isc.DateTimeJsonExtension.fromJson(
        jsonSerialization['leavesAt'],
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

  _isc.UuidValue contractId;

  String name;

  DateTime arrivesAt;

  DateTime leavesAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [CampusHousingGuest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  CampusHousingGuest copyWith({
    _isc.UuidValue? id,
    _isc.UuidValue? contractId,
    String? name,
    DateTime? arrivesAt,
    DateTime? leavesAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'CampusHousingGuest',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'name': name,
      'arrivesAt': arrivesAt.toJson(),
      'leavesAt': leavesAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'CampusHousingGuest',
      if (id != null) 'id': id?.toJson(),
      'contractId': contractId.toJson(),
      'name': name,
      'arrivesAt': arrivesAt.toJson(),
      'leavesAt': leavesAt.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _isc.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CampusHousingGuestImpl extends CampusHousingGuest {
  _CampusHousingGuestImpl({
    _isc.UuidValue? id,
    required _isc.UuidValue contractId,
    required String name,
    required DateTime arrivesAt,
    required DateTime leavesAt,
    DateTime? createdAt,
  }) : super._(
         id: id,
         contractId: contractId,
         name: name,
         arrivesAt: arrivesAt,
         leavesAt: leavesAt,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [CampusHousingGuest]
  /// with some or all fields replaced by the given arguments.
  @_isc.useResult
  @override
  CampusHousingGuest copyWith({
    Object? id = _Undefined,
    _isc.UuidValue? contractId,
    String? name,
    DateTime? arrivesAt,
    DateTime? leavesAt,
    DateTime? createdAt,
  }) {
    return CampusHousingGuest(
      id: id is _isc.UuidValue? ? id : this.id,
      contractId: contractId ?? this.contractId,
      name: name ?? this.name,
      arrivesAt: arrivesAt ?? this.arrivesAt,
      leavesAt: leavesAt ?? this.leavesAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
